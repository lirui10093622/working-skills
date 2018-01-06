/* describes all users of the database. */
select * from dba_users;

/* describes the current user. This view does not display the PASSWORD or PROFILE columns. */
select * from user_users;