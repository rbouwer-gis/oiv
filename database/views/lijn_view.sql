create view lijn_view as
select
	lay.*
from
	bereikbaarheidskaart.lijn lay
left join bereikbaarheidskaart.concept c on
	(ST_Within(lay.geom,
	c.geom))
where
	c.id is null