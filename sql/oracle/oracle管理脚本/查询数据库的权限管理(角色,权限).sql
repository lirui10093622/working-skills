/* SYSTEM_PRIVILEGE_MAP describes privilege type codes. This table can be used to map privilege type numbers to type names. */
/* 查询所有系统权限 */
select * from system_privilege_map;

/* DBA_ROLES lists all roles that exist in the database. */
/* 查询所有角色 */
select * from dba_roles;

/* USER_ROLE_PRIVS describes the roles granted to the current user. */
/* 查询分配给当前用户的所有角色 */
select * from user_role_privs;

/* DBA_ROLE_PRIVS describes the roles granted to all users and roles in the database. */
/* 查询所有用户和角色包含的所有角色(角色也可以分配给角色) */
select * from dba_role_privs;

/* 查询某个用户或角色拥有的系统权限 */
select * from dba_role_privs where grantee='用户或者角色名';


select * from role_sys_privs;
