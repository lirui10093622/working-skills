CREATE OR REPLACE TRIGGER tg_<trigger_name>
AFTER INSERT OR UPDATE OR DELETE
ON <table_name>
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
/********************************************************************************************
 name: tg_<trigger_name>
 desc: to do ......
 log:
 Version     Date             Author          Commit
 -------     ----------       -----------     -------------------------------------
 1.0         2017-02-09       ******          create trigger template
 
*********************************************************************************************/
DECLARE
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
END tg_<trigger_name>;
/



-- 示例1:
CREATE OR REPLACE TRIGGER TG_AFTER_DELETE_TB_TEST
AFTER DELETE
ON TB_TEST
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
/********************************************************************************************
 name: TG_AFTER_DELETE_TB_TEST
 desc: save the change of table tb_test to tb_test_bk
 log:
 Version       Auchor          Date              Commit
 -------       ---------       ----------        -------------------------------------------
 1.0           rui.li          2017-03-04        create the trigger
 
*********************************************************************************************/
DECLARE
v_name VARCHAR2(50) DEFAULT '';

BEGIN
    INSERT INTO TB_TEST_BK(ID, NAME, CREATE_TIME, PORTRAIT, INTRODUCE, ADDRESS_ID) VALUES (:OLD.id, :OLD.name, :OLD.create_time, :OLD.portrait, :OLD.introduce, :OLD.address_id);
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLCODE||': '||SQLERRM);
END;
/