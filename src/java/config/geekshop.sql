--
-- ER/Studio 8.0 SQL Code Generation
-- Project :      geekshop.DM1
--
-- Date Created : Tuesday, December 30, 2014 16:10:31
-- Target DBMS : MySQL 5.x
--

DROP TABLE IF EXISTS  `sequence`
;
DROP TABLE IF EXISTS  `shop_cart_base`
;
DROP TABLE IF EXISTS  `shop_cart_list`
;
DROP TABLE IF EXISTS  `shop_goods_base`
;
DROP TABLE IF EXISTS  `shop_order_base`
;
DROP TABLE IF EXISTS  `shop_order_goods_list`
;
DROP TABLE IF EXISTS `tb_addr_base`
;
DROP TABLE IF EXISTS  `tb_user_base`
;
DROP TABLE IF EXISTS `wx_access_token`
;
DROP TABLE IF EXISTS `wx_pub_base`
;
DROP TABLE IF EXISTS `wx_user_base`
;
-- 
-- TABLE: sequence 
--

CREATE TABLE `sequence`(
    `name`             VARCHAR(50)    NOT NULL,
    `current_value`    INT            NOT NULL,
    `increment`        INT            DEFAULT 1 NOT NULL,
    UNIQUE INDEX PK1(`name`)
)ENGINE=INNODB
COMMENT=''
;

-- 
-- TABLE: shop_cart_base 
--

CREATE TABLE shop_cart_base(
    v_seq_id         VARCHAR(32)       NOT NULL,
    v_user_id        VARCHAR(32),
    n_total_count    INT,
    n_total_price    DECIMAL(10, 2),
    n_status         INT,
    n_update_time    DATETIME,
    UNIQUE INDEX PK2(v_seq_id)
)ENGINE=INNODB
COMMENT='购物车基本表'
;

-- 
-- TABLE: shop_cart_list 
--

CREATE TABLE shop_cart_list(
    v_cart_id        VARCHAR(32),
    v_goods_id       VARCHAR(32),
    v_goods_name     VARCHAR(100),
    v_goods_pic      VARCHAR(255),
    n_goods_price    DECIMAL(10, 2),
    n_goods_count    INT,
    d_update_date    DATETIME
)ENGINE=INNODB
COMMENT='购物车列表'
;

-- 
-- TABLE: shop_goods_base 
--

CREATE TABLE shop_goods_base(
    n_seq_id              VARCHAR(32)       NOT NULL,
    v_goods_name          VARCHAR(100),
    v_goods_pic           VARCHAR(255),
    v_goods_thumb         VARCHAR(255),
    n_goods_storage       INT,
    n_goods_sale_price    DECIMAL(10, 2),
    n_goods_base_price    DECIMAL(10, 2),
    d_create_date         DATETIME,
    d_update_date         DATETIME,
    UNIQUE INDEX PK4(n_seq_id)
)ENGINE=INNODB
COMMENT='商品信息基本表'
;

-- 
-- TABLE: shop_order_base 
--

CREATE TABLE shop_order_base(
    v_seq_id         VARCHAR(32),
    v_user_id        VARCHAR(32),
    n_total_price    DECIMAL(10, 2),
    n_total_count    INT,
    d_create_date    DATETIME,
    d_update_date    DATETIME,
    n_status         INT
)ENGINE=INNODB
COMMENT='商城订单基本表'
;

-- 
-- TABLE: shop_order_goods_list 
--

CREATE TABLE shop_order_goods_list(
    v_order_id       VARCHAR(32),
    v_goods_id       VARCHAR(32),
    v_goods_name     VARCHAR(100),
    v_goods_pic      VARCHAR(255),
    n_goods_price    DECIMAL(10, 2),
    n_goods_count    INT,
    d_create_date    DATETIME
)ENGINE=INNODB
COMMENT='订单商品关联表'
;

-- 
-- TABLE: tb_addr_base 
--

CREATE TABLE tb_addr_base(
    v_seq_id         VARCHAR(32)    NOT NULL,
    v_user_id        VARCHAR(32),
    v_nation_code    VARCHAR(32),
    v_nation_name    VARCHAR(32),
    v_prov_code      VARCHAR(32),
    v_prov_name      VARCHAR(32),
    v_city_name      VARCHAR(32),
    v_city_code      VARCHAR(32),
    v_zone_name      VARCHAR(32),
    v_zone_code      VARCHAR(32),
    v_addr_detail    VARCHAR(32),
    UNIQUE INDEX PK20(v_seq_id)
)
COMMENT=''
;

