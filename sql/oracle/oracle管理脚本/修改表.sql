/* 修改表名 */
RENAME <old_table_name> TO <new_table_name>;


/* 修改表的列名 */
ALTER TABLE <table_name> RENAME COLUMN <old_column_name> to <new_column_name>;
/* 示例 */
ALTER TABLE tb_user RENAME COLUMN username to user_name;


/* 修改列的属性 */
ALTER TABLE <table_name> MODIFY (<column_name> <data_type> <nullable>);
/* 示例 */
ALTER TABLE tb_user MODIFY (user_name varchar2(20) not null);


/* 增加列 */
ALTER TABLE <table_name> ADD (<column_name> <data_type> <nullable>);
/* 示例 */
ALTER TABLE tb_user ADD (create_time date);


/* 删除列 */
ALTER TABLE <table_name> DROP COLUMN <column_name>;
/* 示例 */
ALTER TABLE tb_user DROP COLUMN create_time;


/* 增加主键约束 */
ALTER TABLE tb_user ADD <primary_key_name> PRIMARY KEY(<column_name>,..., <column_name>);
/* 示例 */
ALTER TABLE tb_user ADD CONSTRAINTS pk_tb_user PRIMARY KEY(user_name);