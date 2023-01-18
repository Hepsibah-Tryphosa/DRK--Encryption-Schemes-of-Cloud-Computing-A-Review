/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.16-nt : Database - encryption
*********************************************************************
Server version : 5.0.16-nt
*/


create database if not exists `encryption`;

USE `encryption`;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `pswd` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `cost` varchar(200) default NULL,
  `space` varchar(200) default NULL,
  `status` varchar(100) NOT NULL default 'no',
  `cstatus` varchar(100) default 'no',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ufreq` */

DROP TABLE IF EXISTS `ufreq`;

CREATE TABLE `ufreq` (
  `ftid` int(10) NOT NULL auto_increment,
  `fileid` int(10) default NULL,
  `id` int(10) default NULL,
  `name` varchar(100) default NULL,
  `uemail` varchar(100) default NULL,
  `fname` varchar(100) default NULL,
  `status` varchar(100) default 'no',
  PRIMARY KEY  (`ftid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `fuid` int(10) NOT NULL auto_increment,
  `oid` int(10) default NULL,
  `oname` varchar(100) default NULL,
  `fname` varchar(100) default NULL,
  `ofile` longblob,
  `enfile` longblob,
  `skey` varchar(100) default NULL,
  `ospace` bigint(20) default NULL,
  `fspace` bigint(20) default NULL,
  PRIMARY KEY  (`fuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `pswd` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL default 'no',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
