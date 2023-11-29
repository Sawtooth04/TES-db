/*
 Navicat Premium Data Transfer

 Source Server         : PostgreSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 150001
 Source Host           : localhost:5432
 Source Catalog        : tes
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001
 File Encoding         : 65001

 Date: 29/11/2023 12:04:28
*/


-- ----------------------------
-- Sequence structure for Customer_customerID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Customer_customerID_seq";
CREATE SEQUENCE "public"."Customer_customerID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Role_roleID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Role_roleID_seq";
CREATE SEQUENCE "public"."Role_roleID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomCustomerMessageRecipient_roomCustomerMessageRecipientID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomCustomerMessageRecipient_roomCustomerMessageRecipientID_seq";
CREATE SEQUENCE "public"."RoomCustomerMessageRecipient_roomCustomerMessageRecipientID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomCustomerMessage_roomCustomerMessageID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomCustomerMessage_roomCustomerMessageID_seq";
CREATE SEQUENCE "public"."RoomCustomerMessage_roomCustomerMessageID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomCustomerPost_roomPostID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomCustomerPost_roomPostID_seq";
CREATE SEQUENCE "public"."RoomCustomerPost_roomPostID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomCustomerRole_roomCustomerRoleID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomCustomerRole_roomCustomerRoleID_seq";
CREATE SEQUENCE "public"."RoomCustomerRole_roomCustomerRoleID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomCustomer_roomCustomerID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomCustomer_roomCustomerID_seq";
CREATE SEQUENCE "public"."RoomCustomer_roomCustomerID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomCustomer_variant_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomCustomer_variant_seq";
CREATE SEQUENCE "public"."RoomCustomer_variant_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomRole_roomRoleID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomRole_roomRoleID_seq";
CREATE SEQUENCE "public"."RoomRole_roomRoleID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomSolution_roomSolutionID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomSolution_roomSolutionID_seq";
CREATE SEQUENCE "public"."RoomSolution_roomSolutionID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomTaskComment_roomTaskCommentID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomTaskComment_roomTaskCommentID_seq";
CREATE SEQUENCE "public"."RoomTaskComment_roomTaskCommentID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomTaskVariant_roomTaskVariantID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomTaskVariant_roomTaskVariantID_seq";
CREATE SEQUENCE "public"."RoomTaskVariant_roomTaskVariantID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for RoomTask_roomTaskID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."RoomTask_roomTaskID_seq";
CREATE SEQUENCE "public"."RoomTask_roomTaskID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Room_roomID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Room_roomID_seq";
CREATE SEQUENCE "public"."Room_roomID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."Customer";
CREATE TABLE "public"."Customer" (
  "customerID" int4 NOT NULL DEFAULT nextval('"Customer_customerID_seq"'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default",
  "passwordHash" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "roleID" int4
)
;

-- ----------------------------
-- Records of Customer
-- ----------------------------
INSERT INTO "public"."Customer" VALUES (6, 'zalupa', '$2a$10$bft2fzlgly/2ekNn5kz8Q.4YWFHDYdpXUi6hx/0n31G554JhiivAW', 'idinaxui', 4);
INSERT INTO "public"."Customer" VALUES (8, 'Sawtooth', '$2a$10$.6QS9ezRz6WSo5NMZkhoyetJVDyBASPXMkQXNDJ.1ZH4DpDp2gq/G', 'andrey.y96@mail.ru', 4);
INSERT INTO "public"."Customer" VALUES (9, 'gfhj', '$2a$10$9Ku2MzpDcy2FrSioImUDte3m4ZbNa7.5Qgt9KItZt1Ja7GR0z.jrG', 'ghhj', 4);
INSERT INTO "public"."Customer" VALUES (10, 'test', '$2a$10$UA3fLsr29i3JyNh4ztm/B.JkNXW2zcgtFgbZx2IA7uZ4fDoZSl9Xq', 'aaaaa', 4);

-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE IF EXISTS "public"."Role";
CREATE TABLE "public"."Role" (
  "roleID" int4 NOT NULL DEFAULT nextval('"Role_roleID_seq"'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Role
-- ----------------------------
INSERT INTO "public"."Role" VALUES (4, 'user');
INSERT INTO "public"."Role" VALUES (5, 'admin');

-- ----------------------------
-- Table structure for Room
-- ----------------------------
DROP TABLE IF EXISTS "public"."Room";
CREATE TABLE "public"."Room" (
  "roomID" int4 NOT NULL DEFAULT nextval('"Room_roomID_seq"'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "ownerID" int4 NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "color" int4,
  "backgroundPath" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Room
-- ----------------------------
INSERT INTO "public"."Room" VALUES (15, 'Test Room 1', 6, 'Test room description. Hello world!', -14211289, 'D:\TES\backgrounds/15.jpg');

-- ----------------------------
-- Table structure for RoomCustomer
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomCustomer";
CREATE TABLE "public"."RoomCustomer" (
  "roomCustomerID" int4 NOT NULL DEFAULT nextval('"RoomCustomer_roomCustomerID_seq"'::regclass),
  "roomID" int4,
  "customerID" int4,
  "variant" int4 NOT NULL DEFAULT nextval('"RoomCustomer_variant_seq"'::regclass)
)
;

-- ----------------------------
-- Records of RoomCustomer
-- ----------------------------
INSERT INTO "public"."RoomCustomer" VALUES (5, 15, 6, 1);
INSERT INTO "public"."RoomCustomer" VALUES (6, 15, 8, 2);
INSERT INTO "public"."RoomCustomer" VALUES (9, 15, 10, 8);

-- ----------------------------
-- Table structure for RoomCustomerMessage
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomCustomerMessage";
CREATE TABLE "public"."RoomCustomerMessage" (
  "roomCustomerMessageID" int4 NOT NULL DEFAULT nextval('"RoomCustomerMessage_roomCustomerMessageID_seq"'::regclass),
  "roomCustomerID" int4,
  "roomTaskID" int4,
  "sent" timestamp(6),
  "text" varchar(300) COLLATE "pg_catalog"."default",
  "isRead" bool
)
;

-- ----------------------------
-- Records of RoomCustomerMessage
-- ----------------------------
INSERT INTO "public"."RoomCustomerMessage" VALUES (15, 5, 1, '2023-11-18 22:19:19.566543', 'Ya eby? Smotri gde sam nakosyachil', 't');
INSERT INTO "public"."RoomCustomerMessage" VALUES (16, 5, 1, '2023-11-18 22:25:41.158212', 'Xarosh, krasavchik', 't');
INSERT INTO "public"."RoomCustomerMessage" VALUES (17, 5, 15, '2023-11-23 17:37:19.493323', 'Prinyato', 't');

-- ----------------------------
-- Table structure for RoomCustomerMessageRecipient
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomCustomerMessageRecipient";
CREATE TABLE "public"."RoomCustomerMessageRecipient" (
  "roomCustomerMessageRecipientID" int4 NOT NULL DEFAULT nextval('"RoomCustomerMessageRecipient_roomCustomerMessageRecipientID_seq"'::regclass),
  "roomCustomerMessageID" int4,
  "roomCustomerID" int4
)
;

-- ----------------------------
-- Records of RoomCustomerMessageRecipient
-- ----------------------------

-- ----------------------------
-- Table structure for RoomCustomerPost
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomCustomerPost";
CREATE TABLE "public"."RoomCustomerPost" (
  "roomCustomerPostID" int4 NOT NULL DEFAULT nextval('"RoomCustomerPost_roomPostID_seq"'::regclass),
  "roomCustomerID" int4,
  "posted" timestamp(6),
  "text" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of RoomCustomerPost
-- ----------------------------
INSERT INTO "public"."RoomCustomerPost" VALUES (1, 5, '2023-10-22 23:09:18.571314', 'Test post. Hello world! 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (2, 5, '2023-10-22 23:09:18.571315', 'Test post. Hello world! 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (3, 5, '2023-10-23 22:15:20', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (4, 5, '2023-10-23 22:15:48', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (5, 5, '2023-10-23 22:15:55', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (6, 5, '2023-10-23 22:16:05', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (7, 5, '2023-10-23 22:16:13', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (8, 5, '2023-10-23 22:16:20', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (9, 5, '2023-10-23 22:16:28', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (10, 5, '2023-10-23 22:16:35', 'Test post. Hello world 1');
INSERT INTO "public"."RoomCustomerPost" VALUES (11, 5, '2023-10-23 22:16:42', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (12, 5, '2023-10-23 22:16:49', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (13, 5, '2023-10-23 22:16:55', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (14, 5, '2023-10-23 22:17:10', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (15, 5, '2023-10-23 22:17:18', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (16, 5, '2023-10-23 22:17:24', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (17, 5, '2023-10-23 22:17:29', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (18, 5, '2023-10-23 22:17:35', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (19, 5, '2023-10-23 22:17:44', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (20, 5, '2023-10-23 22:17:51', 'Test post. Hello world 2');
INSERT INTO "public"."RoomCustomerPost" VALUES (21, 5, '2023-10-23 22:18:00', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (22, 5, '2023-10-23 22:18:05', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (23, 5, '2023-10-23 22:18:11', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (24, 5, '2023-10-23 22:18:16', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (25, 5, '2023-10-23 22:18:23', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (26, 5, '2023-10-23 22:18:29', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (27, 5, '2023-10-23 22:18:36', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (28, 5, '2023-10-23 22:18:48', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (29, 5, '2023-10-23 22:18:54', 'Test post. Hello world 3');
INSERT INTO "public"."RoomCustomerPost" VALUES (30, 5, '2023-10-23 22:19:00', 'Test post. Hello world 3');

-- ----------------------------
-- Table structure for RoomCustomerRole
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomCustomerRole";
CREATE TABLE "public"."RoomCustomerRole" (
  "roomCustomerRoleID" int4 NOT NULL DEFAULT nextval('"RoomCustomerRole_roomCustomerRoleID_seq"'::regclass),
  "roomCustomerID" int4,
  "roomRoleID" int4
)
;

-- ----------------------------
-- Records of RoomCustomerRole
-- ----------------------------
INSERT INTO "public"."RoomCustomerRole" VALUES (1, 5, 2);
INSERT INTO "public"."RoomCustomerRole" VALUES (2, 6, 2);

-- ----------------------------
-- Table structure for RoomRole
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomRole";
CREATE TABLE "public"."RoomRole" (
  "roomRoleID" int4 NOT NULL DEFAULT nextval('"RoomRole_roomRoleID_seq"'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of RoomRole
-- ----------------------------
INSERT INTO "public"."RoomRole" VALUES (1, 'member');
INSERT INTO "public"."RoomRole" VALUES (2, 'teacher');

-- ----------------------------
-- Table structure for RoomSolution
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomSolution";
CREATE TABLE "public"."RoomSolution" (
  "roomSolutionID" int4 NOT NULL DEFAULT nextval('"RoomSolution_roomSolutionID_seq"'::regclass),
  "path" varchar(50) COLLATE "pg_catalog"."default",
  "isSuccessfullyTested" bool,
  "isAccepted" bool,
  "roomTaskID" int4,
  "roomCustomerID" int4
)
;

-- ----------------------------
-- Records of RoomSolution
-- ----------------------------

-- ----------------------------
-- Table structure for RoomTask
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomTask";
CREATE TABLE "public"."RoomTask" (
  "roomTaskID" int4 NOT NULL DEFAULT nextval('"RoomTask_roomTaskID_seq"'::regclass),
  "roomID" int4,
  "name" varchar(35) COLLATE "pg_catalog"."default",
  "description" varchar(500) COLLATE "pg_catalog"."default",
  "lastTerm" timestamp(6),
  "added" timestamp(6)
)
;

-- ----------------------------
-- Records of RoomTask
-- ----------------------------
INSERT INTO "public"."RoomTask" VALUES (1, 15, 'Test 1', 'Test task', '2023-09-25 03:00:00', '2023-10-01 19:48:41');
INSERT INTO "public"."RoomTask" VALUES (2, 15, 'Test 2', 'Test task', '2023-09-26 03:00:00', '2023-10-02 19:48:41');
INSERT INTO "public"."RoomTask" VALUES (3, 15, 'Test 3', 'Test task', '2023-09-27 03:00:00', '2023-10-03 19:52:33');
INSERT INTO "public"."RoomTask" VALUES (4, 15, 'Test 4', 'Test task', '2023-09-28 03:00:00', '2023-10-04 19:52:56');
INSERT INTO "public"."RoomTask" VALUES (5, 15, 'Test 5', 'Test task', '2023-09-29 03:00:00', '2023-10-05 19:53:16');
INSERT INTO "public"."RoomTask" VALUES (6, 15, 'Test 6', 'Test task', '2023-09-30 03:00:00', '2023-10-06 19:53:38');
INSERT INTO "public"."RoomTask" VALUES (7, 15, 'Test 7', 'Test task', '2023-10-01 13:42:26', '2023-10-07 13:42:52');
INSERT INTO "public"."RoomTask" VALUES (8, 15, 'Test 8', 'Test task', '2023-10-02 13:42:32', '2023-10-08 13:42:58');
INSERT INTO "public"."RoomTask" VALUES (9, 15, 'Test 9', 'Test task', '2023-10-03 13:42:36', '2023-10-09 13:43:02');
INSERT INTO "public"."RoomTask" VALUES (10, 15, 'Test 10', 'Test task', '2023-10-04 13:42:39', '2023-10-10 13:43:05');
INSERT INTO "public"."RoomTask" VALUES (11, 15, 'Test 11', 'Test task', '2023-10-05 13:42:43', '2023-10-11 13:43:08');
INSERT INTO "public"."RoomTask" VALUES (12, 15, 'Test 12', 'Test task', '2023-10-06 13:42:45', '2023-10-12 13:43:10');
INSERT INTO "public"."RoomTask" VALUES (13, 15, 'Test 13', 'Test task', '2023-10-07 13:42:49', '2023-10-13 13:43:14');
INSERT INTO "public"."RoomTask" VALUES (14, 15, 'Test task from room', 'fgdhhhhhhhhhhhhhhhhhhhhhhhhhhhfdgh', '2023-10-31 23:34:00', '2023-10-28 20:34:36.680936');
INSERT INTO "public"."RoomTask" VALUES (15, 15, 'Test taask', 'test task', '2023-11-25 20:25:00', '2023-11-23 17:26:05.424667');

-- ----------------------------
-- Table structure for RoomTaskComment
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomTaskComment";
CREATE TABLE "public"."RoomTaskComment" (
  "roomTaskCommentID" int4 NOT NULL DEFAULT nextval('"RoomTaskComment_roomTaskCommentID_seq"'::regclass),
  "roomTaskID" int4,
  "roomCustomerID" int4,
  "comment" varchar(155) COLLATE "pg_catalog"."default",
  "posted" timestamp(6)
)
;

-- ----------------------------
-- Records of RoomTaskComment
-- ----------------------------
INSERT INTO "public"."RoomTaskComment" VALUES (1, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-01 22:25:58');
INSERT INTO "public"."RoomTaskComment" VALUES (4, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-02 22:29:12');
INSERT INTO "public"."RoomTaskComment" VALUES (5, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-03 22:29:18');
INSERT INTO "public"."RoomTaskComment" VALUES (6, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-04 22:29:24');
INSERT INTO "public"."RoomTaskComment" VALUES (7, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-05 22:29:30');
INSERT INTO "public"."RoomTaskComment" VALUES (8, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-06 22:29:37');
INSERT INTO "public"."RoomTaskComment" VALUES (9, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-07 22:29:45');
INSERT INTO "public"."RoomTaskComment" VALUES (10, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-08 22:29:52');
INSERT INTO "public"."RoomTaskComment" VALUES (11, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-09 22:30:00');
INSERT INTO "public"."RoomTaskComment" VALUES (12, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-10 22:30:08');
INSERT INTO "public"."RoomTaskComment" VALUES (13, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-11 22:30:15');
INSERT INTO "public"."RoomTaskComment" VALUES (14, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-12 22:30:22');
INSERT INTO "public"."RoomTaskComment" VALUES (15, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-13 22:30:29');
INSERT INTO "public"."RoomTaskComment" VALUES (16, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-14 22:30:38');
INSERT INTO "public"."RoomTaskComment" VALUES (17, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-17 22:30:46');
INSERT INTO "public"."RoomTaskComment" VALUES (18, 1, 5, 'TestTestTestTestTestTestTestTestTestTest', '2023-11-18 22:30:54');
INSERT INTO "public"."RoomTaskComment" VALUES (30, 1, 5, 'TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest', '2023-11-30 22:32:20');
INSERT INTO "public"."RoomTaskComment" VALUES (31, 1, 6, 'sdfsdsdf', '2023-11-02 21:48:46.242504');
INSERT INTO "public"."RoomTaskComment" VALUES (32, 1, 6, 'zd2wsx3ec4rfr5vgst6bbyb7hnjkmi', '2023-11-03 22:10:54.124096');

-- ----------------------------
-- Table structure for RoomTaskVariant
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomTaskVariant";
CREATE TABLE "public"."RoomTaskVariant" (
  "roomTaskVariantID" int4 NOT NULL DEFAULT nextval('"RoomTaskVariant_roomTaskVariantID_seq"'::regclass),
  "roomTaskID" int4,
  "variant" int4,
  "path" varchar(50) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of RoomTaskVariant
-- ----------------------------
INSERT INTO "public"."RoomTaskVariant" VALUES (1, 1, 1, 'D:/TES/tasks/15/1/1', 'First variant of first task.');
INSERT INTO "public"."RoomTaskVariant" VALUES (4, 15, 1, 'D:/TES/tasks/15/15/1', 'Первый варик');

-- ----------------------------
-- Function structure for create_customer_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_customer_table"();
CREATE OR REPLACE FUNCTION "public"."create_customer_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "Customer" (
		"customerID" serial PRIMARY KEY,
		name varchar(30) UNIQUE,
		"passwordHash" varchar(255),
		email varchar(50),
		"roleID" int4,
		
		FOREIGN KEY ("roleID") REFERENCES "Role" ("roleID") ON UPDATE CASCADE ON DELETE RESTRICT
	);
	
	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_role_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_role_table"();
CREATE OR REPLACE FUNCTION "public"."create_role_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "Role" (
		"roleID" serial PRIMARY KEY,
		name varchar(30)
	);
	
	INSERT INTO "Role" (name) VALUES("user");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_customer_message_recipiend_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_customer_message_recipiend_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_customer_message_recipiend_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomCustomerMessageRecipient" (
		"roomCustomerMessageRecipientID" serial PRIMARY KEY,
		"roomCustomerMessageID" int4,
		"roomCustomerID" int4,
		
		FOREIGN KEY ("roomCustomerMessageID") REFERENCES "RoomCustomerMessage" ("roomCustomerMessageID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("roomCustomerID") REFERENCES "RoomCustomer" ("roomCustomerID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_customer_message_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_customer_message_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_customer_message_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomCustomerMessage" (
		"roomCustomerMessageID" serial PRIMARY KEY,
		"roomCustomerID" int4,
		"roomTaskID" int4,
		"sent" timestamp,
		"text" varchar(300),
		"isRead" bool,
		
		FOREIGN KEY ("roomCustomerID") REFERENCES "RoomCustomer" ("roomCustomerID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("roomTaskID") REFERENCES "RoomTask" ("roomTaskID") ON UPDATE CASCADE ON DELETE CASCADE);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_customer_post_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_customer_post_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_customer_post_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomCustomerPost" (
		"roomCustomerPostID" serial PRIMARY KEY,
		"roomCustomerID" int4,
		"posted" timestamp,
		"text" varchar(300),
		
		FOREIGN KEY ("roomCustomerID") REFERENCES "RoomCustomer" ("roomCustomerID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_customer_role_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_customer_role_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_customer_role_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomCustomerRole" (
		"roomCustomerRoleID" serial PRIMARY KEY,
		"roomCustomerID" int4 UNIQUE,
		"roomRoleID" int4,
		
		FOREIGN KEY ("roomCustomerID") REFERENCES "RoomCustomer" ("roomCustomerID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("roomRoleID") REFERENCES "RoomRole" ("roomRoleID") ON UPDATE CASCADE ON DELETE RESTRICT
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_customer_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_customer_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_customer_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomCustomer" (
		"roomCustomerID" serial PRIMARY KEY,
		"roomID" int4,
		"customerID" int4,
		"variant" serial,
		
		FOREIGN KEY ("roomID") REFERENCES "Room" ("roomID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("customerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_role_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_role_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_role_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomRole" (
		"roomRoleID" serial PRIMARY KEY,
		name varchar(30)
	);
	
	INSERT INTO "RoomRole" (name) VALUES('member');
	INSERT INTO "RoomRole" (name) VALUES('teacher');

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_solution_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_solution_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_solution_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomSolution" (
		"roomSolutionID" serial PRIMARY KEY,
		"roomTaskID" int4,
		"roomCustomerID" int4,
		"path" varchar(50),
		"isSuccessfullyTested" bool,
		"isAccepted" bool,
		
		FOREIGN KEY ("roomTaskID") REFERENCES "RoomTask" ("roomTaskID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("roomCustomerID") REFERENCES "RoomCustomer" ("roomCustomerID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "Room" (
		"roomID" serial PRIMARY KEY,
		name varchar(30),
		"ownerID" int4,
		"description" varchar(255),
		"color" int4 DEFAULT 81133197,
		"backgroundPath" varchar(200),
		
		CONSTRAINT room_name_owner_uniq UNIQUE(name, "ownerID"),
		FOREIGN KEY ("ownerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_task_comment_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_task_comment_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_task_comment_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN

	CREATE TABLE "RoomTaskComment" (
		"roomTaskCommentID" serial PRIMARY KEY,
		"roomTaskID" int4,
		"roomCustomerID" int4,
		"comment" varchar(155),
		"posted" timestamp,
		
		FOREIGN KEY ("roomTaskID") REFERENCES "RoomTask" ("roomTaskID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("roomCustomerID") REFERENCES "RoomCustomer" ("roomCustomerID") ON UPDATE CASCADE
			ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_task_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_task_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_task_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomTask" (
		"roomTaskID" serial PRIMARY KEY,
		"roomID" int4,
		"name" varchar(35),
		"description" varchar(500),
		"added" timestamp,
		"lastTerm" timestamp,
		
		FOREIGN KEY ("roomID") REFERENCES "Room" ("roomID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for create_room_task_variant_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_task_variant_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_task_variant_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomTaskVariant" (
		"roomTaskVariantID" serial PRIMARY KEY,
		"roomTaskID" int4,
		"variant" int4,
		"path" varchar(50),
		"description" varchar(255),
		
		FOREIGN KEY ("roomTaskID") REFERENCES "RoomTask" ("roomTaskID") ON UPDATE CASCADE ON DELETE CASCADE,
		CONSTRAINT room_task_path_uniq UNIQUE("roomTaskID", "path"),
		CONSTRAINT room_task_name_uniq UNIQUE("roomTaskID", "variant")
	);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_room_task_comment_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_room_task_comment_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."delete_room_task_comment_by_id"("id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	DELETE FROM "RoomTaskComment" WHERE "roomTaskCommentID" = "id";

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for delete_room_task_variant
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete_room_task_variant"("room_task_ID" int4, "task_variant" int4);
CREATE OR REPLACE FUNCTION "public"."delete_room_task_variant"("room_task_ID" int4, "task_variant" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN

	DELETE FROM "RoomTaskVariant" WHERE "roomTaskID" = "room_task_ID" AND "variant" = "task_variant";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_customer_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_by_id"("id" int4)
  RETURNS SETOF "public"."Customer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "Customer" WHERE "Customer"."customerID" = "id";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_customer_by_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_by_name"("customer_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_customer_by_name"("customer_name" varchar)
  RETURNS SETOF "public"."Customer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "Customer" WHERE "Customer"."name" = "customer_name";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_customer_own_rooms
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_own_rooms"("owner_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_own_rooms"("owner_id" int4)
  RETURNS SETOF "public"."Room" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "Room" WHERE "ownerID" = "owner_id";
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_customer_rooms
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_rooms"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_rooms"("id" int4)
  RETURNS SETOF "public"."Room" AS $BODY$BEGIN
  
  RETURN QUERY SELECT "Room"."roomID", "Room"."name", "Room"."ownerID", "Room"."description", "Room"."color", "Room"."backgroundPath" FROM "Room"
    LEFT JOIN "RoomCustomer" AS rc ON "Room"."roomID" = rc."roomID"
    WHERE rc."customerID" = "id";
  
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_customer_studying_rooms
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_studying_rooms"("customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_studying_rooms"("customer_id" int4)
  RETURNS SETOF "public"."Room" AS $BODY$BEGIN
  
  RETURN QUERY SELECT "Room"."roomID", "Room"."name", "Room"."ownerID", "Room"."description", "Room"."color", "Room"."backgroundPath" FROM "Room"
    LEFT JOIN "RoomCustomer" AS rc ON "Room"."roomID" = rc."roomID"
    WHERE rc."customerID" = "id" AND "ownerID" != "customer_id";
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_latest_room_tasks
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_latest_room_tasks"("room_id" int4, "room_customer_id" int4, "count" int4);
CREATE OR REPLACE FUNCTION "public"."get_latest_room_tasks"("room_id" int4, "room_customer_id" int4, "count" int4)
  RETURNS SETOF "public"."RoomTask" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomTask" AS rt WHERE "roomID" = "room_id"
		AND NOT EXISTS(SELECT * FROM "RoomSolution" AS rs WHERE rs."roomCustomerID" = "room_customer_id"
			AND rs."roomTaskID" = rt."roomTaskID"
			AND rs."isAccepted" = TRUE)
		ORDER BY "added" DESC LIMIT "count";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_role_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_role_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_role_by_id"("id" int4)
  RETURNS SETOF "public"."Role" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "Role" WHERE "Role"."roleID" = "id";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_background_path
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_background_path"("room_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_background_path"("room_id" int4)
  RETURNS "pg_catalog"."varchar" AS $BODY$BEGIN

	RETURN (SELECT "backgroundPath" FROM "Room" WHERE "roomID" = "room_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_room_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_by_id"("id" int4)
  RETURNS SETOF "public"."Room" AS $BODY$BEGIN

  RETURN QUERY SELECT * FROM "Room" WHERE "Room"."roomID" = "id";
  
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_color
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_color"("room_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_color"("room_id" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN

	RETURN (SELECT "color" FROM "Room" WHERE "roomID" = "room_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_room_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer"("room_id" int4, "customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer"("room_id" int4, "customer_id" int4)
  RETURNS SETOF "public"."RoomCustomer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomCustomer" WHERE "RoomCustomer"."customerID" = "customer_id" AND "roomID" = "room_id";

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customer_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_by_id"("id" int4)
  RETURNS SETOF "public"."RoomCustomer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomCustomer" WHERE "RoomCustomer"."roomCustomerID" = "id";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customer_messages
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_messages"("room_task_id" int4, "room_customer_id" int4, "start" int4, "messages_count" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_messages"("room_task_id" int4, "room_customer_id" int4, "start" int4, "messages_count" int4)
  RETURNS TABLE("roomCustomerMessageID" int4, "name" varchar, "text" varchar, "sent" timestamp, "own" bool, "isRead" bool) AS $BODY$
	DECLARE
		r record;
	BEGIN
	
	FOR r IN 
		SELECT * FROM "RoomCustomerMessage" AS rcm
			LEFT JOIN "RoomCustomerMessageRecipient" AS rcmr ON rcmr."roomCustomerMessageID" = rcm."roomCustomerMessageID"
			WHERE rcm."roomTaskID" = "room_task_id" AND rcmr."roomCustomerID" = "room_customer_id"
			ORDER BY "sent" DESC OFFSET "start" LIMIT "messages_count"
	LOOP
		UPDATE "RoomCustomerMessage" SET "isRead" = TRUE;
	END LOOP;

	RETURN QUERY SELECT rcm."roomCustomerMessageID", c."name", rcm."text", rcm."sent", rcm."roomCustomerID"
		= "room_customer_id", rcm."isRead"
		FROM "RoomCustomerMessageRecipient" AS rcmr
		LEFT JOIN "RoomCustomerMessage" AS rcm ON rcm."roomCustomerMessageID" = rcmr."roomCustomerMessageID"
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rcm."roomCustomerID"
		LEFT JOIN "Customer" AS c ON c."customerID" = rc."customerID"
	WHERE rcm."roomTaskID" = "room_task_id"
	AND (rcm."roomCustomerID" = "room_customer_id" OR rcmr."roomCustomerID" = "room_customer_id")
	ORDER BY "sent" ASC OFFSET "start" LIMIT "messages_count";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customer_messages_by_member_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_messages_by_member_id"("room_task_id" int4, "room_customer_id" int4, "member_id" int4, "start" int4, "messages_count" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_messages_by_member_id"("room_task_id" int4, "room_customer_id" int4, "member_id" int4, "start" int4, "messages_count" int4)
  RETURNS TABLE("roomCustomerMessageID" int4, "name" varchar, "text" varchar, "sent" timestamp, "own" bool, "isRead" bool) AS $BODY$
	DECLARE
		r record;
	BEGIN
	
	FOR r IN 
		SELECT * FROM "RoomCustomerMessage" AS rcm
			LEFT JOIN "RoomCustomerMessageRecipient" AS rcmr ON rcmr."roomCustomerMessageID" = rcm."roomCustomerMessageID"
			WHERE rcm."roomTaskID" = "room_task_id" AND rcmr."roomCustomerID" = "room_customer_id"
			ORDER BY "sent" DESC OFFSET "start" LIMIT "messages_count"
	LOOP
		UPDATE "RoomCustomerMessage" SET "isRead" = TRUE;
	END LOOP;

	RETURN QUERY SELECT rcm."roomCustomerMessageID", c."name", rcm."text", rcm."sent", rcm."roomCustomerID"
		= "room_customer_id", rcm."isRead"
		FROM "RoomCustomerMessageRecipient" AS rcmr
		LEFT JOIN "RoomCustomerMessage" AS rcm ON rcm."roomCustomerMessageID" = rcmr."roomCustomerMessageID"
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rcm."roomCustomerID"
		LEFT JOIN "Customer" AS c ON c."customerID" = rc."customerID"
	WHERE rcm."roomTaskID" = "room_task_id"
	AND (rcm."roomCustomerID" = "member_id" OR rcmr."roomCustomerID" = "member_id")
	ORDER BY "sent" ASC OFFSET "start" LIMIT "messages_count";
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customer_post_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_post_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_post_by_id"("id" int4)
  RETURNS SETOF "public"."RoomCustomerPost" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomCustomerPost" WHERE "roomCustomerPostID" = "id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customer_posts
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_posts"("room_id" int4, "start" int4, "posts_count" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_posts"("room_id" int4, "start" int4, "posts_count" int4)
  RETURNS TABLE("roomCustomerPostID" int4, "roomCustomerID" int4, "posted" timestamp, "text" varchar, "customerID" int4, "name" varchar) AS $BODY$BEGIN

	RETURN QUERY SELECT rcp."roomCustomerPostID", rcp."roomCustomerID", rcp."posted", rcp."text", cu."customerID", cu."name"
		FROM "RoomCustomerPost" AS rcp
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rcp."roomCustomerID"
		LEFT JOIN "Customer" AS cu ON rc."customerID" = cu."customerID"
		WHERE rc."roomID" = "room_id" 
		ORDER BY "posted" DESC OFFSET "start" LIMIT "posts_count";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customer_role_by_customer_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_role_by_customer_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_role_by_customer_id"("id" int4)
  RETURNS SETOF "public"."RoomCustomerRole" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomCustomerRole" WHERE "roomCustomerID" = "id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_customers_by_role_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customers_by_role_id"("room_id" int4, "role_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customers_by_role_id"("room_id" int4, "role_id" int4)
  RETURNS SETOF "public"."Customer" AS $BODY$BEGIN

	RETURN QUERY SELECT c."customerID", c."name", c."passwordHash", c."email", c."roleID" FROM "RoomCustomerRole" AS rcr 
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rcr."roomCustomerID"
		LEFT JOIN "Customer" AS c on c."customerID" = rc."customerID"
		WHERE rcr."roomRoleID" = "role_id" AND rc."roomID" = "room_id"
		ORDER BY rc."roomCustomerID" ASC;
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_messages_grouped_by_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_messages_grouped_by_name"("room_id" int4, "room_customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_messages_grouped_by_name"("room_id" int4, "room_customer_id" int4)
  RETURNS TABLE("roomCustomerID" int4, "roomTaskID" int4, "name" varchar, "isRead" bool) AS $BODY$BEGIN
	
	RETURN QUERY SELECT rcm."roomCustomerID", rt."roomTaskID", c."name", bool_or(rcm."isRead")
		FROM "RoomCustomerMessage" AS rcm
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rcm."roomCustomerID"
		LEFT JOIN "Customer" AS c ON c."customerID" = rc."customerID"
		LEFT JOIN "RoomTask" AS rt ON rt."roomTaskID" = rcm."roomTaskID"
		WHERE rt."roomID" = "room_id" AND rcm."roomCustomerID" != "room_customer_id"
		GROUP BY c."name", rcm."roomCustomerID", rt."roomTaskID";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_owner"("room_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_owner"("room_id" int4)
  RETURNS SETOF "public"."Customer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "Customer" WHERE "customerID" = (SELECT "ownerID" FROM "Room" WHERE "roomID" = "room_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_role_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_role_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_role_by_id"("id" int4)
  RETURNS SETOF "public"."RoomRole" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomRole" WHERE "roomRoleID" = "id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_role_by_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_role_by_name"("role_name" varchar);
CREATE OR REPLACE FUNCTION "public"."get_room_role_by_name"("role_name" varchar)
  RETURNS SETOF "public"."RoomRole" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomRole" WHERE "name" = "role_name";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_solution
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_solution"("room_task_id" int4, "customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_solution"("room_task_id" int4, "customer_id" int4)
  RETURNS SETOF "public"."RoomSolution" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "RoomSolution" AS rs WHERE "roomTaskID" = "room_task_id" AND
		rs."roomCustomerID" = 
		(SELECT "roomCustomerID" FROM "RoomCustomer"
			LEFT JOIN "RoomTask" AS rt ON rt."roomTaskID" = "room_task_id"
			WHERE "customerID" = "customer_id"
		);

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_solution_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_solution_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_solution_by_id"("id" int4)
  RETURNS SETOF "public"."RoomSolution" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "RoomSolution" WHERE "RoomSolution"."roomSolutionID" = "id";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_by_id"("id" int4)
  RETURNS SETOF "public"."RoomTask" AS $BODY$BEGIN
  
  RETURN QUERY SELECT * FROM "RoomTask" WHERE "RoomTask"."roomTaskID" = "id";
  
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_comment_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_comment_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_comment_by_id"("id" int4)
  RETURNS SETOF "public"."RoomTaskComment" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "RoomTaskComment" WHERE "roomTaskCommentID" = "id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_comments
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_comments"("room_task_id" int4, "start" int4, "count" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_comments"("room_task_id" int4, "start" int4, "count" int4)
  RETURNS TABLE("roomTaskCommentID" int4, "roomTaskID" int4, "customerName" varchar, "comment" varchar, "posted" timestamp) AS $BODY$BEGIN

	RETURN QUERY SELECT rtc."roomTaskCommentID", rtc."roomTaskID", c."name", rtc."comment", rtc."posted"
		FROM "RoomTaskComment" AS rtc
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rtc."roomCustomerID"
		LEFT JOIN "Customer" AS c ON c."customerID" = rc."customerID"
		WHERE rtc."roomTaskID" = "room_task_id"
		ORDER BY rtc."posted" DESC OFFSET "start" LIMIT "count";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_statistic
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_statistic"("room_task_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_statistic"("room_task_id" int4)
  RETURNS TABLE("totalCount" int4, "testedCount" int4, "acceptedCount" int4) AS $BODY$BEGIN

	RETURN QUERY SELECT 
		CAST(COUNT(*) AS int4),
		CAST(COUNT(CASE WHEN "isSuccessfullyTested" = TRUE THEN TRUE ELSE NULL END) AS int4),
		CAST(COUNT(CASE WHEN "isAccepted" = TRUE THEN TRUE ELSE NULL END) AS int4)
		FROM "RoomSolution" WHERE "roomTaskID" = "room_task_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_variant
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_variant"("room_task_id" int4, "customer_variant" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_variant"("room_task_id" int4, "customer_variant" int4)
  RETURNS SETOF "public"."RoomTaskVariant" AS $BODY$
	DECLARE
		r record;
	BEGIN
  
	SELECT * INTO r FROM "RoomTaskVariant" WHERE "RoomTaskVariant"."roomTaskID" = "room_task_id"
		AND "RoomTaskVariant"."variant" = "customer_variant";
		
	IF r IS NOT NULL THEN
		RETURN NEXT r;
		RETURN;
	ELSE
		RETURN QUERY SELECT * FROM "RoomTaskVariant" WHERE "RoomTaskVariant"."roomTaskID" = "room_task_id"
			AND "RoomTaskVariant"."variant" = MOD(
					(SELECT MAX("variant") FROM "RoomTaskVariant" WHERE "roomTaskID" = "room_task_id"),
					"customer_variant"
				);
	END IF;
  
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_variant_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_variant_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_variant_by_id"("id" int4)
  RETURNS SETOF "public"."RoomTaskVariant" AS $BODY$BEGIN
  
  RETURN QUERY SELECT * FROM "RoomTaskVariant" WHERE "RoomTaskVariant"."roomTaskVariantID" = "id";

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_task_variants
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_variants"("room_task_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_variants"("room_task_id" int4)
  RETURNS SETOF "public"."RoomTaskVariant" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomTaskVariant" WHERE "roomTaskID" = "room_task_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_room_tasks
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_tasks"("room_id" int4, "room_customer_id" int4, "start" int4, "tasks_count" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_tasks"("room_id" int4, "room_customer_id" int4, "start" int4, "tasks_count" int4)
  RETURNS SETOF "public"."RoomTask" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomTask" AS rt
		WHERE "roomID" = "room_id" AND NOT EXISTS(SELECT * FROM "RoomSolution" AS rs
			WHERE rs."roomCustomerID" = "room_customer_id"
				AND rs."roomTaskID" = rt."roomTaskID"
				AND rs."isAccepted" = TRUE)
		ORDER BY "added" DESC OFFSET "start" LIMIT "tasks_count";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_tasks_with_unverified_solutions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_tasks_with_unverified_solutions"("room_id" int4, "start" int4, "tasks_count" int4);
CREATE OR REPLACE FUNCTION "public"."get_tasks_with_unverified_solutions"("room_id" int4, "start" int4, "tasks_count" int4)
  RETURNS SETOF "public"."RoomTask" AS $BODY$BEGIN

	RETURN QUERY SELECT rt."roomTaskID", rt."roomID", rt."name", rt."description", rt."lastTerm", rt."added"
		FROM "RoomTask" AS rt
		LEFT JOIN "RoomSolution" AS rs ON rs."roomTaskID" = rt."roomTaskID"
		WHERE "roomID" = "room_id" AND EXISTS (
			SELECT * FROM "RoomSolution" WHERE "roomTaskID" = rt."roomTaskID"
				AND "isSuccessfullyTested" = TRUE
				AND	"isAccepted" = FALSE
		)
		ORDER BY "added" DESC OFFSET "start" LIMIT "tasks_count";
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_tasks_with_verified_solutions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_tasks_with_verified_solutions"("room_id" int4, "start" int4, "tasks_count" int4);
CREATE OR REPLACE FUNCTION "public"."get_tasks_with_verified_solutions"("room_id" int4, "start" int4, "tasks_count" int4)
  RETURNS SETOF "public"."RoomTask" AS $BODY$BEGIN

	RETURN QUERY SELECT rt."roomTaskID", rt."roomID", rt."name", rt."description", rt."lastTerm", rt."added"
		FROM "RoomTask" AS rt
		LEFT JOIN "RoomSolution" AS rs ON rs."roomTaskID" = rt."roomTaskID"
		WHERE "roomID" = "room_id" AND EXISTS (
			SELECT * FROM "RoomSolution" WHERE "roomTaskID" = rt."roomTaskID"
				AND "isSuccessfullyTested" = TRUE
				AND	"isAccepted" = TRUE
		)
		ORDER BY "added" DESC OFFSET "start" LIMIT "tasks_count";
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_unverified_solutions_by_task_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_unverified_solutions_by_task_id"("room_task_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_unverified_solutions_by_task_id"("room_task_id" int4)
  RETURNS TABLE("roomSolutionID" int4, "customerName" varchar) AS $BODY$BEGIN

	RETURN QUERY SELECT rs."roomSolutionID", c."name" FROM "RoomSolution" AS rs
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rs."roomCustomerID"
		LEFT JOIN "Customer" AS c ON c."customerID" = rc."customerID"
		WHERE rs."roomTaskID" = "room_task_id" AND rs."isSuccessfullyTested" = TRUE AND rs."isAccepted" = FALSE;
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_variant
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_variant"("customer_name" varchar, "room_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_variant"("customer_name" varchar, "room_id" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN
	
	RETURN (SELECT "variant" FROM "RoomCustomer" AS rc
		LEFT JOIN "Customer" ON "Customer"."customerID" = rc."customerID"
		WHERE rc."roomID" = "room_id" AND "Customer"."name" = "customer_name" LIMIT 1);
		
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_verified_solutions_by_task_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_verified_solutions_by_task_id"("room_task_id" int4);
CREATE OR REPLACE FUNCTION "public"."get_verified_solutions_by_task_id"("room_task_id" int4)
  RETURNS TABLE("roomSolutionID" int4, "customerName" varchar) AS $BODY$BEGIN
	
	RETURN QUERY SELECT rs."roomSolutionID", c."name" FROM "RoomSolution" AS rs
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rs."roomCustomerID"
		LEFT JOIN "Customer" AS c ON c."customerID" = rc."customerID"
		WHERE rs."roomTaskID" = "room_task_id" AND rs."isSuccessfullyTested" = TRUE AND rs."isAccepted" = TRUE;
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for insert_default_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_default_customer"("name" varchar, "password" varchar, "email" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_default_customer"("name" varchar, "password" varchar, "email" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "Customer" (name, "passwordHash", email, "roleID")
		VALUES(name, password, email,
		 (SELECT "roleID" FROM "Role" WHERE "Role".name = 'user' LIMIT 1));

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_role"("name" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_role"("name" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "Customer" (name) VALUES("name");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room"("room_name" varchar, "room_ownerID" int4);
CREATE OR REPLACE FUNCTION "public"."insert_room"("room_name" varchar, "room_ownerID" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN
	
	INSERT INTO "Room" ("name", "ownerID") VALUES("room_name", "room_ownerID");
	RETURN (SELECT "roomID" FROM "Room" AS r WHERE r."name"="room_name" AND r."ownerID"="room_ownerID");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_customer"("room_id" int4, "customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."insert_room_customer"("room_id" int4, "customer_id" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$BEGIN
	
	INSERT INTO "RoomCustomer" ("roomID", "customerID") VALUES("room_id", "customer_id");
	RETURN (SELECT "roomCustomerID" FROM "RoomCustomer" WHERE "roomID" = "room_id" AND "customerID" = "customer_id");
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_customer_post
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_customer_post"("room_customer_id" int4, "post_text" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_customer_post"("room_customer_id" int4, "post_text" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN

	INSERT INTO "RoomCustomerPost" ("roomCustomerID", "posted", "text") VALUES ("room_customer_id", now(), "post_text");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_customer_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_customer_role"("room_customer_id" int4, "role_id" int4);
CREATE OR REPLACE FUNCTION "public"."insert_room_customer_role"("room_customer_id" int4, "role_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomCustomerRole" ("roomCustomerID", "roomRoleID") VALUES ("room_customer_id", "role_id");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_member_message
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_member_message"("room_customer_id" int4, "room_task_id" int4, "text" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_member_message"("room_customer_id" int4, "room_task_id" int4, "text" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$
	DECLARE
		record_id int4;
		r record;
	BEGIN
		
	INSERT INTO "RoomCustomerMessage" ("roomCustomerID", "roomTaskID", "sent", "text", "isRead")
			VALUES ("room_customer_id", "room_task_id", now(), "text", FALSE)
			RETURNING "roomCustomerMessageID" INTO record_id;
	
	FOR r IN 
		SELECT * FROM "RoomCustomer" AS rc
			LEFT JOIN "RoomCustomerRole" AS rcr ON rcr."roomCustomerID" = rc."roomCustomerID"
			LEFT JOIN "RoomRole" AS rr ON rr."roomRoleID" = rcr."roomRoleID"
			WHERE rcr."roomRoleID" = (SELECT "roomRoleID" FROM "RoomRole" WHERE "name" = 'teacher') 
	LOOP
		INSERT INTO "RoomCustomerMessageRecipient" ("roomCustomerMessageID", "roomCustomerID")
				VALUES (record_id, r."roomCustomerID");
	END LOOP;

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_solution
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_solution"("room_task_id" int4, "customer_id" int4, "solution_path" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_solution"("room_task_id" int4, "customer_id" int4, "solution_path" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	IF NOT EXISTS (SELECT * FROM "RoomSolution" AS rs
		LEFT JOIN "RoomTask" AS rt ON rt."roomTaskID" = "room_task_id"
		LEFT JOIN "RoomCustomer" AS rc ON rc."customerID" = "customer_id" AND rc."roomID" = rt."roomID"
		WHERE rs."roomTaskID" = "room_task_id" AND "customerID" = "customer_id")
	THEN
		INSERT INTO "RoomSolution" ("roomCustomerID", "roomTaskID", "path", "isSuccessfullyTested", "isAccepted")
			VALUES (
				(SELECT "roomCustomerID" FROM "RoomCustomer" AS rc
					LEFT JOIN "RoomTask" AS rt ON rt."roomTaskID" = "room_task_id"
					WHERE rc."customerID" = "customer_id" AND rc."roomID" = rt."roomID"),
				"room_task_id", "solution_path", FALSE, FALSE
			);
	END IF;

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_task
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_task"("roomID" int4, "name" varchar, "desc" varchar, "last_term" timestamp);
CREATE OR REPLACE FUNCTION "public"."insert_room_task"("roomID" int4, "name" varchar, "desc" varchar, "last_term" timestamp)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
  
  INSERT INTO "RoomTask" ("roomID", "name", "description", "added", "lastTerm") VALUES ("roomID", "name", "desc", now(), "last_term");

  RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_task_comment
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_task_comment"("room_task_id" int4, "room_customer_id" int4, "comment" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_task_comment"("room_task_id" int4, "room_customer_id" int4, "comment" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomTaskComment" ("roomTaskID", "roomCustomerID", "comment", "posted") 
		VALUES ("room_task_id", "room_customer_id", "comment", now());

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_task_variant
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_task_variant"("room_task_ID" int4, "task_variant" int4, "task_path" varchar, "description" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_task_variant"("room_task_ID" int4, "task_variant" int4, "task_path" varchar, "description" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
  
	IF NOT EXISTS (SELECT * FROM "RoomTaskVariant" WHERE "variant" = "task_variant" AND "path" = "task_path")
	THEN
		INSERT INTO "RoomTaskVariant" ("roomTaskID", "variant", "path", "description") 
			VALUES ("room_task_ID", "task_variant", "task_path", "description");
	END IF;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_teacher_message
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_teacher_message"("room_customer_id" int4, "room_task_id" int4, "text" varchar, "recipient" int4);
CREATE OR REPLACE FUNCTION "public"."insert_room_teacher_message"("room_customer_id" int4, "room_task_id" int4, "text" varchar, "recipient" int4)
  RETURNS "pg_catalog"."void" AS $BODY$
	DECLARE
		record_id int4;
		r record;
	BEGIN
		
	INSERT INTO "RoomCustomerMessage" ("roomCustomerID", "roomTaskID", "sent", "text", "isRead")
			VALUES ("room_customer_id", "room_task_id", now(), "text", FALSE)
			RETURNING "roomCustomerMessageID" INTO record_id;
	INSERT INTO "RoomCustomerMessageRecipient" ("roomCustomerMessageID", "roomCustomerID")
				VALUES (record_id, "recipient");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_customer_has_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_customer_has_role"("role_id" int4, "customer_id" int4, "room_id" int4);
CREATE OR REPLACE FUNCTION "public"."is_customer_has_role"("role_id" int4, "customer_id" int4, "room_id" int4)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN ("role_id" = (SELECT "roomRoleID" FROM "RoomCustomerRole" AS rcr
		LEFT JOIN "RoomCustomer" AS rc ON rc."roomCustomerID" = rcr."roomCustomerID"
		WHERE rc."customerID" = "customer_id" AND rc."roomID" = "room_id"));
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_customer_in_room
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_customer_in_room"("customer_id" int4, "room_id" int4);
CREATE OR REPLACE FUNCTION "public"."is_customer_in_room"("customer_id" int4, "room_id" int4)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN (EXISTS(SELECT * FROM "RoomCustomer" WHERE "customerID" = "customer_id" AND "roomID" = "room_id"));
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_solution_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_solution_exists"("room_task_id" int4, "customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."is_solution_exists"("room_task_id" int4, "customer_id" int4)
  RETURNS "pg_catalog"."bool" AS $BODY$BEGIN

	RETURN EXISTS(SELECT * FROM "RoomSolution" AS rs
		WHERE "roomTaskID" = "room_task_id" AND rs."roomCustomerID" = 
		(SELECT "roomCustomerID" FROM "RoomCustomer"
			LEFT JOIN "RoomTask" AS rt ON rt."roomTaskID" = "room_task_id"
			WHERE "customerID" = "customer_id"
		));
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sec_get_auth
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sec_get_auth"("username" varchar);
CREATE OR REPLACE FUNCTION "public"."sec_get_auth"("username" varchar)
  RETURNS TABLE("name" varchar, "role" varchar) AS $BODY$BEGIN

	RETURN QUERY
		SELECT "Customer".name, r.name FROM "Customer"
			LEFT JOIN "Role" AS r ON "Customer"."roleID" = r."roleID"
			WHERE "Customer".name = username;
			
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for sec_get_user
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sec_get_user"("username" varchar);
CREATE OR REPLACE FUNCTION "public"."sec_get_user"("username" varchar)
  RETURNS TABLE("name" varchar, "password" varchar, "enabled" bool) AS $BODY$BEGIN

	RETURN QUERY
		SELECT "Customer".name, "passwordHash", TRUE FROM "Customer"
			WHERE "Customer".name = username;
		
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for set_room_background_path
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_room_background_path"("room_id" int4, "background_path" varchar);
CREATE OR REPLACE FUNCTION "public"."set_room_background_path"("room_id" int4, "background_path" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "Room" SET "backgroundPath" = "background_path" WHERE "roomID" = "room_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_room_color
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_room_color"("room_id" int4, "room_color" int4);
CREATE OR REPLACE FUNCTION "public"."set_room_color"("room_id" int4, "room_color" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "Room" SET "color" = "room_color" WHERE "roomID" = "room_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_room_customer_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_room_customer_role"("room_customer_id" int4, "role_name" varchar);
CREATE OR REPLACE FUNCTION "public"."set_room_customer_role"("room_customer_id" int4, "role_name" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "RoomCustomerRole" 
		SET "roomRoleID" = (SELECT "roomRoleID" FROM "RoomRole" WHERE "name" = "role_name")
		WHERE "roomCustomerID" = "room_customer_id";

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_room_solution_accepted
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_room_solution_accepted"("room_solution_id" int4);
CREATE OR REPLACE FUNCTION "public"."set_room_solution_accepted"("room_solution_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "RoomSolution" SET "isAccepted" = TRUE
		WHERE "roomSolutionID" = "room_solution_id";

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_room_solution_declined
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_room_solution_declined"("room_solution_id" int4);
CREATE OR REPLACE FUNCTION "public"."set_room_solution_declined"("room_solution_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "RoomSolution" SET "isAccepted" = FALSE, "isSuccessfullyTested" = FALSE
		WHERE "roomSolutionID" = "room_solution_id";

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_solution_successfully_tested
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_solution_successfully_tested"("room_task_id" int4, "customer_id" int4);
CREATE OR REPLACE FUNCTION "public"."set_solution_successfully_tested"("room_task_id" int4, "customer_id" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "RoomSolution" AS rs SET "isSuccessfullyTested" = TRUE
		WHERE "roomTaskID" = "room_task_id" AND rs."roomCustomerID" = 
		(SELECT "roomCustomerID" FROM "RoomCustomer"
			LEFT JOIN "RoomTask" AS rt ON rt."roomTaskID" = "room_task_id"
			WHERE "customerID" = "customer_id"
		);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for update_room
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."update_room"("room_id" int4, "room_name" varchar, "room_description" varchar);
CREATE OR REPLACE FUNCTION "public"."update_room"("room_id" int4, "room_name" varchar, "room_description" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	UPDATE "Room" SET "name" = "room_name", "description" = "room_description"
		WHERE "roomID" = "room_id";
	
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Role_roleID_seq"
OWNED BY "public"."Role"."roleID";
SELECT setval('"public"."Role_roleID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomerMessageRecipient_roomCustomerMessageRecipientID_seq"
OWNED BY "public"."RoomCustomerMessageRecipient"."roomCustomerMessageRecipientID";
SELECT setval('"public"."RoomCustomerMessageRecipient_roomCustomerMessageRecipientID_seq"', 17, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomerMessage_roomCustomerMessageID_seq"
OWNED BY "public"."RoomCustomerMessage"."roomCustomerMessageID";
SELECT setval('"public"."RoomCustomerMessage_roomCustomerMessageID_seq"', 18, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomerPost_roomPostID_seq"
OWNED BY "public"."RoomCustomerPost"."roomCustomerPostID";
SELECT setval('"public"."RoomCustomerPost_roomPostID_seq"', 31, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomerRole_roomCustomerRoleID_seq"
OWNED BY "public"."RoomCustomerRole"."roomCustomerRoleID";
SELECT setval('"public"."RoomCustomerRole_roomCustomerRoleID_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomer_roomCustomerID_seq"
OWNED BY "public"."RoomCustomer"."roomCustomerID";
SELECT setval('"public"."RoomCustomer_roomCustomerID_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomer_variant_seq"
OWNED BY "public"."RoomCustomer"."variant";
SELECT setval('"public"."RoomCustomer_variant_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomRole_roomRoleID_seq"
OWNED BY "public"."RoomRole"."roomRoleID";
SELECT setval('"public"."RoomRole_roomRoleID_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomSolution_roomSolutionID_seq"
OWNED BY "public"."RoomSolution"."roomSolutionID";
SELECT setval('"public"."RoomSolution_roomSolutionID_seq"', 20, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomTaskComment_roomTaskCommentID_seq"
OWNED BY "public"."RoomTaskComment"."roomTaskCommentID";
SELECT setval('"public"."RoomTaskComment_roomTaskCommentID_seq"', 33, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomTaskVariant_roomTaskVariantID_seq"
OWNED BY "public"."RoomTaskVariant"."roomTaskVariantID";
SELECT setval('"public"."RoomTaskVariant_roomTaskVariantID_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomTask_roomTaskID_seq"
OWNED BY "public"."RoomTask"."roomTaskID";
SELECT setval('"public"."RoomTask_roomTaskID_seq"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Room_roomID_seq"
OWNED BY "public"."Room"."roomID";
SELECT setval('"public"."Room_roomID_seq"', 16, true);

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerID");

-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE "public"."Role" ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("roleID");

-- ----------------------------
-- Uniques structure for table Room
-- ----------------------------
ALTER TABLE "public"."Room" ADD CONSTRAINT "room_name_owner_uniq" UNIQUE ("name", "ownerID");

-- ----------------------------
-- Primary Key structure for table Room
-- ----------------------------
ALTER TABLE "public"."Room" ADD CONSTRAINT "Room_pkey" PRIMARY KEY ("roomID");

-- ----------------------------
-- Primary Key structure for table RoomCustomer
-- ----------------------------
ALTER TABLE "public"."RoomCustomer" ADD CONSTRAINT "RoomCustomer_pkey" PRIMARY KEY ("roomCustomerID");

-- ----------------------------
-- Primary Key structure for table RoomCustomerMessage
-- ----------------------------
ALTER TABLE "public"."RoomCustomerMessage" ADD CONSTRAINT "RoomCustomerMessage_pkey" PRIMARY KEY ("roomCustomerMessageID");

-- ----------------------------
-- Primary Key structure for table RoomCustomerMessageRecipient
-- ----------------------------
ALTER TABLE "public"."RoomCustomerMessageRecipient" ADD CONSTRAINT "RoomCustomerMessageRecipient_pkey" PRIMARY KEY ("roomCustomerMessageRecipientID");

-- ----------------------------
-- Primary Key structure for table RoomCustomerPost
-- ----------------------------
ALTER TABLE "public"."RoomCustomerPost" ADD CONSTRAINT "RoomCustomerPost_pkey" PRIMARY KEY ("roomCustomerPostID");

-- ----------------------------
-- Uniques structure for table RoomCustomerRole
-- ----------------------------
ALTER TABLE "public"."RoomCustomerRole" ADD CONSTRAINT "RoomCustomerRole_roomCustomerID_key" UNIQUE ("roomCustomerID");

-- ----------------------------
-- Primary Key structure for table RoomCustomerRole
-- ----------------------------
ALTER TABLE "public"."RoomCustomerRole" ADD CONSTRAINT "RoomCustomerRole_pkey" PRIMARY KEY ("roomCustomerRoleID");

-- ----------------------------
-- Primary Key structure for table RoomRole
-- ----------------------------
ALTER TABLE "public"."RoomRole" ADD CONSTRAINT "RoomRole_pkey" PRIMARY KEY ("roomRoleID");

-- ----------------------------
-- Primary Key structure for table RoomSolution
-- ----------------------------
ALTER TABLE "public"."RoomSolution" ADD CONSTRAINT "RoomSolution_pkey" PRIMARY KEY ("roomSolutionID");

-- ----------------------------
-- Primary Key structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "RoomTask_pkey" PRIMARY KEY ("roomTaskID");

-- ----------------------------
-- Primary Key structure for table RoomTaskComment
-- ----------------------------
ALTER TABLE "public"."RoomTaskComment" ADD CONSTRAINT "RoomTaskComment_pkey" PRIMARY KEY ("roomTaskCommentID");

-- ----------------------------
-- Uniques structure for table RoomTaskVariant
-- ----------------------------
ALTER TABLE "public"."RoomTaskVariant" ADD CONSTRAINT "room_task_path_uniq" UNIQUE ("roomTaskID", "path");
ALTER TABLE "public"."RoomTaskVariant" ADD CONSTRAINT "room_task_name_uniq" UNIQUE ("roomTaskID", "variant");

-- ----------------------------
-- Primary Key structure for table RoomTaskVariant
-- ----------------------------
ALTER TABLE "public"."RoomTaskVariant" ADD CONSTRAINT "RoomTaskVariant_pkey" PRIMARY KEY ("roomTaskVariantID");

-- ----------------------------
-- Foreign Keys structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_roleID_fkey" FOREIGN KEY ("roleID") REFERENCES "public"."Role" ("roleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Room
-- ----------------------------
ALTER TABLE "public"."Room" ADD CONSTRAINT "Room_customerID_fkey" FOREIGN KEY ("ownerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomCustomer
-- ----------------------------
ALTER TABLE "public"."RoomCustomer" ADD CONSTRAINT "RoomCustomer_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomCustomer" ADD CONSTRAINT "RoomCustomer_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomCustomerMessage
-- ----------------------------
ALTER TABLE "public"."RoomCustomerMessage" ADD CONSTRAINT "RoomCustomerMessage_roomCustomerID_fkey" FOREIGN KEY ("roomCustomerID") REFERENCES "public"."RoomCustomer" ("roomCustomerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomCustomerMessage" ADD CONSTRAINT "RoomCustomerMessage_roomTaskID_fkey" FOREIGN KEY ("roomTaskID") REFERENCES "public"."RoomTask" ("roomTaskID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomCustomerMessageRecipient
-- ----------------------------
ALTER TABLE "public"."RoomCustomerMessageRecipient" ADD CONSTRAINT "RoomCustomerMessageRecipient_roomCustomerID_fkey" FOREIGN KEY ("roomCustomerID") REFERENCES "public"."RoomCustomer" ("roomCustomerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomCustomerMessageRecipient" ADD CONSTRAINT "RoomCustomerMessageRecipient_roomCustomerMessageID_fkey" FOREIGN KEY ("roomCustomerMessageID") REFERENCES "public"."RoomCustomerMessage" ("roomCustomerMessageID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomCustomerPost
-- ----------------------------
ALTER TABLE "public"."RoomCustomerPost" ADD CONSTRAINT "RoomCustomerPost_roomCustomerID_fkey" FOREIGN KEY ("roomCustomerID") REFERENCES "public"."RoomCustomer" ("roomCustomerID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomCustomerRole
-- ----------------------------
ALTER TABLE "public"."RoomCustomerRole" ADD CONSTRAINT "RoomCustomerRole_roomCustomerID_fkey" FOREIGN KEY ("roomCustomerID") REFERENCES "public"."RoomCustomer" ("roomCustomerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomCustomerRole" ADD CONSTRAINT "RoomCustomerRole_roomRoleID_fkey" FOREIGN KEY ("roomRoleID") REFERENCES "public"."RoomRole" ("roomRoleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomSolution
-- ----------------------------
ALTER TABLE "public"."RoomSolution" ADD CONSTRAINT "RoomSolution_roomCustomerID_fkey" FOREIGN KEY ("roomCustomerID") REFERENCES "public"."RoomCustomer" ("roomCustomerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomSolution" ADD CONSTRAINT "RoomSolution_roomTaskID_fkey" FOREIGN KEY ("roomTaskID") REFERENCES "public"."RoomTask" ("roomTaskID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "RoomTask_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomTaskComment
-- ----------------------------
ALTER TABLE "public"."RoomTaskComment" ADD CONSTRAINT "RoomTaskComment_roomCustomerID_fkey" FOREIGN KEY ("roomCustomerID") REFERENCES "public"."RoomCustomer" ("roomCustomerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomTaskComment" ADD CONSTRAINT "RoomTaskComment_roomTaskID_fkey" FOREIGN KEY ("roomTaskID") REFERENCES "public"."RoomTask" ("roomTaskID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomTaskVariant
-- ----------------------------
ALTER TABLE "public"."RoomTaskVariant" ADD CONSTRAINT "RoomTaskVariant_roomTaskID_fkey" FOREIGN KEY ("roomTaskID") REFERENCES "public"."RoomTask" ("roomTaskID") ON DELETE CASCADE ON UPDATE CASCADE;
