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
    category varchar2(15) default '��å����',
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
values(seq_commu_reviewBoard.nextval, '�׽�Ʈ ����', '�׽�Ʈ ����', '����001');

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

insert into policy_list values ('�߾Ӻ�ó', '���������������', '�������');
insert into policy_list values ('�߾Ӻ�ó', '��Ȱ������', '�ڷγ�19');
insert into policy_list values ('�߾Ӻ�ó', 'û�� ��ü�ǰ� ������ Ȯ��', '��Ȱ����');
insert into policy_list values ('�߾Ӻ�ó', 'û�� �ְű޿� �и�����', '�ְű���');
insert into policy_list values ('����', '����� û�����', '�������');
insert into policy_list values ('����', '������ ���� ���ڸ�', '�������');
insert into policy_list values ('����', 'û�� ���� ����', '�ְű���');
insert into policy_list values ('����', '���û��â�����͡� ����', 'â������');
insert into policy_list values ('�λ�', 'û�������������', '�ְű���');
insert into policy_list values ('�λ�', '�λ�â��ī�� �', 'â������');
insert into policy_list values ('�λ�', '�λ� �帲����Ʈ ����', '�ְű���');
insert into policy_list values ('�λ�', '������ û�����ڸ� ���� ������Ʈ', '�������');
insert into policy_list values ('���', '���û�� ������ڸ�', '�������');
insert into policy_list values ('���', '�һ���� û�����б�', 'â������');
insert into policy_list values ('���', '��⵵ û���������', '�ְű���');
insert into policy_list values ('���', 'û�� �������� ����뿩', '��Ȱ����');
insert into policy_list values ('���', 'û��Ű����', '�������');
insert into policy_list values ('���', '��ŸƮ�� û�����ڸ� �������', 'â������');
insert into policy_list values ('���', '����ູ��ȥ����', '�ְű���');
insert into policy_list values ('���', '1839 û��â��������Ʈ', '��Ȱ����');
insert into policy_list values ('�泲', 'û����å���� ��ī����', 'â������');
insert into policy_list values ('�泲', '�泲�� �� �ູ�� ���� ����', '�ְű���');
insert into policy_list values ('�泲', '�泲 ������ ���� ���', '�泲', '��Ȱ����');
insert into policy_list values ('�泲', '��Ȱ����', '����û�� �������� �������', '��Ȱ����');
insert into policy_list values ('����', '���� ���л� ��������', '�������');
insert into policy_list values ('����', 'â���޳��� ���ȭ ����', 'â������');
insert into policy_list values ('����', '����Ͽ콺 ����������', '�ְű���');
insert into policy_list values ('����', '���� ������ �������', '��Ȱ����');
insert into policy_list values ('�泲', '�泲�� �������ڸ����', '�������');
insert into policy_list values ('�泲', 'û�� ������Ʈ �������', '�������');
insert into policy_list values ('�泲', '�泲��ŸƮ�� û��ä�� ������', 'â������');
insert into policy_list values ('�泲', '�泲 û�����ü Ȱ��ȭ ���', '��Ȱ����');

commit;
