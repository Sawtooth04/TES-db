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

 Date: 25/10/2023 19:24:32
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
  "ownerID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of Room
-- ----------------------------
INSERT INTO "public"."Room" VALUES (15, 'Test Room', 6);

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
INSERT INTO "public"."RoomCustomer" VALUES (5, 15, 6, 5);

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
  "roomID" int4,
  "path" varchar(50) COLLATE "pg_catalog"."default"
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
  "path" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of RoomTask
-- ----------------------------

-- ----------------------------
-- Table structure for RoomTaskVariant
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomTaskVariant";
CREATE TABLE "public"."RoomTaskVariant" (
  "roomTaskVariantID" int4 NOT NULL DEFAULT nextval('"RoomTaskVariant_roomTaskVariantID_seq"'::regclass),
  "roomTaskID" int4,
  "variant" int4
)
;

-- ----------------------------
-- Records of RoomTaskVariant
-- ----------------------------

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
		"roomID" int4,
		"path" varchar(50),
		
		FOREIGN KEY ("roomID") REFERENCES "Room" ("roomID") ON UPDATE CASCADE ON DELETE CASCADE
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
		
		CONSTRAINT room_name_owner_uniq UNIQUE(name, "ownerID"),
		FOREIGN KEY ("ownerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
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
		"name" varchar(50),
		"path" varchar(50),
		
		FOREIGN KEY ("roomID") REFERENCES "Room" ("roomID") ON UPDATE CASCADE ON DELETE CASCADE,
		CONSTRAINT room_task_path_uniq UNIQUE("roomID", "path"),
		CONSTRAINT room_task_name_uniq UNIQUE("name")
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
		
		FOREIGN KEY ("roomTaskID") REFERENCES "RoomTask" ("roomTaskID") ON UPDATE CASCADE ON DELETE CASCADE
	);

	RETURN;
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
-- Function structure for get_customer_rooms
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_rooms"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_rooms"("id" int4)
  RETURNS SETOF "public"."Room" AS $BODY$BEGIN
  
  RETURN QUERY SELECT "Room"."roomID", "Room"."name", "Room"."ownerID" FROM "Room"
    LEFT JOIN "RoomCustomer" AS rc ON "Room"."roomID" = rc."roomID"
    WHERE rc."customerID" = "id";
  
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
		ORDER BY "posted" ASC OFFSET "start" LIMIT "posts_count";
	
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

	RETURN QUERY SELECT * FROM "RoomCustomerRole" WHERE "customerID" = "id";
	
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
-- Function structure for get_room_task
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task"("room_id" int4, "task_path" varchar);
CREATE OR REPLACE FUNCTION "public"."get_room_task"("room_id" int4, "task_path" varchar)
  RETURNS SETOF "public"."RoomTask" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "RoomTask" WHERE "RoomTask"."roomID" = "room_id" AND "RoomTask"."path" = "task_path";
	
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
-- Function structure for get_room_task_variant_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_task_variant_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_task_variant_by_id"("id" int4)
  RETURNS SETOF "public"."RoomTaskVariant" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "RoomTaskVariant" WHERE "RoomTaskVariant"."roomTaskVariantID" = "id";

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
-- Function structure for insert_room_solution
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_solution"("roomID" int4, "path" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_solution"("roomID" int4, "path" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomSolution" ("roomID", "path") VALUES ("roomID", "path");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_task
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_task"("roomID" int4, "name" varchar, "path" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_task"("roomID" int4, "name" varchar, "path" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomTask" ("roomID", "name", "path") VALUES ("roomID", "name", "path");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_task_variant
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_task_variant"("roomTaskID" int4, "variant" int4);
CREATE OR REPLACE FUNCTION "public"."insert_room_task_variant"("roomTaskID" int4, "variant" int4)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomTaskVariant" ("roomTaskID", "variant") VALUES ("roomTaskID", "variant");

	RETURN;
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
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Role_roleID_seq"
OWNED BY "public"."Role"."roleID";
SELECT setval('"public"."Role_roleID_seq"', 7, true);

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
SELECT setval('"public"."RoomCustomerRole_roomCustomerRoleID_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomer_roomCustomerID_seq"
OWNED BY "public"."RoomCustomer"."roomCustomerID";
SELECT setval('"public"."RoomCustomer_roomCustomerID_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomer_variant_seq"
OWNED BY "public"."RoomCustomer"."variant";
SELECT setval('"public"."RoomCustomer_variant_seq"', 6, true);

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
SELECT setval('"public"."RoomSolution_roomSolutionID_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomTaskVariant_roomTaskVariantID_seq"
OWNED BY "public"."RoomTaskVariant"."roomTaskVariantID";
SELECT setval('"public"."RoomTaskVariant_roomTaskVariantID_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomTask_roomTaskID_seq"
OWNED BY "public"."RoomTask"."roomTaskID";
SELECT setval('"public"."RoomTask_roomTaskID_seq"', 12, true);

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
-- Uniques structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "room_path_uniq" UNIQUE ("roomID", "path");

-- ----------------------------
-- Primary Key structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "RoomTask_pkey" PRIMARY KEY ("roomTaskID");

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
ALTER TABLE "public"."RoomSolution" ADD CONSTRAINT "RoomSolution_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "RoomTask_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomTaskVariant
-- ----------------------------
ALTER TABLE "public"."RoomTaskVariant" ADD CONSTRAINT "RoomTaskVariant_roomTaskID_fkey" FOREIGN KEY ("roomTaskID") REFERENCES "public"."RoomTask" ("roomTaskID") ON DELETE CASCADE ON UPDATE CASCADE;
