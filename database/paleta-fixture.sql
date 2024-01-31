
--Club

BEGIN;


--1 CUBA A
--2 CUBA B
--3 Esteban Echeverría B
--4 WILDE
--5 CIUDAD
--6 CHICAGO
--7 URQUIZA
--8 BELGRANO


delete from fecha_torneo_encuentro;

INSERT INTO fecha_torneo_encuentro (
id,
fecha_torneo_id,
torneo_id ,
zona_id,
equipo_local_id,
equipo_visitante_id,
lastmodifieduser)	
VALUES
						-- FECHA 1y8  -> 1,2- CUBA A - CUBA B
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=1),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from users where username='root')),
						
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=8),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from users where username='root')),
						
						
						-- FECHA 1y8 -> 3,4
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=1),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Esteban%'),
						(select id from equipo where nombre like '%Wilde%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=8),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Wilde%'),
						(select id from equipo where nombre like '%Esteban%'),
						(select id from users where username='root')),
						
						-- FECHA 1y8 -> 5,6
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=1),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Ciudad%'),
						(select id from equipo where nombre like '%Chicago%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=8),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Chicago%'),
						(select id from equipo where nombre like '%Ciudad%'),
						(select id from users where username='root')),
						
						-- FECHA 1y8 -> 7,8
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=1),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Urquiza%'),
						(select id from equipo where nombre like '%Belgrano%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=8),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Belgrano%'),
						(select id from equipo where nombre like '%Urquiza%'),
						(select id from users where username='root')),

						--1 CUBA A
						--2 CUBA B
						--3 Esteban Echeverría B
						--4 WILDE
						--5 CIUDAD
						--6 CHICAGO
						--7 URQUIZA
						--8 BELGRANO
						
						-- FECHA 2y9 -> 2,3
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=2),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from equipo where nombre like '%Esteban%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=9),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Esteban%'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from users where username='root')),
						
						-- FECHA 2y9  -> 4,5
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=2),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Wilde%'),
						(select id from equipo where nombre like '%Ciudad%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=9),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Ciudad%'),
						(select id from equipo where nombre like '%Wilde%'),
						(select id from users where username='root')),

						-- FECHA 2y9  -> 6,7
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=2),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Chicago%'),
						(select id from equipo where nombre like '%Urquiza%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=9),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Urquiza%'),
						(select id from equipo where nombre like '%Chicago%'),
						(select id from users where username='root')),
						
						 -- FECHA 2y9 -> 8,1
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=2),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Belgrano%'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=9),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from equipo where nombre like '%Belgrano%'),
						(select id from users where username='root')),
						
						
						
						--1 CUBA A
						--2 CUBA B
						--3 Esteban Echeverría B
						--4 WILDE
						--5 CIUDAD
						--6 CHICAGO
						--7 URQUIZA
						--8 BELGRANO
						
						-- FECHA 3y10 -> 1,4
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=3),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from equipo where nombre like '%Wi%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=10),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Wi%'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from users where username='root')),
						
						-- FECHA 3y10 -> 3,6
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=3),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Esteb%'),
						(select id from equipo where nombre like '%Chica%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=10),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Chica%'),
						(select id from equipo where nombre like '%Esteb%'),
						(select id from users where username='root')),

						-- FECHA 3y10 -> 5,8
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=3),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Ciudad%'),
						(select id from equipo where nombre like '%Belg%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=10),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Belg%'),
						(select id from equipo where nombre like '%Ciudad%'),
						(select id from users where username='root')),
						
						 -- FECHA 3y10 -> 7,2
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=3),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Urquiza%'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=10),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from equipo where nombre like '%Urquiza%'),
						(select id from users where username='root')),
						
						
						
						--1 CUBA A
						--2 CUBA B
						--3 Esteban Echeverría B
						--4 WILDE
						--5 CIUDAD
						--6 CHICAGO
						--7 URQUIZA
						--8 BELGRANO
						
						-- FECHA 4y11 -> 2,5
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=4),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from equipo where nombre like '%Ciu%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=11),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Ciu%'),
						(select id from equipo where nombre like '%CUBA B%'),
						(select id from users where username='root')),
						
						-- FECHA 4y11 -> 4,7
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=4),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Wil%'),
						(select id from equipo where nombre like '%Urq%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=11),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Chica%'),
						(select id from equipo where nombre like '%Esteb%'),
						(select id from users where username='root')),

						-- FECHA 4y11 -> 6,1
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=4),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Chic%'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=11),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%CUBA A%'),
						(select id from equipo where nombre like '%Chica%'),
						(select id from users where username='root')),
						
						 -- FECHA 4y11 -> 8,3
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=4),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Belgrano%'),
						(select id from equipo where nombre like '%Esteban%'),
						(select id from users where username='root')),
						
						(nextval('sequence_id'), 
						(SELECT id FROM fecha_torneo WHERE etapa_torneo_id=(select id from etapa_torneo where nombre like 'Clasific%') and torneo_id = (select id from torneo where nombre = 'Apertura') AND orden=11),
						(select id from torneo where nombre = 'Apertura'),
						(select id from zona_torneo where torneo_id=(select id from torneo where nombre = 'Apertura') AND nombre='Zona G'),
						(select id from equipo where nombre like '%Esteban%'),
						(select id from equipo where nombre like '%Belgrano%'),
						(select id from users where username='root'));
						
					
						

COMMIT;






  
