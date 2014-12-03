(
	select 1, count(client_platform_web) from user_login_total where client_platform_web > 0
)
union
(
	select 2, count(client_platform_iphone) from user_login_total where client_platform_iphone > 0
)
union
(
	select 3, count(client_platform_android) from user_login_total where client_platform_android > 0 
)
union
(
	select 12, count(client_platform_web) from user_login_total where client_platform_web > 0 and client_platform_iphone>0
)
UNION
(
	select 13, count(client_platform_web) from user_login_total where client_platform_web > 0 and client_platform_android>0
)
union
(
	select 13, count(client_platform_iphone) from user_login_total where client_platform_iphone > 0 and client_platform_android>0
)
UNION
(
	select 123, count(client_platform_web) from user_login_total where client_platform_web > 0 and client_platform_iphone > 0 and client_platform_android>0
)