select a, avg(b) over () from c;
select a, avg(b) over( partition by c, d ) from e;
select a, avg(b) over( order by c, d ) from e;
select a, avg(b) over( partition by c, d order by e, f ) from g;
select a, avg(b) over( c ), sum(d) over (e) from f window c as ( partition by g, h order by i, j ), e as ( order by k );

