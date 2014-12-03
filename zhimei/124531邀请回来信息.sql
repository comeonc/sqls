SELECT r.uid, 
	case 
		WHEN l.user_id is null THEN -1
		ELSE count(l.user_id)
	end as login,
	r.http_u, 
	r.ip, 
	r.`code`, 
	r.invite_id, 
	a.rr_uid, 
	a.qq_id, 
	a.sina_id, 
	a.qzone_open_id, 
	u.nickname, 
	u.email, 
	u.password_digest, 
	u.add_time
FROM user_reg r LEFT OUTER JOIN user_sns_account a ON r.uid = a.u_id
	 LEFT OUTER JOIN `user` u ON r.uid = u.id
	 LEFT OUTER JOIN core_user_login l ON r.uid = l.user_id
WHERE r.uid=1966707 or ( r.uid>1966707 and  r.invite_id=1966707 )
		or ( r.http_u in (select http_u from user_reg where uid=1966707 ) and r.http_u is not null )
GROUP BY r.uid
ORDER BY  r.uid ASC