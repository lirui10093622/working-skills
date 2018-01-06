/* describes all relational tables in the database. */
select * from dba_tables;
select * from dba_objects where object_type='TABLE';

/* describes the relational tables accessible to the current user. To gather statistics for this view, use the ANALYZE SQL statement. */
select * from all_tables;
select * from all_objects where object_type='TABLE';

/* describes the relational tables owned by the current user. This view does not display the OWNER column. */
select * from user_tables;
select * from user_objects where object_type='TABLE';