DECLARE
--变量定义区域--

-- 变量定义示例:
-- user_name varchar2(50) default '';
-- total number(10,2) default 0.00;

--变量定于区域--
BEGIN
--主体区--
  SELECT ......;
  INSERT ......;
  UPDATE ......;
  DELETE ......;
  
EXCEPTION
--异常处理--
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('exception: no data found in db.');
    WHEN TOO_MANY_ROWS THEN
	    dbms_output.put_line('exception: too many rows.');
	WHEN OTHERS THEN
	    dbms_output.put_line('错误代码: '||SQLCODE);
		dbms_output.put_line('错误信息: '||SQLERRM);
--异常处理--
--主体区--
END;
/