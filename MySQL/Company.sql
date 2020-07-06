-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.15-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for varzeshsoft
CREATE DATABASE IF NOT EXISTS `varzeshsoft` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `varzeshsoft`;

-- Dumping structure for table varzeshsoft.company
CREATE TABLE IF NOT EXISTS `company` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ServerAddress` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `SupporterName` varchar(50) NOT NULL,
  `SupporterPhone` varchar(15) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `GenderType` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  `CreateShamsiDate` varchar(10) NOT NULL,
  `ExpireDate` date NOT NULL,
  `ExpireShamsiDate` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table varzeshsoft.company: ~5 rows (approximately)
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`ID`, `ServerAddress`, `Name`, `PhoneNumber`, `SupporterName`, `SupporterPhone`, `Address`, `Email`, `GenderType`, `CreateDateTime`, `CreateShamsiDate`, `ExpireDate`, `ExpireShamsiDate`) VALUES
	(1, 'http://5.202.192.147:4000', 'هتل بزرگ ارم', '09128056148', 'پدرام پورمهر', '09123253471', 'حقانی', 'a@b.com', 3, '2019-05-19 19:03:19', '1398/02/01', '2020-05-19', '1399/02/01'),
	(2, 'http://5.202.192.147:4000', 'تهران جیم', '09128056148', 'پدرام پورمهر', '09123253471', 'آجودانیه', 'a@b.com', 3, '2019-05-19 19:15:06', '1398/02/01', '2020-05-19', '1399/02/01'),
	(3, 'http://5.202.192.147:4000', 'اسپا هانا', '09128056148', 'پدرام پورمهر', '09123253471', 'ازگل', 'a@b.com', 3, '2019-05-19 19:17:33', '1398/02/01', '2020-05-19', '1399/02/01'),
	(4, 'http://5.202.192.147:4000', 'نارین', '0912805618', 'پدرام پورمهر', '09123253471', 'ازگل', 'a@b.com', 3, '2019-05-19 19:20:06', '1398/02/01', '2020-05-19', '1399/02/01'),
	(5, 'http://5.202.192.147:4000', 'آر یو', '09128056148', 'پدرام پورمهر', '09123253471', 'ازگل', 'a@b.com', 3, '2019-05-19 19:22:42', '1398/02/01', '2020-05-19', '1399/02/01');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
