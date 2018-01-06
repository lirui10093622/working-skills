/* describes all jobs in the database. */
select * from dba_jobs;
select * from dba_objects where object_type='JOB';

/* describes all jobs in the database that are accessible to the current user. */
select * from all_jobs;
select * from all_objects where object_type='JOB';

/* describes all jobs owned by the current user. */
select * from user_jobs;
select * from user_objects where object_type='JOB';