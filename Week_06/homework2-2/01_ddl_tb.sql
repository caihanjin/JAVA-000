create table if not exists user_info (
    id INT NOT NULL AUTO_INCREMENT comment '表ID',
    user_id varchar(20) NOT NULL comment '用户ID',
    user_name varchar(100) DEFAULT '' comment '用户名',
    user_pswd varchar(64) NOT NULL comment '用户密码',
    nick_name varchar(100) DEFAULT '' comment '昵称',
    id_no varchar(32) DEFAULT '' comment '身份证号码',
    mobile varchar(16) DEFAULT '' comment '手机号',
    created_by varchar(64) DEFAULT '' comment '创建人',
    created_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '创建时间',
    updated_by varchar(64) DEFAULT '' comment '更新人',
    updated_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '更新时间',
    PRIMARY KEY ( id ),
    UNIQUE INDEX  uk_user (user_id),
    INDEX  idx_time (created_time)
) ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
comment '用户信息表'; 


create table goods_info (
    id INT NOT NULL AUTO_INCREMENT comment '表ID',
    goods_no varchar(32) NOT NULL comment '商品编号',
    goods_name varchar(100) DEFAULT '' comment '商品名称',
    goods_desc varchar(256) DEFAULT '' comment '商品描述',
    category   varchar(4) DEFAULT '' comment '分类',
    goods_cnt int DEFAULT '0' comment '商品数量',
    active tinyint DEFAULT '1' comment '商品状态 1-有效, 0-下架', 
    created_by varchar(64) DEFAULT '' comment '创建人',
    created_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '创建时间',
    updated_by varchar(64) DEFAULT '' comment '更新人',
    updated_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '更新时间',
    PRIMARY KEY ( id ),
    UNIQUE INDEX  uk_goods (goods_no),
    INDEX  idx_time (created_time)
) ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
comment '商品信息表'; 

create table order_info (
    id INT NOT NULL AUTO_INCREMENT comment '表ID',
    trans_date date NOT NULL comment '交易日期',
    order_no varchar(32) NOT NULL comment '订单编号',
    amount decimal(18,2) NOT NULL DEFAULT '0.00' comment '订单金额',
    goods_cnt int DEFAULT '0' comment '商品数量',
    status varchar(2) DEFAULT '00' comment '订单状态 00-待支付',
    mobile varchar(20) DEFAULT '' comment '联系电话',
    recipient varchar(100) DEFAULT '' comment '收件人',
    address varchar(256) DEFAULT '' comment '收货地址',
    created_by varchar(64) DEFAULT '' comment '创建人',
    created_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '创建时间',
    updated_by varchar(64) DEFAULT '' comment '更新人',
    updated_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '更新时间',
    PRIMARY KEY ( id ),
    UNIQUE INDEX  uk_order (order_no),
    INDEX  idx_date (trans_date)
) ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
comment '订单信息表'; 

create table order_goods_info (
    id INT NOT NULL AUTO_INCREMENT comment '表ID',
    trans_date date NOT NULL comment '交易日期',
    order_no varchar(32) NOT NULL comment '订单编号',
    goods_no varchar(32) NOT NULL comment '商品编号',
    amount decimal(18,2) NOT NULL DEFAULT '0.00' comment '订单金额',
    goods_cnt int DEFAULT '0' comment '商品数量',
    status varchar(2) DEFAULT '00' comment '订单状态 00-待支付',
    created_by varchar(64) DEFAULT '' comment '创建人',
    created_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '创建时间',
    updated_by varchar(64) DEFAULT '' comment '更新人',
    updated_time timestamp(3) DEFAULT '00-00-00 00:00:00' comment '更新时间',
    PRIMARY KEY ( id ),
    UNIQUE INDEX  uk_order (order_no, goods_no),
    INDEX  idx_date (trans_date)
) ENGINE=InnoDB 
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
comment '订单商品信息表'; 

