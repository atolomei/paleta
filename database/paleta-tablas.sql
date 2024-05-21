-- Crea Tablas 
-- Usuarios canonicos (deberia ser solo root)
-- y datos generales para las tablas maestras

-- Si se agregan las variables de entorno pguser y pgpassword no hace falta mas parametros:

--  dropdb paleta
--  createdb paleta
--  psql -f paleta-tablas.sql paleta

-- sequence sirve para generar ids para las filas de las tablas

BEGIN;

CREATE SEQUENCE if not exists sequence_id 		START 100;
CREATE SEQUENCE if not exists sequence_user_id 	START 100;

-- para usuarios de la aplicación

CREATE TABLE usuarios (
						id					bigint primary key default nextval('sequence_user_id'),
						username			character varying(512) not null,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null						
					);
					
alter table usuarios add column  lastmodifieduser bigint references usuarios(id) on delete restrict;


-- provincia y localidad

CREATE TABLE provincia 	(
						id					bigint primary key,
						nombre				character varying(512) not null,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null

					);

-- Todas las localidades tienen provincia, para CABA se repite pcia y localidad son iguales

CREATE TABLE localidad	(
						id					bigint primary key default nextval('sequence_id'),
						nombre				character varying(512) not null,
						provincia_id 		bigint references provincia on delete restrict not null,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
					);

-- titular, suplente
CREATE TABLE condicion_jugador (
						id					bigint primary key,
						nombre				character varying(512) not null,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
);

-- titular, suplente
CREATE TABLE condicion_delegado (
						id					bigint primary key,
						nombre				character varying(512) not null,
						created				timestamp with time zone DEFAULT now(),
						lastmodified		timestamp with time zone DEFAULT now(),
						lastmodifieduser	bigint references usuarios(id) on delete restrict
);

-- activo, inactivo
CREATE TABLE condicion_juez (
						id					bigint primary key,
						nombre				character varying(512) not null, --activo inactivo
						created				timestamp with time zone DEFAULT now(),
						lastmodified		timestamp with time zone DEFAULT now(),
						lastmodifieduser	bigint references usuarios(id) on delete restrict
);

CREATE TABLE status_torneo (
						id					bigint primary key,
						nombre				character varying(512) not null, --enejecucion / no inciado / finalizado/ cancelado
						created				timestamp with time zone DEFAULT now(),
						lastmodified		timestamp with time zone DEFAULT now(),
						lastmodifieduser	bigint references usuarios(id) on delete restrict
);
					
					

-- primera, segunda, etc.

CREATE TABLE categoria (
						id					bigint primary key,
						nombre				character varying(512) not null,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
						);					


-- Clubes
-- Por el momento no tenemos un concepto de 'sede' de club, 
-- si el club tiene mas de una sede lo ponemos en las notas

CREATE TABLE club (
						id					bigint primary key,
						nombre				character varying(512) not null,
						direccion			character varying(4096) not null,
						codigopostal		character varying(64) ,
						telefono			character varying(512),
						email				character varying(512),
						
						notas				text,
						
						localidad_id		bigint references localidad(id) on delete restrict,
						provincia_id		bigint references provincia(id) on delete restrict not null,
						
						website				character varying(512),
						urlgooglemaps		character varying(4096),
						logo				bytea,
						
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
					);


CREATE TABLE persona (
						id					bigint primary key,
						nombre				character varying(512) not null,
						apellido			character varying(512) not null,
						sexo				character varying(2),
						dni					character varying(32) not null,
						direccion			character varying(4096),
						localidad_id		bigint references localidad(id) on delete restrict, 
						codigopostal		character varying(64),
						telefono			character varying(512),
						email				character varying(512),
						foto				bytea,
						foto_carnet			bytea,
						fecha_nacimiento	timestamp with time zone,
						cert_fisico_fecha	timestamp with time zone,
						usuario_id			bigint references usuarios(id) on delete restrict,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
					);

CREATE TABLE jugador (
						id						bigint primary key,
						persona_id				bigint references persona(id) on delete restrict not null,
						club_id					bigint references club(id) on delete restrict not null,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict
					);


CREATE TABLE torneo (
						id					bigint primary key,
						nombre				character varying(512) not null,
						categoria_id		bigint not null references categoria(id) on delete restrict not null, --primera a y primera b
						anio				integer not null default to_char(now(), 'yyyy')::int not null,
						semestre			integer default 1,
						status_id			bigint references status_torneo(id) on delete restrict not null, 
						inicio				timestamp with time zone DEFAULT now(),
						finalizacion		timestamp with time zone DEFAULT now(),
						
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
);


