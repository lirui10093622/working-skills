/* describes all views in the database */
select * from dba_views;
select * from dba_objects where object_type='VIEW';

/*describes all views owned by the current user. This view does not display the OWNER column*/
select * from all_views;
select * from all_objects where object_type='VIEW';

/*describes all views accessible to the current user*/
select * from user_views;
select * from user_objects where object_type='VIEW';