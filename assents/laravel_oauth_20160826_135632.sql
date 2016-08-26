-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "migrations" -------------------------------
CREATE TABLE `migrations` ( 
	`migration` VarChar( 255 ) NOT NULL,
	`batch` Int( 11 ) NOT NULL )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_access_token_scopes" ----------------
CREATE TABLE `oauth_access_token_scopes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`access_token_id` VarChar( 40 ) NOT NULL,
	`scope_id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_access_tokens" ----------------------
CREATE TABLE `oauth_access_tokens` ( 
	`id` VarChar( 40 ) NOT NULL,
	`session_id` Int( 10 ) UNSIGNED NOT NULL,
	`expire_time` Int( 11 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `oauth_access_tokens_id_session_id_unique` UNIQUE( `id`, `session_id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_auth_code_scopes" -------------------
CREATE TABLE `oauth_auth_code_scopes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`auth_code_id` VarChar( 40 ) NOT NULL,
	`scope_id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_auth_codes" -------------------------
CREATE TABLE `oauth_auth_codes` ( 
	`id` VarChar( 40 ) NOT NULL,
	`session_id` Int( 10 ) UNSIGNED NOT NULL,
	`redirect_uri` VarChar( 255 ) NOT NULL,
	`expire_time` Int( 11 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_client_endpoints" -------------------
CREATE TABLE `oauth_client_endpoints` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`client_id` VarChar( 40 ) NOT NULL,
	`redirect_uri` VarChar( 255 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `oauth_client_endpoints_client_id_redirect_uri_unique` UNIQUE( `client_id`, `redirect_uri` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_client_grants" ----------------------
CREATE TABLE `oauth_client_grants` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`client_id` VarChar( 40 ) NOT NULL,
	`grant_id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_client_scopes" ----------------------
CREATE TABLE `oauth_client_scopes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`client_id` VarChar( 40 ) NOT NULL,
	`scope_id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_clients" ----------------------------
CREATE TABLE `oauth_clients` ( 
	`id` VarChar( 40 ) NOT NULL,
	`secret` VarChar( 40 ) NOT NULL,
	`name` VarChar( 255 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `oauth_clients_id_secret_unique` UNIQUE( `id`, `secret` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_grant_scopes" -----------------------
CREATE TABLE `oauth_grant_scopes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`grant_id` VarChar( 40 ) NOT NULL,
	`scope_id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_grants" -----------------------------
CREATE TABLE `oauth_grants` ( 
	`id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_refresh_tokens" ---------------------
CREATE TABLE `oauth_refresh_tokens` ( 
	`id` VarChar( 40 ) NOT NULL,
	`access_token_id` VarChar( 40 ) NOT NULL,
	`expire_time` Int( 11 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `access_token_id` ),
	CONSTRAINT `oauth_refresh_tokens_id_unique` UNIQUE( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_scopes" -----------------------------
CREATE TABLE `oauth_scopes` ( 
	`id` VarChar( 40 ) NOT NULL,
	`description` VarChar( 255 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_session_scopes" ---------------------
CREATE TABLE `oauth_session_scopes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`session_id` Int( 10 ) UNSIGNED NOT NULL,
	`scope_id` VarChar( 40 ) NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "oauth_sessions" ---------------------------
CREATE TABLE `oauth_sessions` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`client_id` VarChar( 40 ) NOT NULL,
	`owner_type` Enum( 'client', 'user' ) NOT NULL DEFAULT 'user',
	`owner_id` VarChar( 255 ) NOT NULL,
	`client_redirect_uri` VarChar( 255 ) NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- ---------------------------------------------------------


-- CREATE TABLE "password_resets" --------------------------
CREATE TABLE `password_resets` ( 
	`email` VarChar( 255 ) NOT NULL,
	`token` VarChar( 255 ) NOT NULL,
	`created_at` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) NOT NULL,
	`email` VarChar( 255 ) NOT NULL,
	`password` VarChar( 255 ) NOT NULL,
	`remember_token` VarChar( 100 ) NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `users_email_unique` UNIQUE( `email` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 11;
-- ---------------------------------------------------------


-- Dump data of "migrations" -------------------------------
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110151_create_oauth_scopes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110304_create_oauth_grants_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110403_create_oauth_grant_scopes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110459_create_oauth_clients_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110557_create_oauth_client_endpoints_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110705_create_oauth_client_scopes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_110817_create_oauth_client_grants_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111002_create_oauth_sessions_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111109_create_oauth_session_scopes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111254_create_oauth_auth_codes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111403_create_oauth_auth_code_scopes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111518_create_oauth_access_tokens_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111657_create_oauth_access_token_scopes_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_04_24_111810_create_oauth_refresh_tokens_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_10_12_000000_create_users_table', '1' );
INSERT INTO `migrations`(`migration`,`batch`) VALUES ( '2014_10_12_100000_create_password_resets_table', '1' );
-- ---------------------------------------------------------


-- Dump data of "oauth_access_token_scopes" ----------------
-- ---------------------------------------------------------


-- Dump data of "oauth_access_tokens" ----------------------
INSERT INTO `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) VALUES ( '6xLSieKPfTQnkKpvZwauQ4VnDPC4ttgAa6WZ5wKT', '3', '1467770526', '2016-07-06 01:02:08', '2016-07-06 01:02:08' );
INSERT INTO `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) VALUES ( 'bnXDFP3SQOQkDwYdBUSSibfhzNF2c9f6g0ViQFrh', '1', '1467769312', '2016-07-06 00:41:52', '2016-07-06 00:41:52' );
INSERT INTO `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) VALUES ( 'jiOWQGFqkqab4IXttg34PqcihimxciHsEeKqZ5DG', '4', '1467816743', '2016-07-06 13:52:23', '2016-07-06 13:52:23' );
INSERT INTO `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) VALUES ( 'k8iJhLwaAc5RDRm41P54uo6dshozJ5q000obfKah', '2', '1467770158', '2016-07-06 00:55:58', '2016-07-06 00:55:58' );
INSERT INTO `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) VALUES ( 'QK68hu2p7xz5pkkDsbmvju1sjJzYwZPAi8T0oHxT', '5', '1467817866', '2016-07-06 14:11:07', '2016-07-06 14:11:07' );
INSERT INTO `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) VALUES ( 'R2Yjkt8qSnKEiLAnOFqXSxbyrJ6q6MmHIY6SVNeY', '6', '1467818165', '2016-07-06 14:16:05', '2016-07-06 14:16:05' );
-- ---------------------------------------------------------


-- Dump data of "oauth_auth_code_scopes" -------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_auth_codes" -------------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_client_endpoints" -------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_client_grants" ----------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_client_scopes" ----------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_clients" ----------------------------
INSERT INTO `oauth_clients`(`id`,`secret`,`name`,`created_at`,`updated_at`) VALUES ( '1', 'secret', 'app', '2016-06-07 17:37:35', '2016-06-07 17:37:35' );
INSERT INTO `oauth_clients`(`id`,`secret`,`name`,`created_at`,`updated_at`) VALUES ( 'f3d259ddd3ed8ff3843839b', '4c7f6f8fa93d59c45502c0ae8c4a95b', 'Main website', '0000-00-00 00:00:00', '0000-00-00 00:00:00' );
-- ---------------------------------------------------------


-- Dump data of "oauth_grant_scopes" -----------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_grants" -----------------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_refresh_tokens" ---------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_scopes" -----------------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_session_scopes" ---------------------
-- ---------------------------------------------------------


-- Dump data of "oauth_sessions" ---------------------------
INSERT INTO `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) VALUES ( '1', 'f3d259ddd3ed8ff3843839b', 'user', '1', NULL, '2016-07-06 00:41:52', '2016-07-06 00:41:52' );
INSERT INTO `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) VALUES ( '2', 'f3d259ddd3ed8ff3843839b', 'user', '1', NULL, '2016-07-06 00:55:58', '2016-07-06 00:55:58' );
INSERT INTO `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) VALUES ( '3', 'f3d259ddd3ed8ff3843839b', 'user', '1', NULL, '2016-07-06 01:02:06', '2016-07-06 01:02:06' );
INSERT INTO `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) VALUES ( '4', 'f3d259ddd3ed8ff3843839b', 'user', '1', NULL, '2016-07-06 13:52:23', '2016-07-06 13:52:23' );
INSERT INTO `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) VALUES ( '5', 'f3d259ddd3ed8ff3843839b', 'user', '6', NULL, '2016-07-06 14:11:06', '2016-07-06 14:11:06' );
INSERT INTO `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) VALUES ( '6', 'f3d259ddd3ed8ff3843839b', 'user', '10', NULL, '2016-07-06 14:16:05', '2016-07-06 14:16:05' );
-- ---------------------------------------------------------


-- Dump data of "password_resets" --------------------------
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '1', 'test user', 'test@test.com', '$2y$10$t6kHYqOdVPjRQFJ.e0jG1.Lc9fxoyhhpvimx1AtbtJB5E4NT0z6aK', NULL, '2016-07-05 23:12:01', '2016-07-05 23:12:01' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '3', 'test_user', 'test_@test.com', '$2y$10$/6eUTBO4wiDBiTIHfv1aru2N8jleN2PDSlTWDnqnAq51kDkARL2au', NULL, '2016-07-05 23:13:24', '2016-07-05 23:13:24' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '6', 'vitordangelo', 'vitordangelo@gmail.com', '$2y$10$1NG9EwuMBeeUQ1oekCBovOG8/PDS7DfaVOo5GCTq1wBOBVRZPGndS', NULL, '2016-07-06 13:56:56', '2016-07-06 13:56:56' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '7', 'vitordangelo', 'vitordangelo1@gmail.com', '$2y$10$ykfQ6ZHLH3SKp.0ho5gAWOe.JnpgqooGkRBdwc3dhJGFy9oziNR8.', NULL, '2016-07-06 13:57:07', '2016-07-06 13:57:07' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '8', 'vitordangelo', 'vitordangelo2@gmail.com', '$2y$10$PIcSvalBUpsJyoJSUFq38ec0dum9TiMv7KvVQWVl0ibJHToRq0H9S', NULL, '2016-07-06 13:57:11', '2016-07-06 13:57:11' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '9', 'vitordangelo', 'vitordangelo3@gmail.com', '$2y$10$jFZas0Nl5QNqY7EmVVG23uiLahJ/i1Gu8nDND9KpLX2NFRFKaoMjS', NULL, '2016-07-06 13:57:14', '2016-07-06 13:57:14' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES ( '10', 'vitordangelo', 'vitordangelo10@gmail.com', '$2y$10$zbnZ1gvRYrdQ/Y7Uxnb.M.BfZbNZD.BSnFWV5WqNutD/FjitTOq76', NULL, '2016-07-06 14:15:27', '2016-07-06 14:15:27' );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_access_token_scopes_access_token_id_index" 
CREATE INDEX `oauth_access_token_scopes_access_token_id_index` USING BTREE ON `oauth_access_token_scopes`( `access_token_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_access_token_scopes_scope_id_index" -
CREATE INDEX `oauth_access_token_scopes_scope_id_index` USING BTREE ON `oauth_access_token_scopes`( `scope_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_access_tokens_session_id_index" -----
CREATE INDEX `oauth_access_tokens_session_id_index` USING BTREE ON `oauth_access_tokens`( `session_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_auth_code_scopes_auth_code_id_index" 
CREATE INDEX `oauth_auth_code_scopes_auth_code_id_index` USING BTREE ON `oauth_auth_code_scopes`( `auth_code_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_auth_code_scopes_scope_id_index" ----
CREATE INDEX `oauth_auth_code_scopes_scope_id_index` USING BTREE ON `oauth_auth_code_scopes`( `scope_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_auth_codes_session_id_index" --------
CREATE INDEX `oauth_auth_codes_session_id_index` USING BTREE ON `oauth_auth_codes`( `session_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_client_grants_client_id_index" ------
CREATE INDEX `oauth_client_grants_client_id_index` USING BTREE ON `oauth_client_grants`( `client_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_client_grants_grant_id_index" -------
CREATE INDEX `oauth_client_grants_grant_id_index` USING BTREE ON `oauth_client_grants`( `grant_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_client_scopes_client_id_index" ------
CREATE INDEX `oauth_client_scopes_client_id_index` USING BTREE ON `oauth_client_scopes`( `client_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_client_scopes_scope_id_index" -------
CREATE INDEX `oauth_client_scopes_scope_id_index` USING BTREE ON `oauth_client_scopes`( `scope_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_grant_scopes_grant_id_index" --------
CREATE INDEX `oauth_grant_scopes_grant_id_index` USING BTREE ON `oauth_grant_scopes`( `grant_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_grant_scopes_scope_id_index" --------
CREATE INDEX `oauth_grant_scopes_scope_id_index` USING BTREE ON `oauth_grant_scopes`( `scope_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_session_scopes_scope_id_index" ------
CREATE INDEX `oauth_session_scopes_scope_id_index` USING BTREE ON `oauth_session_scopes`( `scope_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_session_scopes_session_id_index" ----
CREATE INDEX `oauth_session_scopes_session_id_index` USING BTREE ON `oauth_session_scopes`( `session_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "oauth_sessions_client_id_owner_type_owner_id_index" 
CREATE INDEX `oauth_sessions_client_id_owner_type_owner_id_index` USING BTREE ON `oauth_sessions`( `client_id`, `owner_type`, `owner_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "password_resets_email_index" --------------
CREATE INDEX `password_resets_email_index` USING BTREE ON `password_resets`( `email` );
-- ---------------------------------------------------------


-- CREATE INDEX "password_resets_token_index" --------------
CREATE INDEX `password_resets_token_index` USING BTREE ON `password_resets`( `token` );
-- ---------------------------------------------------------


-- CREATE LINK "oauth_access_token_scopes_access_token_id_foreign" 
ALTER TABLE `oauth_access_token_scopes`
	ADD CONSTRAINT `oauth_access_token_scopes_access_token_id_foreign` FOREIGN KEY ( `access_token_id` )
	REFERENCES `oauth_access_tokens`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_access_token_scopes_scope_id_foreign" 
ALTER TABLE `oauth_access_token_scopes`
	ADD CONSTRAINT `oauth_access_token_scopes_scope_id_foreign` FOREIGN KEY ( `scope_id` )
	REFERENCES `oauth_scopes`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_access_tokens_session_id_foreign" ----
ALTER TABLE `oauth_access_tokens`
	ADD CONSTRAINT `oauth_access_tokens_session_id_foreign` FOREIGN KEY ( `session_id` )
	REFERENCES `oauth_sessions`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_auth_code_scopes_auth_code_id_foreign" 
ALTER TABLE `oauth_auth_code_scopes`
	ADD CONSTRAINT `oauth_auth_code_scopes_auth_code_id_foreign` FOREIGN KEY ( `auth_code_id` )
	REFERENCES `oauth_auth_codes`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_auth_code_scopes_scope_id_foreign" ---
ALTER TABLE `oauth_auth_code_scopes`
	ADD CONSTRAINT `oauth_auth_code_scopes_scope_id_foreign` FOREIGN KEY ( `scope_id` )
	REFERENCES `oauth_scopes`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_auth_codes_session_id_foreign" -------
ALTER TABLE `oauth_auth_codes`
	ADD CONSTRAINT `oauth_auth_codes_session_id_foreign` FOREIGN KEY ( `session_id` )
	REFERENCES `oauth_sessions`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_client_endpoints_client_id_foreign" --
ALTER TABLE `oauth_client_endpoints`
	ADD CONSTRAINT `oauth_client_endpoints_client_id_foreign` FOREIGN KEY ( `client_id` )
	REFERENCES `oauth_clients`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_client_grants_client_id_foreign" -----
ALTER TABLE `oauth_client_grants`
	ADD CONSTRAINT `oauth_client_grants_client_id_foreign` FOREIGN KEY ( `client_id` )
	REFERENCES `oauth_clients`( `id` )
	ON DELETE Cascade
	ON UPDATE No Action;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_client_grants_grant_id_foreign" ------
ALTER TABLE `oauth_client_grants`
	ADD CONSTRAINT `oauth_client_grants_grant_id_foreign` FOREIGN KEY ( `grant_id` )
	REFERENCES `oauth_grants`( `id` )
	ON DELETE Cascade
	ON UPDATE No Action;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_client_scopes_client_id_foreign" -----
ALTER TABLE `oauth_client_scopes`
	ADD CONSTRAINT `oauth_client_scopes_client_id_foreign` FOREIGN KEY ( `client_id` )
	REFERENCES `oauth_clients`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_client_scopes_scope_id_foreign" ------
ALTER TABLE `oauth_client_scopes`
	ADD CONSTRAINT `oauth_client_scopes_scope_id_foreign` FOREIGN KEY ( `scope_id` )
	REFERENCES `oauth_scopes`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_grant_scopes_grant_id_foreign" -------
ALTER TABLE `oauth_grant_scopes`
	ADD CONSTRAINT `oauth_grant_scopes_grant_id_foreign` FOREIGN KEY ( `grant_id` )
	REFERENCES `oauth_grants`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_grant_scopes_scope_id_foreign" -------
ALTER TABLE `oauth_grant_scopes`
	ADD CONSTRAINT `oauth_grant_scopes_scope_id_foreign` FOREIGN KEY ( `scope_id` )
	REFERENCES `oauth_scopes`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_refresh_tokens_access_token_id_foreign" 
ALTER TABLE `oauth_refresh_tokens`
	ADD CONSTRAINT `oauth_refresh_tokens_access_token_id_foreign` FOREIGN KEY ( `access_token_id` )
	REFERENCES `oauth_access_tokens`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_session_scopes_scope_id_foreign" -----
ALTER TABLE `oauth_session_scopes`
	ADD CONSTRAINT `oauth_session_scopes_scope_id_foreign` FOREIGN KEY ( `scope_id` )
	REFERENCES `oauth_scopes`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_session_scopes_session_id_foreign" ---
ALTER TABLE `oauth_session_scopes`
	ADD CONSTRAINT `oauth_session_scopes_session_id_foreign` FOREIGN KEY ( `session_id` )
	REFERENCES `oauth_sessions`( `id` )
	ON DELETE Cascade
	ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "oauth_sessions_client_id_foreign" ----------
ALTER TABLE `oauth_sessions`
	ADD CONSTRAINT `oauth_sessions_client_id_foreign` FOREIGN KEY ( `client_id` )
	REFERENCES `oauth_clients`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