CREATE TABLE etapa_torneo ( -- a reveer
						id						bigint primary key,
						nombre 					character varying(512) not null,
						torneo_id 				bigint references torneo(id) on delete restrict not null,
						notas					text,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);


CREATE TABLE zona_torneo (
						id						bigint primary key,
						nombre 					character varying(512) not null, --zona a, zona b
						torneo_id 				bigint references torneo(id) on delete restrict not null,
						etapa_torneo_id			bigint references etapa_torneo(id) on delete restrict not null,
						notas					text,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);

			

-- IMPORTANTE -> Los equipos son por torneo

CREATE TABLE equipo (
						id					bigint primary key,
						nombre				character varying (256) not null,
						club_id				bigint references club(id) on delete restrict not null,
						torneo_id			bigint references torneo(id) on delete restrict not null,
						created				timestamp with time zone DEFAULT now(),
						lastmodified		timestamp with time zone DEFAULT now(),
						lastmodifieduser	bigint references usuarios(id) on delete restrict

);


CREATE TABLE jugador_equipo (
						id						bigint primary key,
						jugador_id				bigint references jugador(id) on delete restrict not null,
						equipo_id				bigint references equipo(id) on delete restrict not null,
						condicion_jugador_id	bigint references condicion_jugador(id) on delete restrict not null,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict
					);


CREATE TABLE delegado (
						id						bigint primary key,
						persona_id				bigint references persona(id) on delete restrict not null,
						club_id					bigint references club(id) on delete restrict not null,
						categoria_id			bigint references persona(id) on delete restrict not null,
						condicion_delegado_id	bigint references condicion_delegado(id) on delete restrict not null,
						
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);

CREATE TABLE juez (
						id						bigint primary key,
						persona_id				bigint references persona(id) on delete restrict not null,
						club_id					bigint references club(id) on delete restrict not null,
						categoria_id			bigint references persona(id) on delete restrict not null,
						condicion_juez_id		bigint references condicion_juez(id) on delete restrict not null,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);



-- no hace falta el club porque con el equipo queda definido el club
CREATE TABLE zona_torneo_equipo (
						id						bigint primary key,
						zona_torneo_id 			bigint references zona_torneo(id) on delete restrict not null,
						equipo_id 				bigint not null references equipo(id) on delete restrict not null,
						notas					text,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);


CREATE TABLE lista_buena_fe (
						id					bigint primary key,
						categoria_id		bigint not null references categoria(id) on delete restrict not null,
						torneo_id			bigint not null references torneo(id) on delete restrict  not null,
						equipo_id 			bigint not null references equipo(id) on delete restrict  not null,
						notas				text,
						created				timestamp with time zone DEFAULT now() not null,
						lastmodified		timestamp with time zone DEFAULT now() not null,
						lastmodifieduser	bigint references usuarios(id) on delete restrict not null
						
);

CREATE TABLE lista_buena_fe_delegado (
						id						bigint primary key,
						lista_buena_fe_id 		bigint references lista_buena_fe(id) on delete restrict not null,
						delegado_id 			bigint not null references delegado(id) on delete restrict not null,
						condicion_delegado_id 	bigint not null references condicion_delegado(id) on delete restrict not null,
						notas					text,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);


CREATE TABLE lista_buena_fe_jugador (
						id						bigint primary key,
						lista_buena_fe_id 		bigint references lista_buena_fe(id) on delete restrict not null,
						jugador_id 				bigint not null references jugador(id) on delete restrict  not null,
						condicion_jugador_id 	bigint not null references condicion_jugador(id) on delete restrict  not null,
						notas					text,
						created					timestamp with time zone DEFAULT now()  not null,
						lastmodified			timestamp with time zone DEFAULT now()  not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);

CREATE TABLE fecha_torneo (
						id						bigint primary key,
						etapa_torneo_id	 		bigint references etapa_torneo(id) on delete restrict not null,
						torneo_id 				bigint references torneo(id) on delete restrict not null,
						orden					integer not null,
						dia						timestamp with time zone not null,
						dia_alternativo			timestamp with time zone not null, 
						hora					character(5),
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);

