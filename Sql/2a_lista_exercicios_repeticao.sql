/*LISTA 02*/

/*
1 - Crie a fun��o FN_POTENCIA() que receba dois par�metros e ent�o fa�a a pot�ncia do primeiro pelo
segundo.
ex: select fn_potencia(2, 3) from dual;
resp: 8
*/


CREATE OR REPLACE FUNCTION FN_POTENCIA(y NUMBER, pow NUMBER)
RETURN NUMBER
AS

auxY NUMBER := y;
aux NUMBER := 1;
  BEGIN
      FOR x in 1..pow LOOP
      
            aux := aux * auxY;
            
      END LOOP;
    RETURN aux;
  END;
/

  select FN_POTENCIA(2,3) from DUAL;
