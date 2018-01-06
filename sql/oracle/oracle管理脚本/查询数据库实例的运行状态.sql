/* 1.SHUTDOWN: ORA-01034: ORACLE not available */
/* 2.NOMOUNT: STARTED(仅仅通过初始化文件，分配出SGA区，启动数据库后台进程，没有打开控制文件和数据文件。不能任何访问数据库。) */
/* 3.MOUNT: MOUNTED(仅仅给DBA进行管理操作，不允许数据库的用户访问。仅仅只是当前实例的控制文件被打开，数据文件未打开。) */
/* 4.OPEN: OPEN(STARTUP缺省的参数就是OPEN，打开数据库，允许数据库的访问。当前实例的控制文件中所描述的所有文件都已经打开。) */
select status from v$instance;