CREATE TABLE fecha_torneo_encuentro ( --fixture

						id						bigint primary key,
						fecha_torneo_id			bigint references fecha_torneo(id) on delete restrict not null,
						torneo_id 				bigint references torneo(id) on delete restrict not null,
						zona_id 				bigint references zona_torneo(id) on delete restrict not null,
						equipo_local_id 		bigint not null references equipo(id) on delete restrict not null,
						equipo_visitante_id 	bigint not null references equipo(id) on delete restrict not null,
						created					timestamp with time zone DEFAULT now() not null,
						lastmodified			timestamp with time zone DEFAULT now() not null,
						lastmodifieduser		bigint references usuarios(id) on delete restrict not null
);

-- 

CREATE TABLE partido ( --encuentro jugado efectivamente

id								bigint primary key default nextval('sequence_id'),

-- encuentro segun el fixture (fecha, torneo, local, visitante, etc.)
encuentro_fixture 				bigint references fecha_torneo_encuentro(id) on delete restrict not null,

-- cuando efectivamente se jugo
fechaefectiva 					timestamp with time zone not null,
horaefectiva 					timestamp with time zone not null,

-- jugadores locales
jugador_delantero_local 		bigint references jugador(id) on delete restrict not null,
jugador_zaguero_local   		bigint references jugador(id) on delete restrict not null,
jugador_suplente1_local 		bigint references jugador(id) on delete restrict,
jugador_suplente2_local 		bigint references jugador(id) on delete restrict,

-- jugadores vistantes
jugador_delantero_visitante 	bigint references jugador(id) on delete restrict not null,
jugador_zaguero_visitante 		bigint references jugador(id) on delete restrict not null,
jugador_suplente1_visitante 	bigint references jugador(id) on delete restrict,
jugador_suplente2_visitante 	bigint references jugador(id) on delete restrict,

-- la firma digital es un string convertido a hexa
-- firma local
firma_delantero_local 			character varying(512),
firma_zaguero_local 			character varying(512),
firma_suplente1_local 			character varying(512),
firma_suplente2_local 			character varying(512),

-- firma vistante
firma_delantero_visitante 		character varying(512),
firma_zaguero_visitante 		character varying(512),
firma_suplente1_visitante 		character varying(512),
firma_suplente2_visitante 		character varying(512),

firma_delegado_local 			character varying(512),
firma_delegado_visitante 		character varying(512),

-- el ganador se puede obtener de los resultados de cada set, pero es necesario 
-- porque a veces se retiran equipos, etc
ganador  						bigint not null references equipo(id) on delete restrict not null,

-- arbitro deberia referenciar a la tabla juez, 
-- pero muchas veces es una persona que no esta registrada como juez

arbitro_principal 				bigint references persona(id) on delete restrict not null,
arbitro_auxiliar 				bigint references persona(id) on delete restrict,

estado_cancha 					text,
estado_cancha_firmante 			bigint references persona(id) on delete restrict,

observaciones_local 			text,
observaciones_local_firmante	bigint references persona(id) on delete restrict,

observaciones_visitante 		text,
observaciones_vistante_firmante bigint references persona(id) on delete restrict,

observaciones_arbitro_principal text,
observaciones_arbitro_auxiliar 	text,

created							timestamp with time zone DEFAULT now() not null,
lastmodified					timestamp with time zone DEFAULT now() not null,
lastmodifieduser				bigint references usuarios(id) on delete restrict not null

);

CREATE TABLE set_partido(															
						id							bigint primary key,					
						partido_id					bigint references partido(id) on delete cascade,					
						set_nro						integer,					
						puntos_local				integer,					
						puntos_visitante			integer,					
						ganador_set					bigint not null references equipo(id) on delete restrict,
						comentario_set				text,
						minuto1_local 				boolean default false, 
						minuto1_vistante 			boolean default false, 
						minuto2_local 				boolean default false, 
						minuto2_vistante 			boolean default false, 
						created						timestamp with time zone DEFAULT now() not null,				
						lastmodified				timestamp with time zone DEFAULT now() not null,						
						lastmodifieduser			bigint references usuarios(id) on delete restrict not null							
);															



-------

-- ROOT 

INSERT INTO usuarios (id, username, lastmodifieduser) VALUES  
(nextval('sequence_user_id'), 'root', 	(select currval('sequence_user_id')));

INSERT INTO persona (id, nombre, apellido, dni, created, lastmodified, lastmodifieduser) 
VALUES  (nextval('sequence_id'), '-', 'root', '', now(), now(), (select id from usuarios where username='root'));


COMMIT;








						
