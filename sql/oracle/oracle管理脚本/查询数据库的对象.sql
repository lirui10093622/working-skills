/* describes all objects in the database */
select * from dba_objects;

/*describes all objects owned by the current user. This object does not display the OWNER column*/
select * from all_objects;

/*describes all objects accessible to the current user*/
select * from user_objects;