--테이블 생성--

--MEMBER--
CREATE TABLE member(
    id varchar2(30) CONSTRAINT MEMBER_ID_PK PRIMARY KEY,
    pw varchar2(50),
    name varchar(20),
    birthday Date,
    gender CHAR(1), -- 1: 남, 2: 여
    point number,
    tel varchar2(30),
    postcode number,
    addr varchar2(100),
    addr2 varchar2(100),
    authority  char(1) --1: 관리자, 0: 회원
);


--POINT--
create table POINT(
    pointNum number constraint point_pointNum_pk primary key,
    id varchar2(30) constraint point_id_fk references member(id) on delete cascade,  
    regDate date,
    sort varchar2(20),
    detail varchar2(40),
    savePoint number,
    usePoint number,
    restPoint number default 0
);

create sequence point_seq
start with 1
nocache;


--FAQ--
create table FAQ(
num number constraint FAQ_NUM_PK primary key,
title varchar2(400),
contents CLOB,
category varchar2(200),
writer varchar2(30) constraint FAQ_WRITER_FK references member(id) on delete set null,
con number
);

create sequence FAQ_seq nocache;


--QNA--
create table QNA(
num number constraint QNA_NUM_PK primary key,
title varchar2(400),
contents CLOB,
category varchar2(200),
writer varchar2(30) constraint QNA_NUM_FK references member(id) on delete set null,
status varchar2(20) default '답변대기',
regDate Date,
hit number,
ref number,
step number,
depth number,
con number
);

create sequence QNA_seq nocache;


--QNAFILES--
create table Qnafiles(
fileNum number constraint FILES_FILENUM_PK primary key,
num number constraint FILES_NUM_FK references qna (num) on delete cascade,
fileName varchar2(400),
origineName varchar2(400)
);

create sequence QNAFILE_seq nocache;


--MAGAZINE--
create table magazine(
    num number constraint magazine_num_pk primary key,
    category varchar2(100) default 'STORIES',
    title varchar2(200),
    subTitle varchar2(200),
    contents CLOB
);

create sequence magazine_seq;


--MAGAZINEFILES--
create table magazineFiles(
fileNum number constraint MAGAZINEFILES_FILENUM_PK primary key,
num number constraint MAGAZINEFILES_NUM_FK references magazine (num) on delete cascade,
fileName varchar2(400),
origineName varchar2(400)
);

create sequence MAGAZINEFILE_seq nocache;


--MAIL--
create table mailAddr(
mAddr varchar2(100) constraint MA_MADDR_PK PRIMARY KEY
);


--PRODUCT--
create table product(
    productNum number constraint product_productNum_pk primary key,
    name varchar2(100),
    category varchar2(100),
    subtitle varchar2(400),
    includes varchar2(2000),
    contents clob,
    details varchar2(2000),
    cartInfo varchar2(400),
    grinds varchar2(10)
);

create sequence product_seq
start with 1
nocache;


--OPTIONS--
create table options(
    optionNum number constraint options_optionNum_pk primary key,
    productNum number constraint options_productNum_fk references product(productNum) on delete cascade,
    optionInfo varchar2(400),
    type varchar2(100),
    price number,
    discountRate number(3,2),
    afterPrice number,
    stock number
);

create sequence options_seq
start with 1
nocache;


--PRODUCTFILES--
create table productFiles(
    fileNum number constraint productFiles_fileNum_pk primary key,
    productNum number constraint productFiles_productNum_fk references product(productNum) on delete cascade,
    fileName varchar2(400),
    originName varchar2(400)
);

create sequence productFiles_seq
start with 1
nocache;


--CART--
create table cart(
    itemNum number constraint cart_itemNum_pk primary key,
    cartID varchar2(100),
    optionNum number constraint cart_optionNum_fk references options(optionNum),
    quantity number,
    finalPrice number,
    grind varchar2(100)
);

create sequence cart_seq
start with 1
nocache;


--ORDERS--
create table orders(
    orderUid varchar2(30) constraint order_orderNum_pk primary key,
    impUid varchar2(30),
    id varchar2(30),
    orderName varchar2(100),
    orderDate date,
    amount number,
    payState varchar2(100),
    payMethod varchar2(30),
    buyerName varchar2(30),
    buyerTel varchar2(30),
    buyerPostcode number,
    buyerAddr varchar2(100),
    buyerAddr2 varchar2(100),
    message varchar2(200)
);

create sequence orders_seq
start with 5000
nocache;


--ORDERDETAILS--
create table orderDetails (
    detailNum number constraint orderDetails_detailNum_pk primary key,
    orderUid varchar2(30) constraint orderDetails_orderNum_fk references orders(orderUid) on delete set null,
    orderDate date,
    optionNum number,
    quantity number,
    finalPrice number,
    grind varchar2(100),
    shippingState varchar2(100)
);

create sequence orderDetails_seq
start with 1
nocache;


--LOCATION--
create table location (
    storeNum number,
    storeName varchar2(100) constraint store_name_pk primary key,
    storeLat Number(10, 8),
    storeLan Number(11, 8),
    storeLoc varchar2(400),
    storeTel varchar2(20),
    storeImg varchar2(200),
    storeInfo varchar2(4000)
);

create sequence location_seq start with 1 nocache;