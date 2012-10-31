select distinct username from sessions;
select distinct on (name) * from sessions;
select count( distinct name ) from sessions;
