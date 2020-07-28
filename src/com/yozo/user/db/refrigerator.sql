DROP TABLE REFRIGERATOR;
DROP TABLE REFRIGERATOR CASCADE CONSTRAINTS;

CREATE TABLE REFRIGERATOR(
	REFRIGERATOR_NO NUMBER PRIMARY KEY,
	MEMBER_ID VARCHAR2(20),
	REFRIGERATOR_MATERIAL VARCHAR2(4000) NOT NULL,
	CONSTRAINT REF_FK_MEMBER_ID FOREIGN KEY(MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
	ON DELETE CASCADE
);