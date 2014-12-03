select times,count(times) total from 
(
select explode_id,COUNT(explode_id) as times from seeu_my_media where explode_id>0 group by explode_id
)a group by times