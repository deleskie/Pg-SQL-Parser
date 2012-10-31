select
    1::int4,
    2::int8,
    'x'::text,
    'y'::varchar(15),
    'a.b'::contrib.ltree,
    'c'::"MagicType",
    '2012-09-11 11:05:18.619231+02'::timestamp without time zone,
    '2012-09-11 11:05:18.619231+02'::timestamp with time zone,
    '2012-09-11 11:05:18.619231+02'::time with time zone,
    '2012-09-11 11:05:18.619231+02'::time(0) with time zone,
    '2012-09-11 11:05:18.619231+02'::date,
    '1 day 1.21 second'::interval day to hour,
    '1 day 1.21 second'::interval(0) day to hour,
    '1 day 1.21 second'::interval(0) minute to second,
    '1 day 1.21 second'::interval minute to second(2);

