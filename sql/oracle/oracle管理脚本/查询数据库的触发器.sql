/* describes all triggers in the database. */
select * from dba_triggers;
select * from dba_objects where object_type='TRIGGER';

/* describes owned by the current user and triggers on tables owned by the current user. If the user has the CREATE ANY TRIGGER privilege, then this view describes all triggers in the database. */
select * from all_triggers;
select * from all_objects where object_type='TRIGGER';

/* describes all triggers owned by the current user. This view does not display the OWNER column. */
select * from user_triggers;
select * from user_objects where object_type='TRIGGER';