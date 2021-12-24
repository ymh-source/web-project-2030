create table member(
id VARCHAR2(100) NOT NULL primary key,
password VARCHAR2(100) NOT NULL,
nickname VARCHAR2(100) NOT NULL,
permission number DEFAULT 0, 
session_key VARCHAR2(100) DEFAULT 'none',
session_limit date,
user_img VARCHAR2(100) DEFAULT '${pageContext.request.contextPath}/resources/img/user.svg}',
join_date date DEFAULT sysdate
);



create table commu_reviewBoard(
    postNum number(6),
    category varchar2(15) default '정책수다',
    title varchar2(150) not null,
    text varchar2(2000) not null,
    nickName varchar2(30) not null,
    regDate date default sysdate,
    watcher number(6) default 0,
    up number(6) default 0,
    down number(6) default 0,
    reply number(6) default 0,
    fileName varchar2(500),
    constraint pk_commu_reviewBoard_postNum primary key(postNum)
);

create sequence seq_commu_reviewBoard;

insert into commu_reviewBoard(postNum, title, text, nickName)
values(seq_commu_reviewBoard.nextval, '테스트 제목', '테스트 내용', '유저001');

insert into commu_reviewBoard(postNum, title, text, nickName)
(select seq_commu_reviewBoard.nextval, title, text, nickName from commu_reviewBoard);



create table commu_review_post_comment(
    postNum number(6),
    commentNum number(6),
    nickName varchar2(30) not null,
    text varchar2(2000) not null,
    regDate date default sysdate,
    constraint fk_comment_postNum foreign key(postNum) references commu_reviewBoard(postNum),
    constraint pk_commentNum primary key(postNum)
);

create sequence seq_commu_review_post_comment;



create table policy_list(
dept VARCHAR2(50),
title VARCHAR2(50),
category varchar2(50)
);

insert into policy_list values ('중앙부처', '국민취업지원제도', '취업지원');
insert into policy_list values ('중앙부처', '생활지원비', '코로나19');
insert into policy_list values ('중앙부처', '청년 신체건강 인프라 확대', '생활복지');
insert into policy_list values ('중앙부처', '청년 주거급여 분리지급', '주거금융');
insert into policy_list values ('서울', '서울시 청년수당', '취업지원');
insert into policy_list values ('서울', '서울형 뉴딜 일자리', '취업지원');
insert into policy_list values ('서울', '청년 월세 지원', '주거금융');
insert into policy_list values ('서울', '서울「청년창업꿈터」 지원', '창업지원');
insert into policy_list values ('부산', '청년희망날개통장', '주거금융');
insert into policy_list values ('부산', '부산창업카페 운영', '창업지원');
insert into policy_list values ('부산', '부산 드림아파트 공급', '주거금융');
insert into policy_list values ('부산', '디지털 청년일자리 육성 프로젝트', '취업지원');
insert into policy_list values ('경기', '경기청년 희망일자리', '취업지원');
insert into policy_list values ('경기', '소상공인 청년사관학교', '창업지원');
insert into policy_list values ('경기', '경기도 청년면접수당', '주거금융');
insert into policy_list values ('경기', '청년 면접정장 무료대여', '생활복지');
insert into policy_list values ('충북', '청년키움스쿨', '취업지원');
insert into policy_list values ('충북', '스타트업 청년일자리 지원사업', '창업지원');
insert into policy_list values ('충북', '충북행복결혼공제', '주거금융');
insert into policy_list values ('충북', '1839 청년창업프로젝트', '생활복지');
insert into policy_list values ('충남', '청년정책공감 아카데미', '창업지원');
insert into policy_list values ('충남', '충남형 더 행복한 주택 공급', '주거금융');
insert into policy_list values ('충남', '충남 면접비 지원 사업', '충남', '생활복지');
insert into policy_list values ('충남', '생활복지', '지역청년 멘토육성 지원사업', '생활복지');
insert into policy_list values ('전북', '전북 대학생 직무인턴', '취업지원');
insert into policy_list values ('전북', '창업꿈나무 사업화 지원', '창업지원');
insert into policy_list values ('전북', '희망하우스 빈집재생사업', '주거금융');
insert into policy_list values ('전북', '전북 면접비 지원사업', '생활복지');
insert into policy_list values ('경남', '경남형 뉴딜일자리사업', '취업지원');
insert into policy_list values ('경남', '청년 프로젝트 지원사업', '취업지원');
insert into policy_list values ('경남', '경남스타트업 청년채용 연계사업', '창업지원');
insert into policy_list values ('경남', '경남 청년공동체 활성화 사업', '생활복지');

commit;
