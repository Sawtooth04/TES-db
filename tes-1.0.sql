/*
 Navicat Premium Data Transfer

 Source Server         : localhost_postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 150001
 Source Host           : localhost:5432
 Source Catalog        : tes
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001
 File Encoding         : 65001

 Date: 02/09/2023 19:52:55
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
  "name" varchar(30) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Room
-- ----------------------------
INSERT INTO "public"."Room" VALUES (1, 'abcde');

-- ----------------------------
-- Table structure for RoomCustomer
-- ----------------------------
DROP TABLE IF EXISTS "public"."RoomCustomer";
CREATE TABLE "public"."RoomCustomer" (
  "roomCustomerID" int4 NOT NULL DEFAULT nextval('"RoomCustomer_roomCustomerID_seq"'::regclass),
  "roomID" int4,
  "customerID" int4
)
;

-- ----------------------------
-- Records of RoomCustomer
-- ----------------------------

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
  "path" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of RoomTask
-- ----------------------------

-- ----------------------------
-- Function structure for create_customer_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_customer_table"();
CREATE OR REPLACE FUNCTION "public"."create_customer_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "Customer" (
		"customerID" serial PRIMARY KEY,
		name varchar(30),
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
-- Function structure for create_room_customer_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_room_customer_table"();
CREATE OR REPLACE FUNCTION "public"."create_room_customer_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "RoomCustomer" (
		"roomCustomerID" serial PRIMARY KEY,
		"roomID" int4,
		"customerID" int4,
		
		FOREIGN KEY ("roomID") REFERENCES "Room" ("roomID") ON UPDATE CASCADE ON DELETE CASCADE,
		FOREIGN KEY ("customerID") REFERENCES "Customer" ("customerID") ON UPDATE CASCADE ON DELETE CASCADE
	);

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
		name varchar(30)
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
		"path" varchar(50),
		
		FOREIGN KEY ("roomID") REFERENCES "Room" ("roomID") ON UPDATE CASCADE ON DELETE CASCADE
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
-- Function structure for get_room_customer_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_room_customer_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_room_customer_by_id"("id" int4)
  RETURNS SETOF "public"."RoomCustomer" AS $BODY$BEGIN

	RETURN QUERY SELECT * FROM "RoomCustomer" WHERE "RoomCustomer"."roomCustomerID" = "id";

	RETURN;
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

	RETURN;
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
DROP FUNCTION IF EXISTS "public"."insert_room"("name" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room"("name" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "Room" (name) VALUES("name");

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for insert_room_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_room_customer"("roomID" varchar, "customerID" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_customer"("roomID" varchar, "customerID" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomCustomer" ("roomID", "customerID") VALUES("roomID", "customerID");

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
DROP FUNCTION IF EXISTS "public"."insert_room_task"("roomID" int4, "path" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_room_task"("roomID" int4, "path" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "RoomTask" ("roomID", "path") VALUES ("roomID", "path");

	RETURN;
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
SELECT setval('"public"."Customer_customerID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Role_roleID_seq"
OWNED BY "public"."Role"."roleID";
SELECT setval('"public"."Role_roleID_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomCustomer_roomCustomerID_seq"
OWNED BY "public"."RoomCustomer"."roomCustomerID";
SELECT setval('"public"."RoomCustomer_roomCustomerID_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomSolution_roomSolutionID_seq"
OWNED BY "public"."RoomSolution"."roomSolutionID";
SELECT setval('"public"."RoomSolution_roomSolutionID_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."RoomTask_roomTaskID_seq"
OWNED BY "public"."RoomTask"."roomTaskID";
SELECT setval('"public"."RoomTask_roomTaskID_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Room_roomID_seq"
OWNED BY "public"."Room"."roomID";
SELECT setval('"public"."Room_roomID_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerID");

-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE "public"."Role" ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("roleID");

-- ----------------------------
-- Primary Key structure for table Room
-- ----------------------------
ALTER TABLE "public"."Room" ADD CONSTRAINT "Room_pkey" PRIMARY KEY ("roomID");

-- ----------------------------
-- Primary Key structure for table RoomCustomer
-- ----------------------------
ALTER TABLE "public"."RoomCustomer" ADD CONSTRAINT "RoomCustomer_pkey" PRIMARY KEY ("roomCustomerID");

-- ----------------------------
-- Primary Key structure for table RoomSolution
-- ----------------------------
ALTER TABLE "public"."RoomSolution" ADD CONSTRAINT "RoomSolution_pkey" PRIMARY KEY ("roomSolutionID");

-- ----------------------------
-- Primary Key structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "RoomTask_pkey" PRIMARY KEY ("roomTaskID");

-- ----------------------------
-- Foreign Keys structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_roleID_fkey" FOREIGN KEY ("roleID") REFERENCES "public"."Role" ("roleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomCustomer
-- ----------------------------
ALTER TABLE "public"."RoomCustomer" ADD CONSTRAINT "RoomCustomer_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "public"."Customer" ("customerID") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."RoomCustomer" ADD CONSTRAINT "RoomCustomer_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomSolution
-- ----------------------------
ALTER TABLE "public"."RoomSolution" ADD CONSTRAINT "RoomSolution_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table RoomTask
-- ----------------------------
ALTER TABLE "public"."RoomTask" ADD CONSTRAINT "RoomTask_roomID_fkey" FOREIGN KEY ("roomID") REFERENCES "public"."Room" ("roomID") ON DELETE CASCADE ON UPDATE CASCADE;
