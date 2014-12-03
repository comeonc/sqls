drop  table if EXISTS simhash


create table simhash select content_simhash from core_content GROUP BY content_simhash having count(1) >1
create table ccid select content_simhash from core_content GROUP BY capture_content_id having count(1) >1


delete core_content from core_content, simhash where core_content.content_simhash=simhash.content_simhash
delete core_content from core_content, ccid where core_content.capture_content_id=ccid.capture_content_id



delete show_content from show_content left join core_content on show_content.core_content_id=core_content.id where core_content.id is null




select * from core_content GROUP BY capture_content_id HAVING count(*) >1

select * from core_content GROUP BY content_simhash HAVING count(*) >1
