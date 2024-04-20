-- MySQL dump 10.13  Distrib 5.7.8-rc, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	5.7.8-rc
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
-- Drop database
DROP DATABASE IF EXISTS hbnb_dev_db;
-- Create database + user if doesn't exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER IF NOT EXISTS 'hbnb_dev' @'localhost';
SET PASSWORD FOR 'hbnb_dev' @'localhost' = 'hbnb_dev_pwd';
GRANT ALL ON hbnb_dev_db.* TO 'hbnb_dev' @'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_dev' @'localhost';
FLUSH PRIVILEGES;
USE hbnb_dev_db;
--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `cities` WRITE;
INSERT INTO `cities`
VALUES (
    '521a55f4-7d82-47d9-b54c-a76916479545',
    '2017-03-25 19:42:40',
    '2017-03-25 19:42:40',
    'Akron',
    '421a55f4-7d82-47d9-b54c-a76916479545'
  ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479546',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Douglas',
      '421a55f4-7d82-47d9-b54c-a76916479546'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'San Francisco',
      '421a55f4-7d82-47d9-b54c-a76916479547'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479548',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Denver',
      '421a55f4-7d82-47d9-b54c-a76916479548'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479549',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Miami',
      '421a55f4-7d82-47d9-b54c-a76916479549'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479551',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Honolulu',
      '421a55f4-7d82-47d9-b54c-a76916479551'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479552',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Chicago',
      '421a55f4-7d82-47d9-b54c-a76916479552'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479554',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'New Orleans',
      '421a55f4-7d82-47d9-b54c-a76916479554'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479555',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Saint Paul',
      '421a55f4-7d82-47d9-b54c-a76916479555'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479556',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Jackson',
      '421a55f4-7d82-47d9-b54c-a76916479556'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479557',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Portland',
      '421a55f4-7d82-47d9-b54c-a76916479557'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479545',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Babbie',
      '421a55f4-7d82-47d9-b54c-a76916479545'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479546',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Kearny',
      '421a55f4-7d82-47d9-b54c-a76916479546'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'San Jose',
      '421a55f4-7d82-47d9-b54c-a76916479547'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479549',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Orlando',
      '421a55f4-7d82-47d9-b54c-a76916479549'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479551',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Kailua',
      '421a55f4-7d82-47d9-b54c-a76916479551'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479552',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Peoria',
      '421a55f4-7d82-47d9-b54c-a76916479552'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479554',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Baton rouge',
      '421a55f4-7d82-47d9-b54c-a76916479554'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479556',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Tupelo',
      '421a55f4-7d82-47d9-b54c-a76916479556'
    ),
  (
      '531a55f4-7d82-47d9-b54c-a76916479557',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Eugene',
      '421a55f4-7d82-47d9-b54c-a76916479557'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479545',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Calera',
      '421a55f4-7d82-47d9-b54c-a76916479545'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479546',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Tempe',
      '421a55f4-7d82-47d9-b54c-a76916479546'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Fremont',
      '421a55f4-7d82-47d9-b54c-a76916479547'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479551',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Pearl city',
      '421a55f4-7d82-47d9-b54c-a76916479551'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479552',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Naperville',
      '421a55f4-7d82-47d9-b54c-a76916479552'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479554',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Lafayette',
      '421a55f4-7d82-47d9-b54c-a76916479554'
    ),
  (
      '541a55f4-7d82-47d9-b54c-a76916479556',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Meridian',
      '421a55f4-7d82-47d9-b54c-a76916479556'
    ),
  (
      '551a55f4-7d82-47d9-b54c-a76916479545',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Fairfield',
      '421a55f4-7d82-47d9-b54c-a76916479545'
    ),
  (
      '551a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Napa',
      '421a55f4-7d82-47d9-b54c-a76916479547'
    ),
  (
      '551a55f4-7d82-47d9-b54c-a76916479552',
      '2017-03-25 19:42:41',
      '2017-03-25 19:42:41',
      'Urbana',
      '421a55f4-7d82-47d9-b54c-a76916479552'
    ),
  (
      '561a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Sonoma',
      '421a55f4-7d82-47d9-b54c-a76916479547'
    ),
  (
    '561a55f4-7d82-47d9-b54c-a76916479552',
    '2017-03-25 19:42:41',
    '2017-03-25 19:42:41',
    'Joliet',
    '421a55f4-7d82-47d9-b54c-a76916479552'
  );
