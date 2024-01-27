
--Club

BEGIN;

INSERT INTO club (id, nombre, direccion, codigopostal, telefono, email, notas, 
localidad_id, provincia_id,website, urlgooglemaps, lastmodifieduser)
VALUES
  (nextval('sequence_id'), 
  'Club Universitario de Buenos Aires', 
  'Avenida Figueroa Alcorta 3201', 
  '1425', 
  '011-4802-1450', 
  'info@cuba.org.ar',
  'Club Universitario de Buenos Aires es un prestigioso club con una larga tradición en la práctica de la pelota paleta.',
  (select id from localidad where nombre like '%Ciudad%' limit 1), 
  (select id from provincia where nombre like 'Ciudad%' limit 1), 
  'https://www.cuba.org.ar', 
  'https://maps.google.com/cuba', 
  (select id from users where username='tolo')),
  
  (nextval('sequence_id'), 
  'Ciudad de Buenos Aires', 'Marcelino Freyre 3831', '1900', '0221-423-7134', 'info@gimnasiayesgrima.org',
   'Ciudad es una institución deportiva con una destacada sección de pelota paleta.',
  (select id from localidad where nombre like '%Ciudad%' limit 1), 
  (select id from provincia where nombre like 'Ciudad%' limit 1), 
   'https://muni.org.ar/wp2/', 
   'https://maps.google.com/gelp',
   (select id from users where username='tolo')),

  (nextval('sequence_id'), 
  'Wilde', 'Marcelino Freyre 3831', '1900', '0221-423-7134', 'info@gimnasiayesgrima.org',
   'Ciudad es una institución deportiva con una destacada sección de pelota paleta.',
  (select id from localidad where nombre like '%Ciudad%' limit 1), 
  (select id from provincia where nombre like 'Ciudad%' limit 1), 
   'https://muni.org.ar/wp2/', 
   'https://maps.google.com/gelp',
   (select id from users where username='tolo')),

	(nextval('sequence_id'), 
	'Chicago', 'Marcelino Freyre 3831', '1900', '0221-423-7134', 'info@gimnasiayesgrima.org',
   'Ciudad es una institución deportiva con una destacada sección de pelota paleta.',
  (select id from localidad where nombre like '%Ciudad%' limit 1), 
  (select id from provincia where nombre like 'Ciudad%' limit 1), 
   'https://muni.org.ar/wp2/', 
   'https://maps.google.com/gelp',
   (select id from users where username='tolo')),
   
   (nextval('sequence_id'), 
	'Esteban Echeverría', 'Marcelino Freyre 3831', '1900', '0221-423-7134', 'info@gimnasiayesgrima.org',
   'Ciudad es una institución deportiva con una destacada sección de pelota paleta.',
  (select id from localidad where nombre like '%Ciudad%' limit 1), 
  (select id from provincia where nombre like 'Ciudad%' limit 1), 
   'https://muni.org.ar/wp2/', 
   'https://maps.google.com/gelp',
   (select id from users where username='tolo')),
	
	(nextval('sequence_id'), 
	'Urquiza', 'Marcelino Freyre 3831', '1900', '0221-423-7134', 'info@gimnasiayesgrima.org',
   'Ciudad es una institución deportiva con una destacada sección de pelota paleta.',
  (select id from localidad where nombre like '%Ciudad%' limit 1), 
  (select id from provincia where nombre like 'Ciudad%' limit 1), 
   'https://muni.org.ar/wp2/', 
   'https://maps.google.com/gelp',
   (select id from users where username='tolo')),

  
  (nextval('sequence_id'), 
  'Belgrano Social', 'Olleros 3232', 
	'1832', '011-5678-9012', 'info@bs.org',
    'Belgrano Social nota.',
    (select id from localidad where nombre like '%Ciudad%' limit 1), 
    (select id from provincia where nombre like 'Ciudad%' limit 1), 
   'https://www.bs.org', 
   'https://maps.google.com/bs', 
   (select id from users where username='tolo'));


--Persona

