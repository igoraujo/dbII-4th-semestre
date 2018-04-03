/*
1 � Crie a fun��o FN_INVERTE_LETRAS() que receba um texto como par�metro e ent�o mostre-
o invertido.
*/


CREATE OR REPLACE FUNCTION FN_INVERTE_LETRAS(letras VARCHAR2)
RETURN VARCHAR2
AS

i NUMBER;
  BEGIN
    FOR x IN 1..LENGTH(i) LOOP
      IF substr(i, x, 1) = ' '
        THEN i := x;
        EXIT;
      END IF;
    END LOOP;
    RETURN substr(letras, 1, i - 1);
  END;
/