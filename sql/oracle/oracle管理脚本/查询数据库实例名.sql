/* 方法一 */
select value from v$parameter where name = 'instance_name';

/* 方法二 */
select instance_name from v$instance;