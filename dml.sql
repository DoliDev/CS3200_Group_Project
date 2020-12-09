-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 10:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

--
-- Used phpmyadmin and MySQL
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yatv_database`
--

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`AppName`, `Description`) VALUES
('Acoustify', 'Recommends fiction movies'),
('clock.me', 'Recommends most popular movies'),
('Commutify', 'Community favorites'),
('Farmeron', 'Videos pertaining to gardening activities'),
('Peppo', 'Features all sorts of movies and shows'),
('Pick Up', 'Pick up and watch any movie based on rating'),
('Rentilo', 'Old school films and shows'),
('Suitify', 'Find any documentary'),
('Vividly', 'mostly action and thriller movies'),
('Youtube', 'Any video on the internet');

--
-- Dumping data for table `availableon`
--

INSERT INTO `availableon` (`AppName`, `Version`, `Rating`) VALUES
('Acoustify', 1.02, 9),
('clock.me', 3.54, 7.8),
('Commutify', 2.5, 3.9),
('Farmeron', 1.02, 8.6),
('Peppo', 3.4, 9.5),
('Pick Up', 1.02, 7.4),
('Rentilo', 1.02, 8.2),
('Suitify', 1.02, 9.6),
('Vividly', 1.68, 7.5),
('Youtube', 2.5, 6.8);

--
-- Dumping data for table `classifiedby`
--

INSERT INTO `classifiedby` (`VideoID`, `TagName`) VALUES
(1, 'Adventure'),
(2, 'Documentary'),
(3, 'Education'),
(4, 'Fiction'),
(5, 'Gaming'),
(6, 'Horror'),
(7, 'News'),
(8, 'Politics'),
(9, 'Sports'),
(10, 'Thriller');

--
-- Dumping data for table `comprisedof`
--

INSERT INTO `comprisedof` (`ShowTitle`, `UserEmail`) VALUES
('Black Mirror', '0karar.hussein208@garageamazon'),
('Game of Thrones', '8codee4@dload.site'),
('Sherlock', '8lbknbljc@21jag.com'),
('Shooter', '9s2sa.mo7amedj@virginiaintel.c'),
('Simpsons', 'fumerqayyum1@razernv.com'),
('The 100	', 'ncoeur5@tweeflood.com'),
('The Mentalist', 'pelerhabi.d7@infoclew.com'),
('The Office', 'tsintiagoc@razernv.com'),
('The Umbrella Academy', 'xry.zer@sundaymovo.com'),
('Vikings', 'zhsief.l@virginiaintel.com');

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`ShowTitle`, `UserEmail`) VALUES
('Black Mirror', '0karar.hussein208@garageamazon'),
('Game of Thrones	', '8codee4@dload.site'),
('Sherlock', '8lbknbljc@21jag.com'),
('Shooter', '9s2sa.mo7amedj@virginiaintel.c'),
('Simpsons', 'fumerqayyum1@razernv.com'),
('The 100', 'ncoeur5@tweeflood.com'),
('The Mentalist', 'pelerhabi.d7@infoclew.com'),
('The Office', 'tsintiagoc@razernv.com'),
('The Umbrella Academy', 'xry.zer@sundaymovo.com'),
('Vikings', 'zhsief.l@virginiaintel.com');

--
-- Dumping data for table `mylist`
--

INSERT INTO `mylist` (`UserEmail`) VALUES
('0karar.hussein208@garageamazon'),
('8codee4@dload.site'),
('8lbknbljc@21jag.com'),
('9s2sa.mo7amedj@virginiaintel.c'),
('fumerqayyum1@razernv.com'),
('ncoeur5@tweeflood.com'),
('pelerhabi.d7@infoclew.com'),
('tsintiagoc@razernv.com'),
('xry.zer@sundaymovo.com'),
('zhsief.l@virginiaintel.com');

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`AppName`, `Mobile`) VALUES
('Acoustify', 1),
('clock.me', 1),
('Commutify', 0),
('Farmeron', 1),
('Peppo', 0),
('Pick Up', 0),
('Rentilo', 1),
('Suitify', 0),
('Vividly', 1),
('Youtube', 1);

--
-- Dumping data for table `searchfor`
--

INSERT INTO `searchfor` (`UserEmail`, `VideoID`) VALUES
('0karar.hussein208@garageamazon', 1),
('8codee4@dload.site', 2),
('8lbknbljc@21jag.com', 3),
('9s2sa.mo7amedj@virginiaintel.c', 4),
('fumerqayyum1@razernv.com', 5),
('ncoeur5@tweeflood.com', 6),
('pelerhabi.d7@infoclew.com', 7),
('tsintiagoc@razernv.com', 8),
('xry.zer@sundaymovo.com', 9),
('zhsief.l@virginiaintel.com', 10);

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`ShowTitle`, `SeasonNumber`) VALUES
('Black Mirror', 1),
('Game of Thrones', 8),
('Sherlock', 5),
('Shooter', 11),
('Simpsons', 6),
('The 100', 3),
('The Mentalist', 14),
('The Office', 2),
('The Umbrella Academy', 8),
('Vikings', 4);

--
-- Dumping data for table `show_table`
--

INSERT INTO `show_table` (`ShowTitle`, `Description`) VALUES
('Black Mirror', 'In an abstrusely dystopian future, several individuals grapple with the manipulative effects of cutt'),
('Game of Thrones', 'Nine noble families wage war against each other in order to gain control over the mythical land of W'),
('Sherlock', 'Dr Watson, a former army doctor, finds himself sharing a flat with Sherlock Holmes, an eccentric ind'),
('Shooter', 'A highly-decorated ex-Marine sniper who is coaxed back into action after he learns about a plot to k'),
('Simpsons', 'Working-class father Homer Simpson and his dysfunctional family deal with comical situations and the'),
('The 100', 'A nuclear conflict has decimated civilization. A century later, a spaceship accommodating humanity\'s'),
('The Mentalist', 'Patrick Jane, an independent consultant, works with the California Bureau of Investigation and uses '),
('The Office', 'A motley group of office workers go through hilarious misadventures at the Scranton, Pennsylvania, b'),
('The Umbrella Academy', 'On one day in 1989, 43 infants are inexplicably born to random, unconnected women who showed no sign'),
('Vikings', 'Ragnar Lothbrok, a legendary Norse hero, is a mere farmer who rises up to become a fearless warrior ');

--
-- Dumping data for table `subscribesto`
--

INSERT INTO `subscribesto` (`UserEmail`, `AppName`, `ExpirationDate`, `Cost`) VALUES
('0karar.hussein208@garageamazon', 'Acoustify', '2020-11-11', 9.99),
('8codee4@dload.site', 'clock.me', '2020-09-09', 9.99),
('8lbknbljc@21jag.com', 'Commutify', '2021-01-08', 19.99),
('9s2sa.mo7amedj@virginiaintel.c', 'Farmeron', '2020-08-12', 9.99),
('fumerqayyum1@razernv.com', 'Peppo', '2021-01-15', 9.99),
('ncoeur5@tweeflood.com', 'Pick Up', '2020-11-19', 29.99),
('pelerhabi.d7@infoclew.com', 'Rentilo', '2020-11-04', 9.99),
('tsintiagoc@razernv.com', 'Suitify', '2021-05-13', 9.99),
('xry.zer@sundaymovo.com', 'Vividly', '2020-11-07', 9.99),
('zhsief.l@virginiaintel.com', 'Youtube', '2020-11-10', 9.99);

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`TagName`, `VideoID`) VALUES
('Adventure', 1),
('Documentary', 2),
('Education', 3),
('Fiction', 4),
('Gaming', 5),
('Horror', 6),
('News', 7),
('Politics', 8),
('Sports', 9),
('Thriller', 10);

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`UserEmail`, `Password`, `FirstName`, `LastName`, `Country`, `AppName`, `VideoID`) VALUES
('0karar.hussein208@garageamazon', 'H3429Dez', 'Okarar', 'Hussein', 'Ukraine', 'Acoustify', 1),
('8codee4@dload.site', '4328DD\"àda', 'Codee', 'Lanny', 'France', 'clock.me', 2),
('8lbknbljc@21jag.com', 'Password11', 'Kayou', 'Marsault', 'Norway', 'Commutify', 3),
('9s2sa.mo7amedj@virginiaintel.c', 'BobDog98', 'Bob', 'Lang', 'USA', 'Farmeron', 4),
('fumerqayyum1@razernv.com', '598Cat99', 'Fumer', 'Qayyum', 'Germany', 'Peppo', 5),
('ncoeur5@tweeflood.com', 'dezdj12235', 'Sarah', 'Coeur', 'Italy', 'Pick Up', 6),
('pelerhabi.d7@infoclew.com', 'dezf32459D', 'Peler', 'Habi', 'France', 'Rentilo', 7),
('tsintiagoc@razernv.com', 'deu43920d?', 'Thao', 'Tiago', 'France', 'Suitify', 8),
('xry.zer@sundaymovo.com', 'dezd234dz', 'Xry', 'Zer', 'Egypt', 'Vividly', 9),
('zhsief.l@virginiaintel.com', 'BETA34!!', 'Zief', 'Sief', 'Afghanistan', 'Youtube', 10);

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`VideoID`, `Title`, `Description`, `ReleaseDate`, `AppName`, `ShowTitle`) VALUES
(1, 'Minecraft ', 'How to play tutorials', '2020-11-11', 'Acoustify', 'Black Mirror'),
(2, 'Sandcastle', 'steps to building a sandcastle', '2021-02-18', 'clock.me', 'Game of Thrones'),
(3, 'java coding', 'Learn to program in java', '2020-11-23', 'Commutify', 'Sherlock'),
(4, 'python coding', 'Learn python programming', '2021-02-18', 'Farmeron', 'Shooter'),
(5, 'Database design', 'How to make a database from scratch', '2021-08-20', 'Peppo', 'Simpsons'),
(6, 'Documentary', 'Process of making a documentary', '2020-03-18', 'Pick Up', 'The 100	'),
(7, 'Movie clip', 'Crowd-favorite movie clips', '2021-01-07', 'Rentilo', 'The Mentalist'),
(8, 'Xmen trailer', 'what\'s to expect in the next xmen', '2020-11-07', 'Suitify', 'The Office'),
(9, 'Sports news', 'Sport events', '2020-11-12', 'Vividly', 'The Umbrella Academy'),
(10, 'Css code', 'Learn to code in css', '2020-10-13', 'Youtube', 'Vikings');

--
-- Dumping data for table `watch`
--

INSERT INTO `watch` (`UserEmail`, `VideoID`, `Liked`) VALUES
('0karar.hussein208@garageamazon', 1, 0),
('8codee4@dload.site', 2, 0),
('8lbknbljc@21jag.com', 3, 0),
('9s2sa.mo7amedj@virginiaintel.c', 4, 1),
('fumerqayyum1@razernv.com', 5, 1),
('ncoeur5@tweeflood.com', 6, 0),
('pelerhabi.d7@infoclew.com', 7, 1),
('tsintiagoc@razernv.com', 8, 0),
('xry.zer@sundaymovo.com', 9, 1),
('zhsief.l@virginiaintel.com', 10, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
