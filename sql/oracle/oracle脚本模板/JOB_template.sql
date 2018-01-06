DECLARE
  X NUMBER;
BEGIN
  SYS.DBMS_JOB.SUBMIT
  ( job       => X 
   ,what      => 'sp_save_test;'
   ,next_date => to_date('05/03/2017 00:03:06','dd/mm/yyyy hh24:mi:ss')
   ,interval  => 'sysdate+1/24/60'
   ,no_parse  => FALSE
  );
  SYS.DBMS_OUTPUT.PUT_LINE('Job Number is: ' || to_char(x));
COMMIT;
END;
/
