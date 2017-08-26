-- --------------------------------------------------------------------------------------------------------------
-- xuchangsun add @2017-08-16 创建用户表
-- --------------------------------------------------------------------------------------------------------------
use maoxian;
CREATE TABLE IF NOT EXISTS user (
id              varchar(32)  NOT NULL        comment '用户ide',-- 唯一ID
user_name       varchar(20)  NOT NULL unique comment '用户名',-- 用户名
user_nickname   varchar(255) NOT NULL unique comment '用户昵称',-- 用户昵称
password        varchar(16)  NOT NULL        comment '用户密码',-- 存储MDS加密后的字符串
password_encode varchar(16)  NOT NULL        comment '用户加密密码',-- 加密后的密文(可以反解密的)
phone           varchar(11)  NOT NULL unique comment '用户手机号码',-- 手机号码要求唯一
email           varchar(100) NOT NULL unique comment '用户邮箱',-- 邮箱要求唯一 手机和邮箱可以作为找回用户密码途径
webchat_id      varchar(100)                 comment '用户微信号码',-- 微信id[暂不开放使用登录]
qq              varchar(20)                  comment '用户QQ号码',-- qq号码,20位足够长了[暂不开放使用登录]
create_time     DATETIME     NOT NULL        comment '用户创建时间',
PRIMARY KEY (id)
)
;
