select corp_id,
case source_type
	when 1 then '投递职位'
	when 2 then '加关注'
	when 3 then '主动加入'
	when 4 then '拒绝加入'
	when 5 then '邀约箱接受'
	when 6 then '人才微店'
	when 7 then '微招聘'
	else '未知'
end as '类型', sum(num) total from (


(select '0', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_0  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '1', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_1  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '2', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_2  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '3', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_3  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '4', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_4  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '5', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_5  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '6', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_6  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '7', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_7  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '8', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_8  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '9', count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_9  where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '10',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_10 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '11',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_11 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '12',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_12 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '13',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_13 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '14',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_14 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '15',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_15 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '16',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_16 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '17',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_17 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '18',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_18 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '19',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_19 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '20',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_20 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '21',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_21 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '22',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_22 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '23',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_23 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '24',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_24 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '25',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_25 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '26',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_26 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '27',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_27 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '28',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_28 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '29',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_29 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '30',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_30 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '31',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_31 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '32',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_32 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '33',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_33 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '34',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_34 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '35',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_35 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '36',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_36 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '37',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_37 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '38',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_38 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '39',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_39 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '40',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_40 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '41',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_41 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '42',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_42 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '43',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_43 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '44',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_44 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '45',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_45 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '46',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_46 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '47',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_47 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '48',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_48 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '49',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_49 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '50',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_50 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '51',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_51 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '52',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_52 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '53',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_53 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '54',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_54 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '55',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_55 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '56',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_56 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '57',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_57 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '58',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_58 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '59',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_59 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '60',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_60 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '61',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_61 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '62',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_62 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '63',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_63 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '64',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_64 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '65',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_65 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '66',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_66 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '67',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_67 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '68',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_68 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '69',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_69 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '70',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_70 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '71',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_71 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '72',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_72 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '73',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_73 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '74',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_74 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '75',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_75 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '76',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_76 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '77',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_77 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '78',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_78 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '79',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_79 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '80',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_80 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '81',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_81 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '82',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_82 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '83',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_83 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '84',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_84 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '85',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_85 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '86',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_86 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '87',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_87 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '88',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_88 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '89',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_89 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '90',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_90 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '91',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_91 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '92',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_92 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '93',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_93 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '94',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_94 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '95',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_95 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '96',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_96 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '97',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_97 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '98',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_98 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)union
(select '99',count(1) num, date(create_date) days, source_type, corp_id from tb_talent_member_99 where create_date>'2016-11-21' and status=1 group by corp_id,source_type)


) as t group by source_type,corp_id
order by corp_id ,source_type