UNLOCK TABLES;


DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `states` WRITE;
INSERT INTO `states`
VALUES (
    '421a55f4-7d82-47d9-b54c-a76916479545',
    '2017-03-25 19:42:40',
    '2017-03-25 19:42:40',
    'Alabama'
  ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479546',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Arizona'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'California'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479548',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Colorado'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479549',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Florida'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479550',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Georgia'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479551',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Hawaii'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479552',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Illinois'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479553',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Indiana'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479554',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Louisiana'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479555',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Minnesota'
    ),
  (
      '421a55f4-7d82-47d9-b54c-a76916479556',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Mississippi'
    ),
  (
    '421a55f4-7d82-47d9-b54c-a76916479557',
    '2017-03-25 19:42:40',
    '2017-03-25 19:42:40',
    'Oregon'
);
UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `users` WRITE;
INSERT INTO `users`
VALUES (
    '521a55f4-7d82-47d9-b54c-a76916479545',
    '2017-03-25 19:42:40',
    '2017-03-25 19:42:40',
    '[email protected]',
    'password',
    'John',
    'Doe'
  ),
  (
    '521a55f4-7d82-47d9-b54c-a76916479546',
    '2017-03-25 19:42:40',
    '2017-03-25 19:42:40',
    '[email protected]',
    'password',
    'Jane',
    'Doe'
  );
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */

-- Dump completed on 2017-03-25 19:42:51
CREATE TABLE `places` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  `description` text,
  `number_rooms` int(11) NOT NULL DEFAULT '0',
  `number_bathrooms` int(11) NOT NULL DEFAULT '0',
  `max_guest` int(11) NOT NULL DEFAULT '0',
  `price_by_night` int(11) NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */
;
INSERT INTO `places`
VALUES (
    '521a55f4-7d82-47d9-b54c-a76916479545',
    '2017-03-25 19:42:40',
    '2017-03-25 19:42:40',
    'House in Akron',
    'This is a house in Akron',
    3,
    2,
    6,
    100,
    41.081444,
    -81.519005,
    '521a55f4-7d82-47d9-b54c-a76916479545',
    '521a55f4-7d82-47d9-b54c-a76916479545'
  ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479546',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'Apartment in Douglas',
      'This is an apartment in Douglas',
      2,
      1,
      4,
      80,
      31.344742,
      -109.545451,
      '521a55f4-7d82-47d9-b54c-a76916479546',
      '521a55f4-7d82-47d9-b54c-a76916479546'
    ),
  (
      '521a55f4-7d82-47d9-b54c-a76916479547',
      '2017-03-25 19:42:40',
      '2017-03-25 19:42:40',
      'House in San Francisco',
      'This is a house in San Francisco',
      4,
      3,
      8,
      150,
      37.774929,
      -122.419416,
      '521a55f4-7d82-47d9-b54c-a76916479547',
      '521a55f4-7d82-47d9-b54c-a76916479547'
    ),
  (
    '521a55f4-7d82-47d9-b54c-a76916479548',
    '2017-03-25 19:42:41',
    '2017-03-25 19:42:41',
    'Apartment in Denver',
    'This is an apartment in Denver',
    1,
    1,
    2,
    50,
    39.739236,
    -104.990251,
    '521a55f4-7d82-47d9-b54c-a76916479548',
    '521a55f4-7d82-47d9-b54c-a76916479548'
  );
/*!40000 ALTER TABLE `places` ENABLE KEYS */
;
UNLOCK TABLES;

CREATE TABLE `amenities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `amenities` WRITE;

UNLOCK TABLES;
DROP TABLE IF EXISTS `places_amenities`;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`, `amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `places_amenities` WRITE;
UNLOCK TABLES;

CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
LOCK TABLES `reviews` WRITE;
UNLOCK TABLES;

