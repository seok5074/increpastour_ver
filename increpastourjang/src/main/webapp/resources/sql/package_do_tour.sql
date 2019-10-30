CREATE DATABASE IF NOT EXISTS increpastour;

use increpastour;

DROP TABLE IF EXISTS package_do_tour;
create table package_do_tour(
do_idx int auto_increment, # 일련번호 
do_name varchar(150) not null, # 패키지 이름
do_start_date date, # 패키지 여행 시작하는 일 
do_end_date date, # 패키지 여행 끝나는 일
do_total int, # 예) 2019-09-25 ~ 2019-09-30 총 기간 5일 
do_image varchar(300), # 패키지 여행 사진 경로 
do_thumbnail varchar(300), # 썸네일
do_contents longtext, # 패키지 여행 상세 설명 컨텐츠
do_start varchar(300) not null, # 출발 위치 
do_arrive varchar(300) not null, # 도착 위치 
do_region varchar(300) not null, #지역이름
do_bus boolean, # 버스
do_busclass varchar(100), # 소형버스 / 대형버스 / 고급버스
do_air boolean, #  비행기
do_airclass varchar(100), # 프리미엄 급, 이코노미 급 등 
do_hotel_class varchar(100), # 호텔 5성, 4성 등
do_busagency varchar(200), # 버스 회사 예) 대한 항공, 아시아나 
do_airagency varchar(200), # 비행기 회사 예) 대한 항공, 아시아나 
do_theme varchar(100), # 테마 에) 신혼여행 
do_price int not null, # 패키지 금액 
do_status varchar(100), # 현재 상태 예) 예매 가능, 예매 불가능, 인원이 모두 참. 
do_free boolean, # 자유 일정 가능, 불가능
do_shopping boolean, # 쇼핑 가능, 불가능
do_manager varchar(50), # 패키지 담당자
dor_seatno int ,# 좌석 번호
constraint do_idx_pk primary key(do_idx)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


commit;
insert into package_do_tour 
values(1, "전주 패키지여행 ", '2019-10-01', '2019-10-06', 5, 'resources/images/do_test.jpg', 'resources/images/do_test.jpg', '전주 한옥마을 과 전주의 한식투어! 역사와 전통이 있는 전주', '서울', '전주','전라북도',true, '프리미엄', false,'프리미엄',
'4성급', '동양고속','동양고속','효자여행', 800000, '예매가능',true, true, '매니저', 12);
insert into package_do_tour 
values(2, "서울 패키지여행 ", '2019-10-01', '2019-10-06', 5, 'resources/images/do_test.jpg', 'resources/images/do_test.jpg', '서울을 왜가니 그시간 그돈으로 든든한 국밥을 먹지말지', '전주', '서울','서울특별시',true, '프리미엄', false,'프리미엄',
'5성급', '금호고속','금호고속','창렬여행', 1000000, '예매가능',true, true, '매니저', 12);
insert into package_do_tour 
values(3, "무주 패키지여행 ", '2019-10-01', '2019-10-06', 5, 'resources/images/do_test.jpg', 'resources/images/do_test.jpg', '겨울에 갈만한데 여름에 왜갈까?? 하지만 여기는 여름도 간다', '서울', '전주','전라북도',true, '프리미엄', false,'프리미엄',
'3성급', '금호고속','금호고속','창렬여행', 1000000, '예매가능',false, true, '매니저', 12);

insert into package_do_tour(do_name,do_start_date,do_end_date,do_total,do_image,do_thumbnail,do_contents,do_start,do_arrive,do_region,do_bus,do_busclass,do_air,do_airclass,do_hotel_class,
									do_busagency,do_airagency,do_theme,do_price,do_status,do_free,do_shopping,do_manager,dor_seatno)
                                    values("남산 패키지여행 ", '2019-10-01', '2019-10-06', 5, 'resources/images/namsantower.jpg', 'resources/images/namsantower.jpg', '거즘 지갑털러 서울가지??', '인원충당시', '서울','서울특별시',true, '프리미엄', false,'프리미엄',
											'3성급', '금호고속','금호고속','창렬여행', 300000, '예매가능',false, true, '매니저', 12);


select * from package_do_tour;
commit;
update package_do_tour set do_thumbnail ="resources/images/do_test.jpg" where do_idx =3;
update package_do_tour set do_thumbnail ="resources/images/namsantower.jpg" where do_idx =14;

DELETE FROM package_do_tour WHERE do_idx = 3;

SELECT * FROM package_do_tour WHERE do_region="전라북도";

SELECT 
			do_name
		 FROM package_do_tour 
		 WHERE do_region= "전라북도";

select do_region, length(do_region) from package_do_tour;
select length(do_region) from package_do_tour;

commit;

# 좌표값 csv

-- table 구조 
DROP TABLE IF EXISTS emp;
CREATE TABLE emp ( 
idx INT NOT NULL AUTO_INCREMENT, # 번호
area VARCHAR(255),	# 지역
location_lat DECIMAL(16,8),	# 위도	
location_lng DECIMAL(16,8),	# 경도
PRIMARY KEY (idx)	# 주요키
);
select * from emp;
commit;
# import csv 파일 읽어오기
insert into emp 
values(1,"seoul",37.5594581,126.9753244);