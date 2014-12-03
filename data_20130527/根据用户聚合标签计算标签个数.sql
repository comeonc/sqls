create table tb_user_tag_count  select 
	uid,
	IF(char_length(`tag_ids`) >0 ,char_length(`tag_ids`) - char_length( replace(`tag_ids`, ',' , '')) +1,0) tag_count
 from tb_user_tags;