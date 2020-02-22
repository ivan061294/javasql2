DELIMITER $$
CREATE PROCEDURE insertar_producto(
IN _p_nombre varchar(30),
IN _p_precio numeric(6,2),
OUT _P_confirn INT 
)
BEGIN
DECLARE _v_id_prod INT;
SET _p_nombre=UPPER(_p_nombre);
SET _p_precio =_p_precio*3.5;
--
SELECT FLOOR(1+RAND()*60)INTO _v_id_prod;
INSERT INTO productos (id_producto,nombre,precio) VALUES
(_v_id_prod,_p_nombre,_p_precio);
--
IF ROW_COUNT()>0 THEN
SET _P_confirn=1;
ELSE
SET _P_confirn=0;
END IF;
END$$
DELIMITER ;
