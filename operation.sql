# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.34)
# Database: operation
# Generation Time: 2016-12-29 08:29:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table M_RESOURCE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `M_RESOURCE`;

CREATE TABLE `M_RESOURCE` (
  `RESOURCE_ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `RESOURCE_NAME` varchar(128) DEFAULT NULL COMMENT '资源名称',
  `RESOURCE_DESC` varchar(128) DEFAULT NULL COMMENT '资源描述',
  `RESOURCE_TYPE` char(4) DEFAULT '0' COMMENT '资源类型',
  `IS_ENABLED` char(4) DEFAULT '1' COMMENT '是否可用',
  `SHOW_NAV` char(4) DEFAULT '0' COMMENT '是否显示',
  `GRADE` char(4) DEFAULT '0' COMMENT '菜单级别',
  `PRJ_TYPE` char(4) DEFAULT '0',
  `SORT_INDEX` int(11) DEFAULT '0' COMMENT '排序',
  `PARENT_ID` int(11) DEFAULT '0',
  `RESOURCE_STRING` varchar(128) NOT NULL DEFAULT '' COMMENT '资源url',
  `CREATE_USER` varchar(128) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源表';

LOCK TABLES `M_RESOURCE` WRITE;
/*!40000 ALTER TABLE `M_RESOURCE` DISABLE KEYS */;

INSERT INTO `M_RESOURCE` (`RESOURCE_ID`, `RESOURCE_NAME`, `RESOURCE_DESC`, `RESOURCE_TYPE`, `IS_ENABLED`, `SHOW_NAV`, `GRADE`, `PRJ_TYPE`, `SORT_INDEX`, `PARENT_ID`, `RESOURCE_STRING`, `CREATE_USER`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(1,'用户管理','用户管理','LIMB','1','1','1','0',10,0,'用户管理',NULL,'2016-12-28 20:01:10','2016-12-29 15:27:18'),
	(2,'用户列表','用户列表','URL','1','1','2','0',1,1,'user/list',NULL,'2016-12-28 20:01:53','2016-12-29 15:04:05'),
	(3,'菜单列表','菜单列表','URL','1','1','2','0',2,1,'resource/list',NULL,'2016-12-29 14:04:02','2016-12-29 15:04:19'),
	(4,'角色列表','角色列表','URL','1','1','2','0',3,1,'role/list',NULL,'2016-12-29 14:05:23','2016-12-29 15:04:24'),
	(5,'权限列表','权限列表','URL','1','1','2','0',4,1,'authorities/list',NULL,'2016-12-29 14:06:16','2016-12-29 15:04:29');

/*!40000 ALTER TABLE `M_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table M_USERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `M_USERS`;

CREATE TABLE `M_USERS` (
  `USER_ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `USER_NAME` varchar(64) DEFAULT NULL COMMENT '用户名称',
  `PSWD` varchar(128) DEFAULT NULL COMMENT '用户密码',
  `USER_STATUS` char(2) NOT NULL DEFAULT '0' COMMENT '用户状态 0正常 1冻结',
  `IS_ADMIN` char(2) NOT NULL DEFAULT '0' COMMENT '是否是管理员 0 否 1是',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

LOCK TABLES `M_USERS` WRITE;
/*!40000 ALTER TABLE `M_USERS` DISABLE KEYS */;

INSERT INTO `M_USERS` (`USER_ID`, `USER_NAME`, `PSWD`, `USER_STATUS`, `IS_ADMIN`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(1,'admin@qq.com','64e8470e6ccf701fa5634295a2e71d54','0','1','2016-12-28 18:36:22','2016-12-28 19:59:36');

/*!40000 ALTER TABLE `M_USERS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T_ATR_AUTHORITIES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T_ATR_AUTHORITIES`;

CREATE TABLE `T_ATR_AUTHORITIES` (
  `AUTHORITIES_ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `AUTH_NAME` varchar(64) DEFAULT NULL COMMENT '权限名称',
  `AUTH_DESC` varchar(128) DEFAULT NULL COMMENT '权限描述',
  `IS_ENABLED` char(4) DEFAULT '1' COMMENT '是否可用',
  `IS_DEFAULT` char(4) DEFAULT '0',
  `PRJ_TYPE` char(4) DEFAULT '0',
  `AUTH_MODULE_ID` int(11) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`AUTHORITIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

LOCK TABLES `T_ATR_AUTHORITIES` WRITE;
/*!40000 ALTER TABLE `T_ATR_AUTHORITIES` DISABLE KEYS */;

INSERT INTO `T_ATR_AUTHORITIES` (`AUTHORITIES_ID`, `AUTH_NAME`, `AUTH_DESC`, `IS_ENABLED`, `IS_DEFAULT`, `PRJ_TYPE`, `AUTH_MODULE_ID`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(1,'用户管理','用户管理','1','0','0',1,'2016-12-29 13:51:59','2016-12-29 15:42:41'),
	(2,'用户管理-用户列表','用户列表','1','0','0',1,'2016-12-29 15:13:55','2016-12-29 15:27:00'),
	(3,'用户管理-角色列表','角色列表','1','0','0',1,'2016-12-29 15:14:17','2016-12-29 15:17:04'),
	(4,'用户管理-菜单列表','菜单列表','1','0','0',1,'2016-12-29 15:14:30','2016-12-29 15:17:09'),
	(5,'用户管理-权限模块列表','权限模块列表','1','0','0',1,'2016-12-29 15:14:52','2016-12-29 15:17:14'),
	(6,'用户管理-权限列表','权限列表','1','0','0',1,'2016-12-29 15:15:09','2016-12-29 15:17:19');

/*!40000 ALTER TABLE `T_ATR_AUTHORITIES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T_ATR_AUTHORITIES_MODULE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T_ATR_AUTHORITIES_MODULE`;

CREATE TABLE `T_ATR_AUTHORITIES_MODULE` (
  `AUTH_MODULE_ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限模块id',
  `AUTH_MODULE_NAME` varchar(64) DEFAULT NULL COMMENT '名称',
  `PRJ_TYPE` char(2) NOT NULL DEFAULT '0',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`AUTH_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限模块表';

LOCK TABLES `T_ATR_AUTHORITIES_MODULE` WRITE;
/*!40000 ALTER TABLE `T_ATR_AUTHORITIES_MODULE` DISABLE KEYS */;

INSERT INTO `T_ATR_AUTHORITIES_MODULE` (`AUTH_MODULE_ID`, `AUTH_MODULE_NAME`, `PRJ_TYPE`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(1,'用户模块','0','2016-12-29 15:12:29','2016-12-29 15:12:29');

/*!40000 ALTER TABLE `T_ATR_AUTHORITIES_MODULE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T_ATR_AUTHORITIES_ROLES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T_ATR_AUTHORITIES_ROLES`;

CREATE TABLE `T_ATR_AUTHORITIES_ROLES` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色id',
  `AUTHORITIES_ID` int(11) DEFAULT NULL COMMENT '权限id',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限和角色关联表';

LOCK TABLES `T_ATR_AUTHORITIES_ROLES` WRITE;
/*!40000 ALTER TABLE `T_ATR_AUTHORITIES_ROLES` DISABLE KEYS */;

INSERT INTO `T_ATR_AUTHORITIES_ROLES` (`ID`, `ROLE_ID`, `AUTHORITIES_ID`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(11,1,1,'2016-12-29 15:18:31','2016-12-29 15:18:31'),
	(12,1,6,'2016-12-29 15:18:31','2016-12-29 15:18:31'),
	(13,1,5,'2016-12-29 15:18:31','2016-12-29 15:18:31'),
	(14,1,2,'2016-12-29 15:18:31','2016-12-29 15:18:31'),
	(15,1,4,'2016-12-29 15:18:31','2016-12-29 15:18:31'),
	(16,1,3,'2016-12-29 15:18:31','2016-12-29 15:18:31');

/*!40000 ALTER TABLE `T_ATR_AUTHORITIES_ROLES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T_ATR_RESOURCE_AUTHORITIES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T_ATR_RESOURCE_AUTHORITIES`;

CREATE TABLE `T_ATR_RESOURCE_AUTHORITIES` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `AUTHORITIES_ID` int(11) DEFAULT NULL COMMENT '权限id',
  `RESOURCE_ID` int(11) DEFAULT NULL COMMENT '资源id',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限和资源关联表';

LOCK TABLES `T_ATR_RESOURCE_AUTHORITIES` WRITE;
/*!40000 ALTER TABLE `T_ATR_RESOURCE_AUTHORITIES` DISABLE KEYS */;

INSERT INTO `T_ATR_RESOURCE_AUTHORITIES` (`ID`, `AUTHORITIES_ID`, `RESOURCE_ID`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(7,2,1,'2016-12-29 15:26:59','2016-12-29 15:26:59'),
	(8,1,1,'2016-12-29 15:42:40','2016-12-29 15:42:40'),
	(9,1,2,'2016-12-29 15:42:40','2016-12-29 15:42:40'),
	(10,1,3,'2016-12-29 15:42:40','2016-12-29 15:42:40'),
	(11,1,4,'2016-12-29 15:42:40','2016-12-29 15:42:40'),
	(12,1,5,'2016-12-29 15:42:40','2016-12-29 15:42:40');

/*!40000 ALTER TABLE `T_ATR_RESOURCE_AUTHORITIES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T_ATR_ROLES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T_ATR_ROLES`;

CREATE TABLE `T_ATR_ROLES` (
  `ROLE_ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `ROLE_NAME` varchar(64) DEFAULT NULL COMMENT '角色名称',
  `IS_DEFAULT` char(4) DEFAULT '0',
  `PRJ_TYPE` char(4) DEFAULT '0',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

LOCK TABLES `T_ATR_ROLES` WRITE;
/*!40000 ALTER TABLE `T_ATR_ROLES` DISABLE KEYS */;

INSERT INTO `T_ATR_ROLES` (`ROLE_ID`, `ROLE_NAME`, `IS_DEFAULT`, `PRJ_TYPE`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(1,'admin','0','0','2016-12-29 13:51:42','2016-12-29 15:18:31');

/*!40000 ALTER TABLE `T_ATR_ROLES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T_ATR_USERS_ROLES
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T_ATR_USERS_ROLES`;

CREATE TABLE `T_ATR_USERS_ROLES` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `USER_ID` int(11) DEFAULT NULL COMMENT '用户id',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色id',
  `CREATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATED_AT` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

LOCK TABLES `T_ATR_USERS_ROLES` WRITE;
/*!40000 ALTER TABLE `T_ATR_USERS_ROLES` DISABLE KEYS */;

INSERT INTO `T_ATR_USERS_ROLES` (`ID`, `USER_ID`, `ROLE_ID`, `CREATED_AT`, `UPDATED_AT`)
VALUES
	(1,1,1,'2016-12-29 13:52:12','2016-12-29 13:52:12'),
	(2,2,1,'2016-12-29 15:09:19','2016-12-29 15:09:19');

/*!40000 ALTER TABLE `T_ATR_USERS_ROLES` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;