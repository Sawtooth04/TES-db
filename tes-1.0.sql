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

 Date: 28/08/2023 17:30:28
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
SELECT setval('"public"."Customer_customerID_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Role_roleID_seq"
OWNED BY "public"."Role"."roleID";
SELECT setval('"public"."Role_roleID_seq"', 6, true);

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerID");

-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE "public"."Role" ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("roleID");

-- ----------------------------
-- Foreign Keys structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_roleID_fkey" FOREIGN KEY ("roleID") REFERENCES "public"."Role" ("roleID") ON DELETE RESTRICT ON UPDATE CASCADE;
