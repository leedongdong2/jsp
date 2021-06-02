CREATE TABLE matchgesi (
serial integer NOT NULL,
mid varchar2(100) NOT null,
nal DATE NOT NULL,
title varchar2(1000) NOT null,
matching varchar2(40) NOT null,
loca varchar2(30) NOT null,
tier varchar2(5) NOT null,
doc varchar2(4000) NOT null
);

CREATE SEQUENCE matgesi_seq;
DROP SEQUENCE matgesi_seq;
DROP TABLE matchgesi;


DECLARE
BEGIN  FOR i IN 1..100  
LOOP  
INSERT INTO matchgesi(serial,mid,nal,title,matching,loca,tier,doc) VALUES(matgesi_seq.nextval,'hong' ,sysdate,'어디서 같이하실분 구해요~~','3vs3','서울/경기','상','가ㅐㄹ닺대라재랒대람재같이냉ㄹ맨아랜마해쇼ㅣㄹ분');
END LOOP;
END ;



SELECT * FROM matchgesi WHERE mid LIKE ' '; 
SELECT * FROM matchgesi;














SELECT count(serial) FROM matchgesi ;


SELECT rno,serial,mid,nal,title,matching,loca,tier,doc FROM (
 SELECT rownum rno, m.serial,m.mid,TO_CHAR(m.nal,'yy/mm/dd') nal,m.title,m.matching,m.loca,m.tier,m.doc from(
  SELECT * FROM matchgesi ORDER BY nal desc
 )m
)where rno between 1 and 10; 
