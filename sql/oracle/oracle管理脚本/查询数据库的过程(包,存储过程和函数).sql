/* lists all functions and procedures, along with associated properties. */
select * from dba_procedures;

/* lists all functions and procedures, along with associated properties. For example, ALL_PROCEDURES indicates whether or not a function is pipelined, parallel enabled or an aggregate function. If a function is pipelined or an aggregate function, the associated implementation type (if any) is also identified. */
select * from all_procedures;

/* lists all functions and procedures, along with associated properties. It does not contain the OWNER column. */
select * from dba_procedures;