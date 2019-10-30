CREATE DATABASE IF NOT EXISTS increpastour;
drop database IF EXISTS increpastour;
use increpastour;

DROP TABLE IF EXISTS package_tour;
create table package_tour(
package_tour_idx int auto_increment, # 일련번호 
package_tour_name varchar(150) not null, # 패키지 이름
package_tour_start_date date, # 패키지 여행 시작하는 일 
package_tour_end_date date, # 패키지 여행 끝나는 일
package_tour_total int, # 예) 2019-09-25 ~ 2019-09-30 총 기간 5일 
package_tour_image varchar(300), # 패키지 여행 사진 경로 
package_tour_thumbnail varchar(300), # 썸네일
package_tour_contents longtext, # 패키지 여행 상세 설명 컨텐츠
package_tour_start varchar(300) not null, # 출발 위치 
package_tour_arrive varchar(300) not null, # 도착 위치 
package_tour_natname varchar(100), # 나라 이름 예) 대한민국, 중국, 일본, 러시아
package_tour_class varchar(100), # 프리미엄 급, 이코노미 급 등 
package_tour_hotel_class varchar(100), # 호텔 5성, 4성 등
package_tour_agency varchar(200), # 비행기 회사 예) 대한 항공, 아시아나 
package_tour_theme varchar(100), # 테마 에) 신혼여행 
package_tour_price int not null, # 패키지 금액 
package_tour_status varchar(100), # 현재 상태 예) 예매 가능, 예매 불가능, 인원이 모두 참. 
package_tour_free varchar(50), # 자유 일정 가능, 불가능
package_tour_shopping varchar(50), # 쇼핑 가능, 불가능
package_tour_manager varchar(50), # 패키지 담당자
package_tour_waypoint varchar(100), # 경유지
package_tour_seatno int, # 좌석 번호
constraint package_tour_idx_pk primary key(package_tour_idx)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

commit;

insert into package_tour
values(1, "마카오 허니문 패키지", '2019-09-25', '2019-09-30', 5, 'c:\\test.jpg', 'c:\\test.jpg', '콘텐츠 내용란', '서울/경기/인천', '마카오', '중국', '프리미엄',
'5성급', '가나다라항공', '허니문', 1234567, '예매가능', '자유 시간 있음', '쇼핑 시간 있음', '매니저', '경유지', 12);

delete from package_tour where package_tour_idx = 1;

commit;

select * from package_tour;
commit;