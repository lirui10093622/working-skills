CREATE OR REPLACE FUNCTION func_<function_name>(param1 IN VARCHAR2, param2 OUT VARCHAR2, param3 IN OUT VARCHAR2)
RETURN VARCHAR2
/********************************************************************************************
 name: func_<function_name>
 desc: to do ......
 log:
 Version     Date             Author          Commit
 -------     ----------       -----------     -------------------------------------
 1.0         2017-02-09       ******          create function template
 
*********************************************************************************************/
AS
--变量定义区域--

-- 变量定义示例:
-- user_name varchar2(50) default '';
-- total number(10,2) default 0.00;

--变量定于区域--
BEGIN
--主体区--

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
END func_<function_name>;
/

/*
说明:
1.函数参数和返回类型只声明参数，不指定大小。
2.可执行部分至少有一条return语句。
3.调用函数时，不能将函数作为单独的语句存在，可以作为表达式的一部分。
*/