INSERT INTO persona (id, nombre, apellido, dni, direccion, localidad_id, telefono, email, cert_fisico_fecha, lastmodifieduser)
VALUES																			
   -- CUBA B	
  (nextval('sequence_id'), 'Alejandro',			'Tolomei', 						'30123456', 'Av. Rivadavia 123', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-12345678', 'juan@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Facundo', 			'Rocha',	 					'40123456', 'Calle San Martín 456', 	(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-23456789', 'maria@example.com',  	now(),  (select id from users where username='root')),
  
   -- CUBA A	
  (nextval('sequence_id'), 'Francisco',			'Sosa', 						'30123456', 'Av. Rivadavia 123', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-12345678', 'juan@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Raul',	 			'Gonzalez Garrido',				'40123456', 'Calle San Martín 456', 	(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-23456789', 'maria@example.com',  	now(),  (select id from users where username='root')),

   -- ESTEBAN ECHEVERRIA B	
  (nextval('sequence_id'), 'Juan',				'Esteban Echeverria B', 		'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Pedro',				'Esteban Echeverria B', 		'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  
  -- WILDE D
  (nextval('sequence_id'), 'Juan',				'Wilde D', 						'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Pedro',				'Wilde D', 						'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  
   -- CIUDAD C
  (nextval('sequence_id'), 'Juan',				'Ciudad C', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Pedro',				'Ciudad C', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),

  -- URQUIZA B	
  (nextval('sequence_id'), 'Juan',				'Urquiza B', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Pedro',				'Urquiza B', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  
  -- CHICAGO A	
  (nextval('sequence_id'), 'Juan',				'Chicago A', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Pedro',				'Chicago A', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),

  -- BELGRANO B	
  (nextval('sequence_id'), 'Juan',				'Belgrano D', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root')),
  (nextval('sequence_id'), 'Pedro',				'Belgrano D', 					'50123456', 'Pasaje Belgrano 789', 		(select id from localidad where nombre='Ciudad Autonoma de Buenos Aires'), '011-34567890', 'carlos@example.com',  	now(),  (select id from users where username='root'));




INSERT INTO jugador (id, persona_id, club_id, lastmodifieduser)																			
VALUES																			
   -- CUBA B
  (nextval('sequence_id'), 
  (select id from persona where apellido='Tolomei' limit 1), 
  (select id from club where nombre='Club Universitario de Buenos Aires'), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido='Rocha' limit 1), 
  (select id from club where nombre='Club Universitario de Buenos Aires'), 
  (select id from users where username='sensei')),
  
  -- CUBA A	
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Sosa%' limit 1), 
  (select id from club where nombre like '%niversitario%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like '%arrido%' limit 1), 
  (select id from club where nombre  like '%niversitario%' limit 1), 
  (select id from users where username='sensei')),

  -- ESTEBAN ECHEVERRIA B	
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Esteban%' and nombre like 'Juan%' limit 1), 
  (select id from club where nombre  like 'Esteban%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Esteban%' and nombre like 'Pedro%' limit 1), 
  (select id from club where nombre  like 'Esteban%' limit 1), 
  (select id from users where username='sensei')),
  
    -- WILDE D
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Wilde%' and nombre like 'Juan%' limit 1), 
  (select id from club where nombre  like 'Esteban%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Wilde%' and nombre like 'Pedro%' limit 1), 
  (select id from club where nombre  like 'Esteban%' limit 1), 
  (select id from users where username='sensei')),

    -- CIUDAD C
  (nextval('sequence_id'), 
  (select id from persona where apellido like '%Ciudad%' and nombre like 'Juan%' limit 1), 
  (select id from club where nombre  like 'Ciudad de%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like '%Ciudad%' and nombre like 'Pedro%' limit 1), 
  (select id from club where nombre  like 'Ciudad de%' limit 1), 
  (select id from users where username='sensei')),
  
   -- CHICAGO A
  (nextval('sequence_id'), 
  (select id from persona where apellido like '%Chicago%' and nombre like 'Juan%' limit 1), 
  (select id from club where nombre  like 'Chicago%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Chicago%' and nombre like 'Pedro%' limit 1), 
  (select id from club where nombre like 'Chicago%' limit 1), 
  (select id from users where username='sensei')),
  
  -- URQIUZA B
  (nextval('sequence_id'), 
  (select id from persona where apellido like '%Urquiza%' and nombre like 'Juan%' limit 1), 
  (select id from club where nombre like 'Urquiza%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Urquiza%' and nombre like 'Pedro%' limit 1), 
  (select id from club where nombre  like 'Urquiza%' limit 1), 
  (select id from users where username='sensei')),
  
 -- BELGRANO D
  (nextval('sequence_id'), 
  (select id from persona where apellido like '%Belgrano%' and nombre like 'Juan%' limit 1), 
  (select id from club where nombre  like 'Belgrano%' limit 1), 
  (select id from users where username='sensei')),
  
  (nextval('sequence_id'), 
  (select id from persona where apellido like 'Belgrano%' and nombre like 'Pedro%' limit 1), 
  (select id from club where nombre  like 'Belgrano%' limit 1), 
  (select id from users where username='sensei'));
  

-- TORNEO, ETAPAS, ZONAS


-- TORNEO. Apertura
INSERT INTO torneo (id, nombre, categoria_id, status_id,  anio, semestre, inicio, finalizacion, lastmodifieduser)																			
VALUES																			
  (nextval('sequence_id'), 
  'Apertura',  
  (select id from categoria where nombre='Cuarta'), 
  (select id from status_torneo where nombre like '%Ejecu%' limit 1), 
  2024,
  1,
  make_date (2024, 03, 1) , 
  make_date (2024, 06, 30),
  (select id from users where username='root'));



  
  -- ETAPA . Clasificación
  INSERT INTO etapa_torneo (id, nombre, torneo_id,  lastmodifieduser)																			
VALUES																			
  (nextval('sequence_id'), 
  'Clasificación',  
  (select id from torneo where nombre='Apertura' and anio=2024 limit 1), 
  (select id from users where username='root'));	

  -- ETAPA . Finales
INSERT INTO etapa_torneo (id, nombre, torneo_id,  lastmodifieduser)																			
VALUES																			
  (nextval('sequence_id'), 
  'Finales',  
  (select id from torneo where nombre='Apertura' and anio=2024 limit 1), 
  (select id from users where username='root'));	

  -- ZONA . Zona G
INSERT INTO zona_torneo (id, nombre, torneo_id, etapa_torneo_id, lastmodifieduser)																			
VALUES																			
  (nextval('sequence_id'), 
  'Zona G',  
  (select id from torneo where nombre='Apertura' and anio=2024 limit 1), 
  (select id from etapa_torneo where nombre='Clasificación'), 
  (select id from users where username='root'));	


  
--Equipo son por torneo

INSERT INTO equipo (id, nombre, club_id, torneo_id, lastmodifieduser)
VALUES

  (nextval('sequence_id'),'CUBA A',
  (select id from club 		where nombre='Club Universitario de Buenos Aires'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')),

  (nextval('sequence_id'),'CUBA B',
  (select id from club where nombre='Club Universitario de Buenos Aires'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),'Esteban Echeverría B',
  (select id from club where nombre like 'Esteban%'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),'Wilde D',
  (select id from club where nombre like '%Wilde%'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),'Ciudad de Buenos Aires C',
  (select id from club where nombre like '%Ciudad de%'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),'Chicago A',
  (select id from club where nombre like '%Chicago%'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),'Urquiza B',
  (select id from club where nombre like '%Urquiza%'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root')), 
  
  (nextval('sequence_id'),'Belgrano D',
  (select id from club where nombre like '%Belgrano%'),
  (select id from torneo 	where nombre='Apertura' and anio=2024 limit 1),
  (select id from users where username='root'));
  
  --JUGADOR EQUIPO

--1 CUBA B
--2 CUBA A	
--3 ESTEBAN ECHEVERRIA B
--4 WILDE D
--5 CIUDAD C
--6 CHICAGO A
--7 URQIUZA B
--8 BELGRANO D

  
 INSERT INTO jugador_equipo (id, jugador_id, equipo_id, condicion_jugador_id, lastmodifieduser)
 VALUES
  -- CUBA B
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Tolomei%' limit 1)),
  (select id from equipo	where 		nombre='CUBA B'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Rocha%' limit 1)),
  (select id from equipo	where 		nombre='CUBA B'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),
  
  -- CUBA A
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Sosa%' limit 1)),
  (select id from equipo	where 		nombre='CUBA A'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Garrido%' limit 1)),
  (select id from equipo	where 		nombre='CUBA A'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),
  
  
  -- ESTEBAN ECHEVERRIA B
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Esteban%' and nombre like 'Juan%' limit 1)),
  (select id from equipo	where 		nombre like 'Esteban%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Esteban%' and nombre like 'Pedro%' limit 1)),
  (select id from equipo	where 		nombre like 'Esteban%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),
  
  -- WILDE D
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Wilde%' and nombre like 'Juan%' limit 1)),
  (select id from equipo	where 		nombre like 'Wilde%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Wilde%' and nombre like 'Pedro%' limit 1)),
  (select id from equipo	where 		nombre like 'Wilde%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
   -- CHICAGO A
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Chicago%' and nombre like 'Juan%' limit 1)),
  (select id from equipo	where 		nombre like 'Chicago%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Chicago%' and nombre like 'Pedro%' limit 1)),
  (select id from equipo	where 		nombre like 'Chicago%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
   -- URQUIZA
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Urquiza%' and nombre like 'Juan%' limit 1)),
  (select id from equipo	where 		nombre like 'Urquiza%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Urquiza%' and nombre like 'Pedro%' limit 1)),
  (select id from equipo	where 		nombre like 'Urquiza%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
  
   -- BELGRANO
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Belgrano%' and nombre like 'Juan%' limit 1)),
  (select id from equipo	where 		nombre like 'Belgrano%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root')),  
  
  (nextval('sequence_id'),
  (select id from jugador	where 		persona_id in (select id from persona where apellido like '%Belgrano%' and nombre like 'Pedro%' limit 1)),
  (select id from equipo	where 		nombre like 'Belgrano%'),
  (select id from condicion_jugador 	where nombre='Titular'),
  (select id from users where username='root'));


  
 INSERT INTO zona_torneo_equipo (id, zona_torneo_id, equipo_id, lastmodifieduser)
 VALUES
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'CUBA A%'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'CUBA B%'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'Esteban%'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'Wilde%'),
  (select id from users where username='root')),
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'Ciudad de%'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'Chicago%'),
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'Urquiza%'),
  (select id from users where username='root')),

  (nextval('sequence_id'),
  (select id from zona_torneo			where 		nombre = 'Zona G'),
  (select id from equipo				where 		nombre like 'Belgrano%'),
  (select id from users where username='root'));
  


 INSERT INTO fecha_torneo (id,	etapa_torneo_id, torneo_id, orden, dia, dia_alternativo, hora, lastmodifieduser)
 VALUES
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  1,
  make_date (2024, 03, 1), 
  make_date (2024, 03, 4),
  '20:30', 
  (select id from users where username='root')),
  
  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  2,
  make_date (2024, 03, 1)+7, 
  make_date (2024, 03, 4)+7,
  '20:30', 
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  3,
  make_date (2024, 03, 1)+2*7, 
  make_date (2024, 03, 4)+2*7,
  '20:30', 
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  4,
  make_date (2024, 03, 1)+3*7, 
  make_date (2024, 03, 4)+3*7,
  '20:30', 
  (select id from users where username='root')),

  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  5,
  make_date (2024, 03, 1)+4*7, 
  make_date (2024, 03, 4)+4*7,
  '20:30', 
  (select id from users where username='root')),


(nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  6,
  make_date (2024, 03, 1)+5*7, 
  make_date (2024, 03, 4)+5*7,
  '20:30', 
  (select id from users where username='root')),
  

(nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  7,
  make_date (2024, 03, 1)+6*7, 
  make_date (2024, 03, 4)+6*7,
  '20:30', 
  (select id from users where username='root')),
  
  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  8,
  make_date (2024, 03, 1)+7*7, 
  make_date (2024, 03, 4)+7*7,
  '20:30', 
  (select id from users where username='root')),
  
  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  9,
  make_date (2024, 03, 1)+8*7, 
  make_date (2024, 03, 4)+8*7,
  '20:30', 
  (select id from users where username='root')),
  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  10,
  make_date (2024, 03, 1)+9*7, 
  make_date (2024, 03, 4)+9*7,
  '20:30', 
  (select id from users where username='root')),
  

  
  (nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  11,
  make_date (2024, 03, 1)+10*7, 
  make_date (2024, 03, 4)+10*7,
  '20:30', 
  (select id from users where username='root')),
  
(nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  12,
  make_date (2024, 03, 1)+11*7, 
  make_date (2024, 03, 4)+11*7,
  '20:30', 
  (select id from users where username='root')),
  
(nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  13,
  make_date (2024, 03, 1)+12*7, 
  make_date (2024, 03, 4)+12*7,
  '20:30', 
  (select id from users where username='root')),
  
(nextval('sequence_id'),
  (select id from etapa_torneo where nombre like 'Clasific%'),
  (select id from torneo where nombre = 'Apertura'),
  14,
  make_date (2024, 03, 1)+14*7, 
  make_date (2024, 03, 4)+14*7,
  '20:30', 
  (select id from users where username='root'));
  
  
  COMMIT;
  

  


  
  
  
