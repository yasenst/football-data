-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for football_db2
CREATE DATABASE IF NOT EXISTS `football_db2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `football_db2`;

-- Dumping structure for table football_db2.fixtures
CREATE TABLE IF NOT EXISTS `fixtures` (
  `fixtureid` bigint(20) NOT NULL AUTO_INCREMENT,
  `away_team` varchar(255) DEFAULT NULL,
  `away_team_score` int(11) NOT NULL,
  `fixture_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `home_team` varchar(255) DEFAULT NULL,
  `home_team_score` int(11) NOT NULL,
  `leagueid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fixtureid`),
  KEY `FKimmihb19l3wdr2d6ermnxchgw` (`leagueid`),
  CONSTRAINT `FKimmihb19l3wdr2d6ermnxchgw` FOREIGN KEY (`leagueid`) REFERENCES `leagues` (`leagueid`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- Dumping data for table football_db2.fixtures: ~54 rows (approximately)
/*!40000 ALTER TABLE `fixtures` DISABLE KEYS */;
INSERT INTO `fixtures` (`fixtureid`, `away_team`, `away_team_score`, `fixture_date`, `home_team`, `home_team_score`, `leagueid`) VALUES
	(5, 'Everton', 1, '2020-09-23 00:25:48', 'Bournemouth', 3, 1),
	(10, 'Man City', 5, '2020-01-27 03:17:12', 'West Ham', 0, 1),
	(11, 'Sheffield United', 1, '2020-01-27 03:17:31', 'Bournemouth', 1, 1),
	(12, 'Everton', 3, '2020-01-27 03:17:52', 'Crystal Palace ', 0, 1),
	(13, 'Brighton', 3, '2020-01-27 03:18:07', 'Watford', 0, 1),
	(14, 'Aston Villa', 1, '2020-01-27 03:18:22', 'Spurs', 3, 1),
	(15, 'Wolves', 0, '2020-01-27 03:18:56', 'Leicester City', 0, 1),
	(16, 'Arsenal', 1, '2020-01-27 03:19:07', 'Newcastle United', 0, 1),
	(17, 'Chelsea', 0, '2020-01-27 03:19:20', 'Man Utd', 4, 1),
	(18, 'Burnley', 1, '2020-01-27 03:19:36', 'Arsenal', 2, 1),
	(19, 'Bournemouth', 2, '2020-01-27 03:19:48', 'Aston Villa', 1, 1),
	(22, 'West Ham', 1, '2020-01-27 03:20:01', 'Brighton', 1, 1),
	(23, 'Watford', 0, '2020-01-27 03:20:11', 'Everton', 1, 1),
	(24, 'Spurs', 2, '2020-01-27 03:21:14', 'Man City ', 2, 1),
	(25, 'Crystal Palace', 0, '2020-01-27 03:21:30', 'Sheffield United', 1, 1),
	(26, 'Leicester City', 1, '2020-01-27 03:22:01', 'Chelsea', 1, 1),
	(27, 'Man Utd', 1, '2020-01-27 03:22:18', 'Wolves', 1, 1),
	(28, 'Chelsea', 3, '2020-01-27 03:22:44', 'Norwich City', 2, 1),
	(29, 'Southampton', 2, '2020-01-27 03:22:55', 'Brighton', 0, 1),
	(30, 'Crystal Palace', 2, '2020-01-27 03:23:11', 'Man Utd', 1, 1),
	(31, 'Leicester City', 2, '2020-01-27 03:23:23', 'Sheffield United', 1, 1),
	(32, 'West Ham', 3, '2020-01-27 03:23:34', 'Watford ', 1, 1),
	(33, 'Arsenal', 1, '2020-01-27 03:24:00', 'Liverpool', 3, 1),
	(34, 'Man City', 3, '2020-01-27 03:24:21', 'Bournemouth', 1, 1),
	(35, 'Newcastle United', 1, '2020-01-27 03:24:48', 'Spurs', 0, 1),
	(36, 'Burnley', 1, '2020-01-27 03:24:58', 'Wolves', 1, 1),
	(37, 'Man Utd', 1, '2020-01-27 03:25:10', 'Southampton', 1, 1),
	(38, 'Sheffield United', 2, '2020-01-27 03:25:23', 'Chelsea', 2, 1),
	(39, 'Aston Villa', 0, '2020-01-27 03:25:37', 'Crystal Palace', 1, 1),
	(40, 'Bournemouth', 1, '2020-01-27 03:25:53', 'Leicester City', 3, 1),
	(41, 'Watford', 1, '2020-01-27 03:26:18', 'Newcastle United', 1, 1),
	(42, 'Norwich City', 1, '2020-01-27 03:26:30', 'West Ham', 1, 1),
	(43, 'Liverpool', 3, '2020-01-27 03:26:48', 'Burnley', 0, 1),
	(44, 'Wolves', 2, '2020-01-27 03:27:42', 'Everton', 3, 1),
	(45, 'Spurs', 2, '2020-01-27 03:27:52', 'Arsenal', 2, 1),
	(46, 'Newcastle United', 1, '2020-01-27 03:28:04', 'Liverpool', 3, 1),
	(47, 'Burnley', 1, '2020-01-27 03:28:18', 'Brighton', 1, 1),
	(48, 'Leicester City', 0, '2020-01-27 21:28:37', 'Man Utd', 1, 1),
	(49, 'Southampton', 1, '2020-01-27 21:28:50', 'Sheffield United', 0, 1),
	(51, 'Crystal Palace', 0, '2020-01-27 21:29:30', 'Spurs', 4, 1),
	(52, 'Chelsea', 5, '2020-01-27 21:29:54', 'Wolves', 2, 1),
	(53, 'Man City', 2, '2020-01-27 21:30:06', 'Norwich City', 3, 1),
	(54, 'Everton', 1, '2020-01-27 21:30:20', 'Bournemouth', 3, 1),
	(55, 'Arsenal', 2, '2020-01-27 21:30:38', 'Watford', 2, 1),
	(56, 'West Ham', 0, '2020-01-27 21:30:54', 'Aston Villa', 0, 1),
	(57, 'Bournemouth', 3, '2020-01-27 21:31:08', 'Southampton', 1, 1),
	(58, 'Spurs', 1, '2020-01-27 21:31:19', 'Leicester City', 2, 1),
	(59, 'Norwich City', 0, '2020-01-27 21:31:33', 'Burnley', 2, 1),
	(60, 'Watford', 0, '2020-01-27 21:32:02', 'Man City', 8, 1),
	(61, 'Liverpool', 2, '2020-01-27 22:29:17', 'Chelsea', 1, 1),
	(62, 'Liverpool', 1, '2020-01-27 22:30:24', 'Sheffield United', 0, 1),
	(63, 'West Ham', 2, '2020-01-27 22:30:38', 'Bournemouth', 2, 1),
	(64, 'Brighton', 0, '2020-01-27 22:30:54', 'Chelsea', 2, 1),
	(65, 'Burnley', 2, '2020-01-27 22:31:03', 'Aston Villa', 2, 1),
	(66, 'Norwich City', 0, '2020-01-27 22:31:16', 'Crystal Palace', 2, 1),
	(67, 'Southampton', 1, '2020-01-27 22:31:26', 'Spurs', 2, 1),
	(68, 'Watford', 0, '2020-01-27 22:31:35', 'Wolves', 2, 1),
	(69, 'Man City', 3, '2020-01-27 22:31:46', 'Everton', 1, 1),
	(70, 'Newcastle United', 0, '2020-01-27 22:32:07', 'Leicester City', 5, 1),
	(71, 'Arsenal', 1, '2020-01-27 22:32:18', 'Man Utd', 1, 1),
	(72, 'Spurs', 0, '2020-01-27 22:32:30', 'Brighton', 3, 1),
	(73, 'Everton', 0, '2020-01-27 22:32:39', 'Burnley', 1, 1),
	(74, 'Leicester City', 1, '2020-01-27 22:32:53', 'Liverpool', 2, 1),
	(75, 'Aston Villa', 5, '2020-01-27 22:33:03', 'Norwich City', 1, 1),
	(76, 'Sheffield United', 0, '2020-01-27 22:33:18', 'Watford', 0, 1),
	(77, 'Crystal Palace', 2, '2020-01-27 22:33:36', 'West Ham', 1, 1),
	(78, 'Bournemouth', 0, '2020-01-27 22:33:52', 'Arsenal', 1, 1),
	(79, 'Wolves', 2, '2020-01-27 22:34:02', 'Man City', 0, 1),
	(80, 'Chelsea', 4, '2020-01-27 22:34:22', 'Southampton', 1, 1),
	(81, 'Man Utd', 0, '2020-01-27 22:34:37', 'Newcastle United', 1, 1),
	(82, 'West Ham', 0, '2020-01-27 22:34:50', 'Everton', 2, 1),
	(83, 'Brighton', 1, '2020-01-27 22:35:17', 'Aston Villa', 2, 1),
	(84, 'Newcastle United', 0, '2020-01-27 22:35:30', 'Chelsea', 1, 1),
	(85, 'Burnley', 1, '2020-01-27 22:36:07', 'Leicester City', 2, 1),
	(86, 'Watford', 1, '2020-01-27 22:36:16', 'Spurs', 1, 1),
	(87, 'Southampton', 1, '2020-01-27 22:36:24', 'Wolves', 1, 1),
	(88, 'Man City', 2, '2020-01-27 22:36:38', 'Crystal Palace', 0, 1),
	(89, 'Liverpool', 1, '2020-01-27 22:36:50', 'Man Utd', 1, 1),
	(90, 'Arsenal', 0, '2020-01-27 22:37:02', 'Sheffield United', 1, 1),
	(91, 'Leicester City', 9, '2020-01-27 22:37:16', 'Southampton', 0, 1),
	(92, 'Aston Villa', 0, '2020-01-27 22:37:32', 'Man City', 3, 1),
	(93, 'Everton', 2, '2020-01-27 22:37:45', 'Brighton', 3, 1),
	(94, 'Bournemouth', 0, '2020-01-27 22:37:55', 'Watford', 0, 1),
	(95, 'Sheffield United', 1, '2020-01-27 22:38:12', 'West Ham', 1, 1),
	(96, 'Chelsea', 4, '2020-01-27 22:38:21', 'Burnley', 2, 1),
	(97, 'Wolves', 1, '2020-01-27 22:38:35', 'Newcastle United', 1, 1),
	(98, 'Crystal Palace', 2, '2020-01-27 22:38:45', 'Arsenal', 2, 1),
	(99, 'Spurs', 1, '2020-01-27 22:39:10', 'Liverpool', 2, 1),
	(100, 'Man Utd', 3, '2020-01-27 22:40:02', 'Norwich City', 1, 1),
	(101, 'Man Utd', 0, '2020-01-27 22:40:15', 'Bournemouth', 1, 1),
	(102, 'Wolves', 1, '2020-01-27 22:40:25', 'Arsenal', 1, 1),
	(103, 'Liverpool', 2, '2020-01-27 22:40:33', 'Aston Villa', 1, 1),
	(104, 'Norwich City', 0, '2020-01-27 22:40:46', 'Brighton', 2, 1),
	(105, 'Southampton', 1, '2020-01-27 22:40:57', 'Man City', 2, 1),
	(106, 'Newcastle United', 3, '2020-01-27 22:41:23', 'West Ham', 2, 1),
	(107, 'Chelsea', 2, '2020-01-27 22:41:34', 'Watford', 1, 1),
	(108, 'Leicester City', 2, '2020-01-27 22:41:47', 'Crystal Palace', 0, 1),
	(109, 'Spurs', 1, '2020-01-27 22:42:58', 'Everton', 1, 1),
	(110, 'Watford', 2, '2020-01-27 22:43:12', 'Norwich City', 0, 1),
	(111, 'West Ham', 0, '2020-01-27 22:43:33', 'Burnley', 3, 1),
	(112, 'Bournemouth', 1, '2020-01-27 22:43:45', 'Newcastle United', 2, 1),
	(113, 'Everton', 2, '2020-01-27 22:43:56', 'Southampton', 1, 1),
	(114, 'Sheffield United', 1, '2020-01-27 22:44:05', 'Spurs', 1, 1),
	(115, 'Arsenal', 0, '2020-01-27 22:44:16', 'Leicester City', 2, 1),
	(116, 'Brighton', 1, '2020-01-27 22:44:31', 'Man Utd', 3, 1),
	(117, 'Aston Villa', 1, '2020-01-27 22:44:42', 'Wolves', 2, 1),
	(118, 'Man City', 1, '2020-01-27 22:44:55', 'Liverpool', 3, 1),
	(119, 'Spurs', 3, '2020-01-27 22:45:09', 'West Ham', 2, 1),
	(120, 'Wolves', 2, '2020-01-27 22:45:20', 'Bournemouth', 1, 1),
	(121, 'Southampton', 2, '2020-01-27 22:45:30', 'Arsenal', 2, 1),
	(122, 'Leicester City', 2, '2020-01-27 22:45:43', 'Brighton', 0, 1),
	(123, 'Liverpool', 2, '2020-01-27 22:45:53', 'Crystal Palace', 1, 1),
	(124, 'Norwich City', 2, '2020-01-27 22:46:11', 'Everton', 0, 1),
	(125, 'Burnley', 3, '2020-01-27 22:46:20', 'Watford', 0, 1),
	(126, 'Chelsea', 1, '2020-01-27 22:46:30', 'Man City', 2, 1),
	(127, 'Man Utd', 3, '2020-01-27 22:46:42', 'Sheffield United', 3, 1),
	(128, 'Crystal Palace', 2, '2020-01-27 22:55:00', 'Burnley', 0, 1),
	(129, 'Man City', 2, '2020-01-27 22:55:49', 'Newcastle United', 2, 1),
	(130, 'West Ham', 1, '2020-01-27 22:56:02', 'Chelsea', 0, 1),
	(131, 'Brighton', 1, '2020-01-27 22:56:11', 'Liverpool', 2, 1),
	(132, 'Bournemouth', 2, '2020-01-27 22:56:21', 'Spurs', 3, 1),
	(133, 'Watford', 1, '2020-01-27 22:56:29', 'Southampton', 2, 1),
	(134, 'Sheffield United', 1, '2020-01-27 22:56:38', 'Wolves', 1, 1),
	(135, 'Arsenal', 2, '2020-01-27 22:57:02', 'Norwich City', 2, 1),
	(136, 'Aston Villa', 2, '2020-01-27 22:57:13', 'Man Utd', 2, 1),
	(137, 'Everton', 1, '2020-01-27 22:57:23', 'Leicester City', 2, 1),
	(138, 'Bournemouth', 0, '2020-01-27 22:57:37', 'Crystal Palace', 1, 1),
	(139, 'Man City', 4, '2020-01-27 22:57:50', 'Burnley', 1, 1),
	(140, 'Aston Villa', 1, '2020-01-27 22:58:04', 'Chelsea', 2, 1),
	(141, 'Watford', 1, '2020-01-27 22:58:12', 'Leicester City', 2, 1),
	(142, 'West Ham', 0, '2020-01-27 22:58:34', 'Wolves', 2, 1),
	(143, 'Spurs', 1, '2020-01-27 22:58:44', 'Man Utd', 2, 1),
	(144, 'Norwich City', 1, '2020-01-27 22:58:53', 'Southampton', 2, 1),
	(145, 'Everton', 2, '2020-01-27 22:59:10', 'Liverpool', 5, 1),
	(146, 'Newcastle United', 2, '2020-01-27 22:59:22', 'Sheffield United', 0, 1),
	(147, 'Brighton', 2, '2020-01-27 22:59:35', 'Arsenal', 1, 1),
	(148, 'Chelsea', 1, '2020-01-27 22:59:46', 'Everton', 3, 1),
	(149, 'Liverpool', 3, '2020-01-27 22:59:57', 'Bournemouth', 0, 1),
	(150, 'Burnley', 0, '2020-01-27 23:00:07', 'Spurs', 5, 1),
	(151, 'Man Utd', 2, '2020-01-27 23:00:16', 'Man City', 1, 1),
	(152, 'Leicester City', 4, '2020-01-27 23:00:28', 'Aston Villa', 1, 1),
	(153, 'Southampton', 1, '2020-01-27 23:00:48', 'Newcastle United', 2, 1),
	(154, 'Wolves', 1, '2020-01-27 23:01:01', 'Brighton', 2, 1),
	(155, 'Arsenal', 2, '2020-01-27 23:01:15', 'West Ham', 2, 1),
	(156, 'Real Madrid', 2, '2020-01-28 02:47:39', 'Barcelona', 2, 2),
	(157, 'Valencia', 2, '2020-01-28 02:48:03', 'Barcelona', 0, 2),
	(158, 'Real Madrid', 1, '2020-01-28 03:46:04', 'Atletico Madrid', 2, 2),
	(159, 'Barcelona', 3, '2020-01-28 03:46:13', 'Atletico Madrid', 1, 2),
	(160, 'Barcelona', 3, '2020-01-28 03:46:23', 'Valencia', 0, 2),
	(161, 'Barcelona', 0, '2020-01-28 03:46:34', 'Real Madrid', 2, 2),
	(162, 'Atletico Madrid', 0, '2020-01-28 03:46:46', 'Barcelona', 2, 2),
	(163, 'Real Madrid', 0, '2020-01-28 03:46:51', 'Barcelona', 1, 2),
	(164, 'Real Madrid', 2, '2020-01-28 03:47:08', 'Valencia', 0, 2),
	(165, 'Atletico Madrid', 2, '2020-01-28 03:47:14', 'Valencia', 1, 2),
	(166, 'Real Madrid', 1, '2020-01-28 03:50:14', 'Atletico Madrid', 0, 2),
	(167, 'Real Madrid', 1, '2020-01-28 03:50:23', 'Barcelona', 1, 2),
	(168, 'Real Madrid', 3, '2020-01-28 03:50:28', 'Valencia', 1, 2),
	(169, 'Burnley', 4, '2020-01-28 11:12:54', 'Sheffield United', 5, 1),
	(170, 'Real Madrid', 7, '2020-01-28 11:30:11', 'Valencia', 6, 2);
/*!40000 ALTER TABLE `fixtures` ENABLE KEYS */;

-- Dumping structure for table football_db2.leagues
CREATE TABLE IF NOT EXISTS `leagues` (
  `leagueid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`leagueid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table football_db2.leagues: ~5 rows (approximately)
/*!40000 ALTER TABLE `leagues` DISABLE KEYS */;
INSERT INTO `leagues` (`leagueid`, `name`) VALUES
	(1, 'English Premier League'),
	(2, 'Spanish Primera Division'),
	(3, 'Italian Serie A'),
	(4, 'German Bundesliga'),
	(5, 'Bulgarian First League');
/*!40000 ALTER TABLE `leagues` ENABLE KEYS */;

-- Dumping structure for table football_db2.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `teamid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `leagueid` bigint(20) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `goals_against` int(11) DEFAULT NULL,
  `goals_for` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `won` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamid`),
  KEY `FK8xryli9jf4d4sjujm6vcbmygd` (`leagueid`),
  CONSTRAINT `FK8xryli9jf4d4sjujm6vcbmygd` FOREIGN KEY (`leagueid`) REFERENCES `leagues` (`leagueid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table football_db2.teams: ~0 rows (approximately)
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`teamid`, `name`, `leagueid`, `draw`, `goals_against`, `goals_for`, `loss`, `won`) VALUES
	(1, 'Newcastle United', 1, 3, 18, 16, 4, 6),
	(2, 'Man Utd', 1, 6, 17, 25, 3, 6),
	(3, 'Liverpool', 1, 1, 14, 34, 0, 13),
	(4, 'Man City', 1, 2, 19, 40, 4, 9),
	(5, 'Arsenal', 1, 8, 23, 20, 4, 3),
	(6, 'Bournemouth', 1, 3, 25, 21, 8, 5),
	(7, 'Everton', 1, 1, 27, 23, 8, 6),
	(8, 'Aston Villa', 1, 3, 25, 17, 8, 2),
	(9, 'Crystal Palace', 1, 1, 18, 13, 6, 6),
	(10, 'Wolves', 1, 7, 18, 21, 3, 5),
	(11, 'West Ham', 1, 6, 29, 15, 7, 2),
	(12, 'Watford', 1, 5, 32, 10, 10, 1),
	(13, 'Chelsea', 1, 2, 24, 29, 5, 8),
	(14, 'Leicester City', 1, 2, 11, 39, 2, 11),
	(15, 'Burnley', 1, 3, 31, 22, 8, 4),
	(16, 'Brighton', 1, 2, 19, 20, 6, 6),
	(17, 'Southampton', 1, 3, 30, 17, 7, 4),
	(18, 'Sheffield United', 1, 7, 19, 17, 4, 3),
	(19, 'Norwich City', 1, 2, 30, 14, 9, 2),
	(20, 'Spurs', 1, 5, 23, 30, 5, 6),
	(21, 'Barcelona', 2, 2, 8, 12, 2, 4),
	(22, 'Real Madrid', 2, 2, 13, 19, 2, 5),
	(23, 'Atletico Madrid', 2, 0, 8, 5, 3, 2),
	(24, 'Valencia', 2, 0, 17, 10, 5, 1);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
