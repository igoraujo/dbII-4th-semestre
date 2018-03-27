/*
1a Lista de Exerc�cios de PL/SQL

1 - Crie um bloco an�nimo que receba do usu�rio 3 valores separados:
HORA, MINUTO, SEGUNDOS
O programa dever� concatenar os valores em HORA:MINUTO:SEGUNDOS e apresentar o total de segundos equivalentes.
Ex: 
horas: 5
Minutos: 10
Segundos:10

resposta:
5:10:10 total => 4210 segundos
*/

clear screen;
set serveroutput on;
DECLARE 
hora number;
minuto number;
segundo number;
r number;

BEGIN
  hora := &horas;
  minuto := &minutos;
  segundo := &segundos;
 
  r := (hora * 3600) + (minuto * 60) + segundo;
  dbms_output.put_line(r);
  
END;
/
show error;


