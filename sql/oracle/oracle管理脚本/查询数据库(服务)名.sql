/*方法一*/
select value from v$parameter where name = 'service_names';

/*方法二*/
select name from v$database;

/*方法三*/
select global_name from global_name;
