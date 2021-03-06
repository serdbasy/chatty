--------------------------------------------------------
--  File created - Monday-October-30-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DELETED_MESSAGES
--------------------------------------------------------

  CREATE TABLE "CHATTY"."DELETED_MESSAGES" 
   (	"DELETED_MESSAGE_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"MESSAGE_ID" NUMBER, 
	"INSERT_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FRIENDSHIPS
--------------------------------------------------------

  CREATE TABLE "CHATTY"."FRIENDSHIPS" 
   (	"FRIENDSHIP_ID" NUMBER, 
	"FIRST_USER" NUMBER, 
	"SECOND_USER" NUMBER, 
	"STATUS" NUMBER(*,0), 
	"SEND_BY" NUMBER(*,0), 
	"INSERT_AT" TIMESTAMP (6), 
	"UPDATE_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GROUPS
--------------------------------------------------------

  CREATE TABLE "CHATTY"."GROUPS" 
   (	"GROUP_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"HASH" VARCHAR2(36 BYTE), 
	"IS_GROUP" NUMBER(*,0), 
	"STATUS" NUMBER(*,0), 
	"CREATED_BY" NUMBER, 
	"INSERT_AT" TIMESTAMP (6), 
	"UPDATE_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GROUP_USERS
--------------------------------------------------------

  CREATE TABLE "CHATTY"."GROUP_USERS" 
   (	"GROUP_USER_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"GROUP_ID" NUMBER, 
	"STATUS" NUMBER(*,0), 
	"INSERT_AT" TIMESTAMP (6), 
	"UPDATE_AT" TIMESTAMP (6), 
	"LAST_SEEN_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MESSAGES
--------------------------------------------------------

  CREATE TABLE "CHATTY"."MESSAGES" 
   (	"MESSAGE_ID" NUMBER, 
	"GROUP_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"CONTENT" CLOB, 
	"INSERT_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PHOTOS
--------------------------------------------------------

  CREATE TABLE "CHATTY"."PHOTOS" 
   (	"PHOTO_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"INSERT_AT" TIMESTAMP (6)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "CHATTY"."USERS" 
   (	"USER_ID" NUMBER, 
	"HASH" VARCHAR2(36 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PROFILE_PHOTO" NUMBER, 
	"FIRSTNAME" VARCHAR2(50 BYTE), 
	"LASTNAME" VARCHAR2(50 BYTE), 
	"GENDER" VARCHAR2(6 BYTE), 
	"ACTIVATION_AT" TIMESTAMP (6), 
	"INSERT_AT" TIMESTAMP (6), 
	"UPDATE_AT" TIMESTAMP (6), 
	"PASSWORD" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_SESSIONS
--------------------------------------------------------

  CREATE TABLE "CHATTY"."USER_SESSIONS" 
   (	"USER_ID" NUMBER, 
	"HASH" VARCHAR2(36 BYTE), 
	"INSERT_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence DELETED_MESSAGES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."DELETED_MESSAGES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence FRIENDSHIPS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."FRIENDSHIPS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence GROUPS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."GROUPS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence GROUP_USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."GROUP_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence GROUP_USERS_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."GROUP_USERS_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MESSAGES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."MESSAGES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 781 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PHOTOS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."PHOTOS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."USERS_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "CHATTY"."USERS_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;


--------------------------------------------------------
--  DDL for Index DELETED_MESSAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."DELETED_MESSAGES_PK" ON "CHATTY"."DELETED_MESSAGES" ("DELETED_MESSAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FRIENDSHIPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."FRIENDSHIPS_PK" ON "CHATTY"."FRIENDSHIPS" ("FRIENDSHIP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GROUPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."GROUPS_PK" ON "CHATTY"."GROUPS" ("GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GROUP_USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."GROUP_USERS_PK" ON "CHATTY"."GROUP_USERS" ("GROUP_USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MESSAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."MESSAGES_PK" ON "CHATTY"."MESSAGES" ("MESSAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PHOTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."PHOTOS_PK" ON "CHATTY"."PHOTOS" ("PHOTO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000082377C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."SYS_IL0000082377C00004$$" ON "CHATTY"."MESSAGES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHATTY"."USERS_PK" ON "CHATTY"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger DELETED_MESSAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."DELETED_MESSAGES_TRG" 
BEFORE INSERT ON DELETED_MESSAGES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.DELETED_MESSAGE_ID IS NULL THEN
      SELECT DELETED_MESSAGES_SEQ.NEXTVAL INTO :NEW.DELETED_MESSAGE_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."DELETED_MESSAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FRIENDSHIPS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."FRIENDSHIPS_TRG" 
BEFORE INSERT ON FRIENDSHIPS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.FRIENDSHIP_ID IS NULL THEN
      SELECT FRIENDSHIPS_SEQ.NEXTVAL INTO :NEW.FRIENDSHIP_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."FRIENDSHIPS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."GROUPS_TRG" 
BEFORE INSERT ON GROUPS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.GROUP_ID IS NULL THEN
      SELECT GROUPS_SEQ.NEXTVAL INTO :NEW.GROUP_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."GROUPS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUP_USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."GROUP_USERS_TRG" 
BEFORE INSERT ON GROUP_USERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."GROUP_USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUP_USERS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."GROUP_USERS_TRG1" 
BEFORE INSERT ON GROUP_USERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.GROUP_USER_ID IS NULL THEN
      SELECT GROUP_USERS_SEQ1.NEXTVAL INTO :NEW.GROUP_USER_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."GROUP_USERS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MESSAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."MESSAGES_TRG" 
BEFORE INSERT ON MESSAGES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MESSAGE_ID IS NULL THEN
      SELECT MESSAGES_SEQ.NEXTVAL INTO :NEW.MESSAGE_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."MESSAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PHOTOS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."PHOTOS_TRG" 
BEFORE INSERT ON PHOTOS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PHOTO_ID IS NULL THEN
      SELECT PHOTOS_SEQ.NEXTVAL INTO :NEW.PHOTO_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."PHOTOS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."USERS_TRG" 
BEFORE INSERT ON USERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CHATTY"."USERS_TRG1" 
BEFORE INSERT ON USERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.USER_ID IS NULL THEN
      SELECT USERS_SEQ2.NEXTVAL INTO :NEW.USER_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CHATTY"."USERS_TRG1" ENABLE;
--------------------------------------------------------
--  Constraints for Table DELETED_MESSAGES
--------------------------------------------------------

  ALTER TABLE "CHATTY"."DELETED_MESSAGES" MODIFY ("DELETED_MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."DELETED_MESSAGES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."DELETED_MESSAGES" MODIFY ("MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."DELETED_MESSAGES" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."DELETED_MESSAGES" ADD CONSTRAINT "DELETED_MESSAGES_PK" PRIMARY KEY ("DELETED_MESSAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FRIENDSHIPS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."FRIENDSHIPS" MODIFY ("FRIENDSHIP_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."FRIENDSHIPS" MODIFY ("FIRST_USER" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."FRIENDSHIPS" MODIFY ("SECOND_USER" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."FRIENDSHIPS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."FRIENDSHIPS" MODIFY ("SEND_BY" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."FRIENDSHIPS" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."FRIENDSHIPS" ADD CONSTRAINT "FRIENDSHIPS_PK" PRIMARY KEY ("FRIENDSHIP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUPS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."GROUPS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUPS" MODIFY ("HASH" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUPS" MODIFY ("IS_GROUP" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUPS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUPS" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUPS" ADD CONSTRAINT "GROUPS_PK" PRIMARY KEY ("GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_USERS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."GROUP_USERS" MODIFY ("GROUP_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUP_USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUP_USERS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUP_USERS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUP_USERS" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."GROUP_USERS" ADD CONSTRAINT "GROUP_USERS_PK" PRIMARY KEY ("GROUP_USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MESSAGES
--------------------------------------------------------

  ALTER TABLE "CHATTY"."MESSAGES" MODIFY ("MESSAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."MESSAGES" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."MESSAGES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."MESSAGES" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."MESSAGES" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."MESSAGES" ADD CONSTRAINT "MESSAGES_PK" PRIMARY KEY ("MESSAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHOTOS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."PHOTOS" MODIFY ("PHOTO_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."PHOTOS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."PHOTOS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."PHOTOS" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."PHOTOS" ADD CONSTRAINT "PHOTOS_PK" PRIMARY KEY ("PHOTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" MODIFY ("HASH" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" MODIFY ("INSERT_AT" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CHATTY"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_SESSIONS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."USER_SESSIONS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USER_SESSIONS" MODIFY ("HASH" NOT NULL ENABLE);
  ALTER TABLE "CHATTY"."USER_SESSIONS" MODIFY ("INSERT_AT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DELETED_MESSAGES
--------------------------------------------------------

  ALTER TABLE "CHATTY"."DELETED_MESSAGES" ADD CONSTRAINT "DELETED_MESSAGES_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "CHATTY"."DELETED_MESSAGES" ADD CONSTRAINT "DELETED_MESSAGES_FK2" FOREIGN KEY ("MESSAGE_ID")
	  REFERENCES "CHATTY"."MESSAGES" ("MESSAGE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRIENDSHIPS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."FRIENDSHIPS" ADD CONSTRAINT "FRIENDSHIPS_FK1" FOREIGN KEY ("FIRST_USER")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "CHATTY"."FRIENDSHIPS" ADD CONSTRAINT "FRIENDSHIPS_FK2" FOREIGN KEY ("SECOND_USER")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUPS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."GROUPS" ADD CONSTRAINT "GROUPS_FK1" FOREIGN KEY ("CREATED_BY")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_USERS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."GROUP_USERS" ADD CONSTRAINT "GROUP_USERS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "CHATTY"."GROUP_USERS" ADD CONSTRAINT "GROUP_USERS_FK2" FOREIGN KEY ("GROUP_ID")
	  REFERENCES "CHATTY"."GROUPS" ("GROUP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHOTOS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."PHOTOS" ADD CONSTRAINT "PHOTOS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."USERS" ADD CONSTRAINT "USERS_FK1" FOREIGN KEY ("PROFILE_PHOTO")
	  REFERENCES "CHATTY"."PHOTOS" ("PHOTO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_SESSIONS
--------------------------------------------------------

  ALTER TABLE "CHATTY"."USER_SESSIONS" ADD CONSTRAINT "USER_SESSIONS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CHATTY"."USERS" ("USER_ID") ENABLE;
