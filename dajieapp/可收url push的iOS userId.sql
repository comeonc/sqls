select userId from `tb_user_device_token` where type=0 and updateTime>'2015-01-29' and 
( client_version>='3.0.0');