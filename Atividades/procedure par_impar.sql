
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE sp_par_impar(x number)

AS
BEGIN
  IF MOD(x,2) = 0
    THEN DBMS_OUTPUT.PUT_LINE('PAR');
    ELSE DBMS_OUTPUT.PUT_LINE('IMPAR');
  END IF;
END;

--CHAMAR A PROCEDURE

exec sp_par_impar(5);
execute sp_par_impar(5);
call sp_par_impar(5);