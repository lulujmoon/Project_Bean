--member--
insert into member (id, pw, name, nickname, gender, point) values ('admin','admin','admin','관리자','2',0);



--admin--
insert into admin values('admin','admin');



--location--
insert into location values (location_seq.nextval, '빈브라더스 신도림', 37.51025527761823, 126.8896757460358,
'서울 구로구 경인로 662 현대백화점 디큐브시티 3F', '02-1234-2312', '신도림.jpg',
'당장 살 게 없어도 잘 디자인된 쇼핑 공간을 거니는 것은 즐거운 일이지만,<br>갑자기 그 모든 게 어지럽고 부질없게 느껴질 때가 있습니다.
<br><br>아무 생각 없이 앉아 커피 한 잔과 함께 당을 충전하고 싶을 때,<br>커피 향기와 함께 반가운 이름을 발견하길 바랍니다.');

insert into location values (location_seq.nextval, '빈브라더스 인천 가좌', 37.48779226950884, 126.67919706879788, 
'인천 서구 원적로7번길 1', '070-7778-5770', '인천.jpg', 
'#시간이 배어나는 아름다움<br>#인더스트리얼 루프탑<br><br>
문화공간을 찾기 어려운 옛 공장지대와 오래된 아파트 단지 사이,<br>지역의 문화 스위치를 켜고 싶다는 분들과의 인연이 빈브라더스가 일찍 인천에 서게 된 계기가 되었습니다.
<br><br>조선 시대부터 이 자리에 존재하던 지붕의 기와를 그대로 살려, 건물을 둘러싼 낮은 담에 올려 기억을 이어나갔습니다.
<br>우리가 이 기와를 보며 느끼는 시간이 한껏 배인 아름다움을, 우리 다음 세대는 이 공장들을 보며 느낄지도 모르는 일입니다.
<br><br>#테크니션 토르의 Instagram Spot
<br>· 노을지는 시간 루프탑에서 보는 일몰
<br>· 오후 5시 3층 창가. 창문 그림자가 길어질 때');

insert into location values (location_seq.nextval, '빈브라더스 합정점', 37.5457427055219, 126.91495715122247, 
'서울특별시 마포구 합정동 토정로 35-1', '02-6012-2001', '합정.jpg', 
'합정동 뒷골목, 지게차가 드나들던 맥주 창고가 빈브라더스의 첫 매장이 되었습니다.
<br>간판 없이도 커피 볶는 향에 멈추게 되는 건물 안으로 들어가면,<br>높은 천장 아래 펼쳐진 오픈 바를 마주합니다.
<br><br>시장에 온 것 같은 생기로 북적이는 이 공간에 산책하는 동네 주민분들과 데이트를 나온 커플,
<br>자전거를 세운 라이더들이 자연스레 녹아듭니다.<br>바리스타들의 리듬을 좇으며 커피를 즐기다 커피, 사람, 음악 - 공간 전체가 모두 닮아 있다는 생각이 드신다면,
<br><br>빈브라더스에 오신 것을 환영합니다.');

insert into location values (location_seq.nextval, '빈브라더스 하남', 37.54646312212375, 127.22331626936754, 
'경기도 하남시 신장동 616 스타필드하남 1층 빈브라더스', '02-2210-9351', '하남.jpg', 
'드넓은 체험형 쇼핑몰, 스타필드 하남에 위치한 빈브라더스.<br><br>19년도 11월 리뉴얼 이후<br>바(Bar)는 더욱 웅장해졌으며, 좌석 공간은 더욱 편안해졌습니다.
<br><br>칼리타 웨이브로 내린 브루잉 커피도 즐기면서,<br>쇼핑 전후로 훌륭한 커피로 에너지를 충전하세요.');



--product--
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (41,18,'8b5aded0-25cc-4ab0-bdd7-bb2462446991_clever_white_1000_tiny.jpg','clever_white_1000_tiny.jpg');
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (42,20,'6a28450e-01da-44ab-87b0-2650d43b4846_dripbag_main_1200_900.jpg','dripbag_main_1200_900.jpg');
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (44,21,'16fd52eb-9eca-4f21-9e60-1f92df758c1e_aero_001-2.jpg','aero_001-2.jpg');
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (37,22,'3a8c7a34-bd77-41e7-ba54-b2313fa0c6c5_4???_??????????_??????????.jpg','4???_??????????_??????????.jpg');
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (40,17,'f775dd3d-dd93-477c-96ac-7dd30e663b93_4???_??????????_?????????.jpg','4???_??????????_?????????.jpg');
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (43,23,'02295ca6-11f8-433e-8708-136083df0d0e_dripbag_30_1200_900.jpg','dripbag_30_1200_900.jpg');
Insert into PRODUCTFILES (FILENUM,PRODUCTNUM,FILENAME,ORIGINNAME) values (39,19,'ebb16530-6e6d-4a94-a5a0-fb3b3ac1f9fa_??????????_??????.jpg','??????????_??????.jpg');



--productFiles--
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (17,'온두라스 돈 에우제비오','coffee','BB가 추천하는 싱글오리진 커피','#232 온두라스 돈 에우제비오~원두~원두 카드','지역 : Chaguites, Honduras~농장 : Don Eusebio~농장주 : Eusebio Santos~품종 : Catuai~가공방식 : Washed~로스팅 포인트 : Medium','구운 호두의 고소함과 브라운 슈거의 달콤함','O');
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (18,'클레버드리퍼 + 필터','brewingTool','간편하게 맛있는 커피를 즐기고 싶은 분들을 위한  이름 그대로 똑똑한 드리퍼.','클레버 드리퍼~칼리타 필터 100매','제조사 : E.K. International Co., LTD~원산지 : 대만~재질 : 아크릴로나트릴스티렌, 실리콘수지, 폴리스티렌 (BPA Free)~규격 : 1-2인용 / 300ml','가장 간편한 추출 도구','X');
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (19,'블랙수트','coffee','클래식의 정점, 다크초콜릿의 달콤 쌉싸름함','블랙수트 블렌드 (브라질, 콜롬비아, 에티오피아)~원두~원두 카드','Brazil Rio Brilhante Pulped Natural 60%~Colombia Inza Cauca Washed 25%~Ethiopia Beriti Washed 15%','매일 마셔도 좋은 에브리데이 커피','O');
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (20,'빈브라더스 드립백 7종','dripbag','빈브라더스 커피를 언제 어디서나 간편하게 즐기는 방법','빈브라더스 드립백 7종~11g x 8개입','내용량 : 11g x 8개입 | 개별질소포장~원산지 : 원산지 별도 표기 (상세 참고)~로스팅 : 빈브라더스로스터스~제조사 : (주)세이코커피코리아~포장재질 : 드립백(폴리프로필렌), 외부필름(종이), 박스(종이)~포장법 : 질소충전 | 개별포장~유통기한 : 제조일로부터 1년','8개입 | 언제 어디서나 빈브라더스 커피를','X');
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (21,'에어로프레스','brewingTool','머신 없이도 집에서 에스프레소를 만드는 법.','압축기, 본체, 필터캡, 젓개,~필터보관대 & 필터(350매)','제조사 : AEROBIE~원산지 : 미국~재질 : 트라이탄(PCT), 폴리프로필렌, 고무~규격 : 1-4인용','집에서도 에스프레소를','X');
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (22,'콜롬비아 라 디비사 무산소 내추럴','coffee','BB가 추천하는 싱글오리진 커피','#233 콜롬비아 라 디비사 무산소 내추럴~원두~원두 카드','지역 : Buenavista, Colombia~농장 : La Divisa~농장주 : Diofanor Ruiz~품종 : Pink Bourbon~재배고도 : 1,750m~가공방식 : Natural Anaerobic~로스팅 포인트 : Medium Light','크림슨 적포도의 달콤함과 은은한 허브의 여운','O');
Insert into PRODUCT (PRODUCTNUM,NAME,CATEGORY,SUBTITLE,INCLUDES,DETAILS,CARTINFO,GRINDS) values (23,'빈브라더스 드립백 실속형 30개입','dripbag','자주 즐긴다면, 같은 커피를 실속있게.','01. 블랙수트 드립백 30개입~02. 벨벳화이트 드립백 30개입~드립백 11g x 30개입','내용량 : 11g x 30개입 | 개별질소포장~원산지 : 원산지 별도 표기 (상세 참고)~로스팅 : 빈브라더스로스터스~제조사 : (주)세이코커피코리아~포장 : 내포장(폴리에틸렌)/외포장(종이)~포장법 : 질소충전 | 개별포장~유통기한 : 제조일로부터 1년','자주 즐긴다면, 같은 커피를 실속있게.','X');

