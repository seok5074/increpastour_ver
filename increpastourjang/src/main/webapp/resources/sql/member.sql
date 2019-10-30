CREATE DATABASE IF NOT EXISTS increpastour;
drop database IF EXISTS increpastour;
use increpastour;

# 테이블 생성
DROP TABLE IF EXISTS member;
CREATE TABLE IF NOT EXISTS member(
	member_idx int auto_increment, # 일련번호 
    member_name VARCHAR(10) NOT NULL, # 이름
	member_id VARCHAR(20) unique, # 아이디
	member_pass VARCHAR(20) NOT NULL, # 비밀번호
    member_birth VARCHAR(14) NOT NULL, # 주민번호 
	member_email VARCHAR(30) NOT NULL, # 메일
	member_phon VARCHAR(13) NOT NULL, # 전화번호
	member_zipcode VARCHAR(5) NOT NULL, # 우편번호
	member_address1 VARCHAR(80) NOT NULL, # 상세주소
    member_gender VARCHAR(4) NOT NULL, # 성별
    member_point int(100) null default 0, # 포인트
	member_email_get VARCHAR(1), # 이메일 수신여부
	member_reg_date TIMESTAMP NOT NULL, # 가입날짜
	member_admin VARCHAR(3) NOT NULL, # 관리자 여부 
    constraint member_idx_pk primary key(member_idx)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


# 회원 정보 추가
INSERT INTO member VALUES('1','관리자', 'admin', '1234', '930808-1234567',
'midastop@naver.com', '010-1234-5678', '14409',
'경기 부천시 오정구 수주로 18 (고강동, 동문미도아파트)', '남', 0 , '1', '2016-06-06 12:10:30' , '관리자' );
INSERT INTO member VALUES('admin', '이순신', '1234',
'midastop1@naver.com', '010-4321-8765', '08292',
'서울 구로구 구로중앙로34길 33-4(구로동, 영림빌딩)', '경영기술개발원 교육센터 1층 교무실',
'02-5678-4325', '0', '2016-05-11 11:20:50');
INSERT INTO member VALUES('servlet', '강감찬', '1234',
'midas@daum.net', '010-5687-5678', '06043',
'서울 강남구 강남대로146길 28 (논현동, 논현아파트)', '논현신동아파밀리에아파트 103동 302호',
'02-5326-5678', '1', '2016-06-05 12:10:30');
commit;
SELECT * FROM member;