-- 
-- TABLE: tb_user_base 
--

CREATE TABLE tb_user_base(
    v_seq_id       VARCHAR(32)    NOT NULL,
    v_user_name    VARCHAR(32),
    UNIQUE INDEX PK19(v_seq_id)
)
COMMENT=''
;

-- 
-- TABLE: wx_access_token 
--

CREATE TABLE wx_access_token(
    v_pub_id         VARCHAR(32),
    AccessToken      VARCHAR(32),
    n_expire_time    SMALLINT    NOT NULL,
    n_fetch_time     DATETIME
)
COMMENT=''
;

-- 
-- TABLE: wx_pub_base 
--

CREATE TABLE wx_pub_base(
    v_seq_id         VARCHAR(32)    NOT NULL,
    v_pub_token      VARCHAR(64)    NOT NULL,
    v_app_id         VARCHAR(48)    NOT NULL,
    v_app_secret     VARCHAR(48)    NOT NULL,
    v_pub_name       VARCHAR(64)    NOT NULL,
    v_pub_real_id    VARCHAR(64)    NOT NULL,
    UNIQUE INDEX PK2(v_seq_id)
)ENGINE=INNODB
COMMENT=''
;

-- 
-- TABLE: wx_user_base 
--

CREATE TABLE wx_user_base(
    v_seq_id             VARCHAR(32)     NOT NULL,
    v_open_id            VARCHAR(48)     NOT NULL,
    v_nick_name          VARCHAR(24),
    v_avatar_pic         VARCHAR(255),
    d_create_date        DATETIME,
    d_update_date        DATETIME,
    v_ref_pub            VARCHAR(24),
    n_is_subscribbled    INT,
    v_user_id            VARCHAR(32),
    UNIQUE INDEX PK3(v_seq_id)
)ENGINE=INNODB
COMMENT=''
;

-- 
-- TABLE: sequence 
--

ALTER TABLE sequence ADD 
    PRIMARY KEY (name)
;

-- 
-- TABLE: shop_cart_base 
--

ALTER TABLE shop_cart_base ADD 
    PRIMARY KEY (v_seq_id)
;

-- 
-- TABLE: shop_goods_base 
--

ALTER TABLE shop_goods_base ADD 
    PRIMARY KEY (n_seq_id)
;

-- 
-- TABLE: tb_addr_base 
--

ALTER TABLE tb_addr_base ADD 
    PRIMARY KEY (v_seq_id)
;

-- 
-- TABLE: tb_user_base 
--

ALTER TABLE tb_user_base ADD 
    PRIMARY KEY (v_seq_id)
;

-- 
-- TABLE: wx_pub_base 
--

ALTER TABLE wx_pub_base ADD 
    PRIMARY KEY (v_seq_id)
;

-- 
-- TABLE: wx_user_base 
--

ALTER TABLE wx_user_base ADD 
    PRIMARY KEY (v_seq_id)
;

-- ----------------------------
-- Function structure for `currval`
-- ----------------------------
DROP FUNCTION IF EXISTS `currval`;
DELIMITER ;;
CREATE FUNCTION `currval`(seq_name VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
BEGIN
         DECLARE value INTEGER;
         SET value = 0;
         SELECT current_value INTO value
                   FROM sequence
                   WHERE name = seq_name;
         RETURN value;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `nextval`
-- ----------------------------
DROP FUNCTION IF EXISTS `nextval`;
DELIMITER ;;
CREATE FUNCTION `nextval`(seq_name VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
BEGIN
         UPDATE sequence
                   SET current_value = current_value + increment
                   WHERE name = seq_name;
         RETURN currval(seq_name);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `setval`
-- ----------------------------
DROP FUNCTION IF EXISTS `setval`;
DELIMITER ;;
CREATE  FUNCTION `setval`(seq_name VARCHAR(50), value INTEGER) RETURNS int(11)
    DETERMINISTIC
BEGIN
         UPDATE sequence
                   SET current_value = value
                   WHERE name = seq_name;
         RETURN currval(seq_name);
END
;;
DELIMITER ;