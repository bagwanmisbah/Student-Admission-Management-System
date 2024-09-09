-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 01:52 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clgadmission`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `amount`) VALUES
(2, 's', 's', '0'),
(1, 'admin', 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE IF NOT EXISTS `ans` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL,
  `q1` int(20) NOT NULL DEFAULT '0',
  `q2` int(20) NOT NULL DEFAULT '0',
  `q3` int(20) NOT NULL DEFAULT '0',
  `q4` int(20) NOT NULL DEFAULT '0',
  `q5` int(20) NOT NULL DEFAULT '0',
  `q6` int(20) NOT NULL DEFAULT '0',
  `q7` int(20) NOT NULL DEFAULT '0',
  `q8` int(20) NOT NULL DEFAULT '0',
  `q9` int(20) NOT NULL DEFAULT '0',
  `q10` int(20) NOT NULL DEFAULT '0',
  `a1` varchar(100) NOT NULL DEFAULT 'none',
  `a2` varchar(100) NOT NULL DEFAULT 'none',
  `a3` varchar(100) NOT NULL DEFAULT 'none',
  `a4` varchar(100) NOT NULL DEFAULT 'none',
  `a5` varchar(100) NOT NULL DEFAULT 'none',
  `a6` varchar(100) NOT NULL DEFAULT 'none',
  `a7` varchar(100) NOT NULL DEFAULT 'none',
  `a8` varchar(100) NOT NULL DEFAULT 'none',
  `a9` varchar(100) NOT NULL DEFAULT 'none',
  `a10` varchar(100) NOT NULL DEFAULT 'none',
  `result` varchar(20) NOT NULL DEFAULT 'Not calculated yet',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `agg` varchar(30) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `duration`, `dept`, `agg`, `link`) VALUES
(1, 'java (core+advance)', '6', 'CS, IT', '70', 'https://www.javatpoint.com/java-tutorial'),
(2, 'C++', '3', 'CS', '40', 'https://www.javatpoint.com/cpp-tutorial'),
(3, 'PIC', '3', 'CS, IT', '80', 'https://www.javatpoint.com/c-programming-language-tutorial'),
(4, 'Anguler JS', '3', 'CS,IT', '78', 'https://www.javatpoint.com/angularjs-tutorial'),
(5, 'PHP', '3', 'CS, IT', '64', 'https://www.javatpoint.com/php-tutorial'),
(6, 'Adv Java', '6', 'CS,IT', '78', 'https://www.javatpoint.com/java-tutorial'),
(7, 'Android', '3', 'CS', '78', 'https://www.javatpoint.com/android-tutorial');

-- --------------------------------------------------------

--
-- Table structure for table `education_detail`
--

CREATE TABLE IF NOT EXISTS `education_detail` (
  `ed_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_uname` varchar(30) DEFAULT NULL,
  `firstsem` varchar(30) DEFAULT NULL,
  `secondsem` varchar(30) DEFAULT NULL,
  `fyear` varchar(30) DEFAULT NULL,
  `thirdsem` varchar(30) DEFAULT NULL,
  `fourthsem` varchar(30) DEFAULT NULL,
  `syear` varchar(30) DEFAULT NULL,
  `fifthsem` varchar(30) DEFAULT NULL,
  `sixsem` varchar(30) DEFAULT NULL,
  `tyear` varchar(39) DEFAULT NULL,
  `sevensem` varchar(30) DEFAULT NULL,
  `eightsem` varchar(30) DEFAULT NULL,
  `fryear` varchar(30) DEFAULT NULL,
  `aggrigate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `education_detail`
--

INSERT INTO `education_detail` (`ed_id`, `stud_uname`, `firstsem`, `secondsem`, `fyear`, `thirdsem`, `fourthsem`, `syear`, `fifthsem`, `sixsem`, `tyear`, `sevensem`, `eightsem`, `fryear`, `aggrigate`) VALUES
(6, 'ganesh', '66.00', '66.00', '66.00', '77.00', '77.00', '77.00', '78.00', '78.00', '78.00', '68.00', '70.00', '67.00', '72.0'),
(8, 'san', '55.00', '66.00', '66.00', '66.00', '77.00', '77.00', '78.00', '64.00', '58.33', '72.00', '70.00', '67.00', '67.0825'),
(9, 'priya', '55.00', '66.00', '55.00', '62.00', '62.00', '77.00', '78.00', '78.00', '78.00', '80.00', '70.00', '80.00', '72.5'),
(11, 'ram', '66.00', '55.00', '60.00', '66.00', '62.00', '66.00', '57.00', '61.00', '58.33', '68.00', '66.00', '70.00', '63.582'),
(12, 'san', '58.00', '66.00', '66.00', '77.00', '77.00', '77.00', '78.00', '78.00', '78.00', '80.00', '80.00', '80.00', '75.25'),
(13, 'rits', '66.00', '66.00', '66.00', '77.00', '77.00', '77.00', '78.00', '78.00', '78.00', '80.00', '80.00', '80.00', '75.25'),
(14, 'mangesh', '55.00', '64.00', '60.00', '66.00', '64.00', '66.00', '57.00', '64.00', '62.00', '75.00', '68.00', '72.00', '65.0'),
(15, 'Santu', '66.00', '66.00', '66.00', '77.00', '77.00', '77.00', '78.00', '78.00', '78.00', '80.00', '80.00', '80.00', '75.25'),
(21, 'm', '77', '79', '77.0', '66', '79', '72.5', '55', '60', '57.5', '77', '88', '82.5', '72.375'),
(22, 'Mayuri', '62', '59', '62.0', '56', '58', '57.0', '58', '61', '59.5', '58', '70', '64.0', '60.625'),
(28, 's', '40', '35', '40.0', '44', '39', '41.5', '55', '45', '50.0', '39', '56', '47.5', '44.75'),
(29, 'amol', '78', '88', '78.0', '76', '89', '82.5', '83', '85', '84.0', '90', '90', '90.0', '83.625'),
(35, 'gf', '67', '70', '67.0', '71', '74', '72.5', '85', '75', '80.0', '81', '80', '80.5', '75.0'),
(36, 'Raju', '87', '80', '87.0', '84', '88', '86.0', '89', '90', '89.5', '87', '90', '88.5', '87.75'),
(37, 'g', '50', '77', '50.0', '77', '99', '88.0', '87', '97', '92.0', '66', '98', '82.0', '78.0'),
(38, 'Kumar', '67', '88', '67.0', '76', '87', '81.5', '67', '88', '77.5', '89', '88', '88.5', '78.625'),
(39, 'ss', '77', '88', '77.0', '79', '89', '84.0', '89', '88', '88.5', '78', '89', '83.5', '83.25'),
(40, 'Riya', '78', '88', '78.0', '68', '89', '78.5', '78', '87', '82.5', '89', '88', '88.5', '81.875'),
(41, 'Kiran', '67', '88', '67.0', '78', '77', '77.5', '89', '90', '89.5', '88', '89', '88.5', '80.625'),
(42, 'Aniket', '89', '80', '89.0', '88', '90', '89.0', '87', '90', '88.5', '82', '88', '85.0', '87.875'),
(43, 'Akshata', '78', '88', '78.0', '76', '89', '82.5', '97', '78', '87.5', '66', '87', '76.5', '81.125'),
(44, 'Pooja', '89', '91', '89.0', '81', '84', '82.5', '83', '86', '84.5', '79', '90', '84.5', '85.125'),
(47, 'Akshay', '79', '83', '79.0', '83', '78', '80.5', '79', '81', '80.0', '81', '88', '84.5', '81.0'),
(48, 'Rupali', '78', '89', '78.0', '87', '88', '87.5', '79', '90', '84.5', '76', '77', '76.5', '81.625'),
(49, 'Santosh', '89', '88', '89.0', '79', '78', '78.5', '69', '81', '75.0', '84', '86', '85.0', '81.875'),
(50, 'Santosh', '78', '88', '78.0', '76', '75', '75.5', '85', '84', '84.5', '79', '78', '78.5', '79.125'),
(51, 'Santosh', '78', '88', '78.0', '77', '87', '82.0', '76', '86', '81.0', '81', '85', '83.0', '81.0'),
(52, 'Yash', '78', '75', '78.0', '87', '77', '82.0', '89', '77', '83.0', '88', '85', '86.5', '82.375');

-- --------------------------------------------------------

--
-- Table structure for table `examform`
--

CREATE TABLE IF NOT EXISTS `examform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `fees` varchar(255) DEFAULT NULL,
  `uploadby` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `hallticket` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `examform`
--

INSERT INTO `examform` (`id`, `fname`, `lname`, `gender`, `dob`, `email`, `mobile`, `cast`, `year`, `branch`, `fees`, `uploadby`, `semester`, `hallticket`, `status`) VALUES
(1, 'Yash', 'Patil', 'male', '1999-02-01', 'yash@gmail.com', '9876543211', 'Open', '3rd Year', 'CS', '5000', 'Sunil', 'Sem3', 'Hall-ticket-2021.png', 'Accepted'),
(2, 'Karan', 'Kumar', 'male', '1996-02-07', 'karan@gmail.com', '9876543211', 'SC', '3rd Year', 'IT', '10000', NULL, NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `extra_skill`
--

CREATE TABLE IF NOT EXISTS `extra_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_uname` varchar(255) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `Certification` varchar(100) DEFAULT NULL,
  `programming_skill` varchar(50) DEFAULT NULL,
  `lang_known` varchar(50) DEFAULT NULL,
  `hobbies` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `extra_skill`
--

INSERT INTO `extra_skill` (`id`, `stud_uname`, `branch`, `Certification`, `programming_skill`, `lang_known`, `hobbies`) VALUES
(1, NULL, 'Computer', 'C++', 'java', 'marathi, hindi, english', 'singing songs'),
(2, NULL, 'sss', 'sss', 'sss', 'sss', 'sss'),
(3, NULL, 'IT', 'C#', 'php', 'English', 'Reading Books'),
(5, 'Santosh', 'Computer', 'C++', 'C', 'Hindi, English', 'Playing Cricket'),
(6, 'Yash', 'Computer Science', 'Java', 'C++', 'Marathi, Hindi, English', 'Reading');

-- --------------------------------------------------------

--
-- Table structure for table `facultyreg`
--

CREATE TABLE IF NOT EXISTS `facultyreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL DEFAULT '0',
  `lname` varchar(200) NOT NULL DEFAULT '0',
  `gender` varchar(200) NOT NULL DEFAULT '0',
  `dob` varchar(200) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '0',
  `mobile` varchar(200) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL DEFAULT '0',
  `course` varchar(200) NOT NULL DEFAULT '0',
  `password` varchar(200) NOT NULL DEFAULT '0',
  `flag` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `facultyreg`
--

INSERT INTO `facultyreg` (`id`, `fname`, `lname`, `gender`, `dob`, `email`, `mobile`, `address`, `course`, `password`, `flag`) VALUES
(1, 'q', 'q', 'male', '2017-12-31', 'q', 'q', 'q', 'java', 'q', '1'),
(2, 'jaydeep', 'salokhe', 'male', '2017-12-18', 'jaydeep@gmail.com', '9865874524', 'pune', 'java', '123', '1'),
(3, 'Raj', 'Kumar', 'male', '2017-12-13', 'raj@gmail.com', '9846856367', 'Nashik', 'c', '123', '1'),
(4, 'Sunil', 'Jagtap', 'male', '1990-05-09', 'sunil@gmail.com', '9473983739', 'Pune', 'java', '7890', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fchat`
--

CREATE TABLE IF NOT EXISTS `fchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(50) NOT NULL DEFAULT '0',
  `stdid` varchar(50) NOT NULL DEFAULT '0',
  `chat` text,
  `sentiment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `fchat`
--

INSERT INTO `fchat` (`id`, `fid`, `stdid`, `chat`, `sentiment`) VALUES
(1, '1', '4', 'hhh', 'positive'),
(2, '1', '4', 'Hello', 'positive'),
(3, '1', '7', 'Hello Santosh\r\n', 'positive'),
(4, '2', '9', 'Hello Raju\r\nAny query ??/', 'positive'),
(5, '1', '10', 'Hello......\r\nAny query ??', 'positive'),
(6, '1', '18', 'ghhhhj', 'positive'),
(7, '1', '18', 'hello', 'positive'),
(8, '1', '3', 'helloooo', 'positive'),
(9, '1', '11', 'Hello ss', 'positive'),
(10, '3', '20', 'Hiiii', 'positive'),
(11, '3', '20', 'Hello riya your test will scheduled on 03 May at 06:30PM', 'positive'),
(12, '4', '24', 'Hello aniket.\r\nIf any query plz text me......!!', 'positive'),
(13, '2', '27', 'Hellooo', 'positive'),
(14, '1', '27', 'Hello sir....i have an query.', 'positive'),
(15, '2', '27', 'GA', 'positive'),
(16, '2', '27', 'Any query??', 'positive'),
(17, '2', '27', 'Ohkk', 'positive'),
(18, '2', '29', 'Yes, tell me your query?', 'positive'),
(19, '2', '30', 'Yes,....', 'positive'),
(20, '2', '30', 'rrrerreer', 'positive');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(50) NOT NULL DEFAULT '0',
  `duration` varchar(50) NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '0',
  `filetype` varchar(50) NOT NULL DEFAULT '0',
  `uploadedby` varchar(50) NOT NULL DEFAULT '0',
  `upcomings` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `course`, `duration`, `filename`, `filetype`, `uploadedby`, `upcomings`) VALUES
(3, 'java', '0', 'Twitter API.txt', '0', 'admin', 'Important notice: Please pay our college fees immediately.'),
(4, 'java', '2', 'mysql.txt', '0', 'faculty', NULL),
(8, 'c', 'c', 'asp.net.txt', '0', 'faculty', NULL),
(19, 'java', 'null', 'HTML.txt', '0', 'admin', 'No Events'),
(20, 'java', 'null', 'Test.txt', '0', 'admin', 'All students here by inform you that our college arrange one state level competition dated at 25 Feb.2022'),
(21, 'java', 'null', 'Testmonial.txt', '0', 'admin', 'We arrange one event at our college campus at 20 Feb, 2022 ');

-- --------------------------------------------------------

--
-- Table structure for table `filesfaculty`
--

CREATE TABLE IF NOT EXISTS `filesfaculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `uploadedby` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `filesfaculty`
--

INSERT INTO `filesfaculty` (`id`, `course`, `filename`, `uploadedby`, `duration`) VALUES
(1, 'Hadoop', 'puma.txt', 'faculty', '2'),
(2, 'java', 'Fastrack.txt', 'faculty', 'c++'),
(3, 'java', 'java.txt', 'faculty', 'c++'),
(4, 'java', 'Java.txt', 'faculty', 'c++'),
(5, 'java', 'Java.txt', 'faculty', 'c++');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE IF NOT EXISTS `placement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `agg` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`id`, `company_name`, `agg`, `dept`, `website`) VALUES
(1, 'Tech Mahindra', '78', 'Information Technology', 'www.techmahindra.com'),
(2, 'Infosis', '80', 'Computer Science', 'www.infosis.com'),
(3, 'Acenture', '88', 'Computer Science', 'www.acenture.in'),
(4, 'Capgimini', '75', 'Information Technology', 'www.capgimini.in');

-- --------------------------------------------------------

--
-- Table structure for table `qtable`
--

CREATE TABLE IF NOT EXISTS `qtable` (
  `qno` int(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(100) DEFAULT NULL,
  `b` varchar(100) DEFAULT NULL,
  `c` varchar(100) DEFAULT NULL,
  `d` varchar(100) DEFAULT NULL,
  `ans` varchar(500) DEFAULT NULL,
  `f` varchar(10) DEFAULT '0',
  `topic` varchar(20) NOT NULL DEFAULT 'Not Mentioned',
  `chapter_no` varchar(10) DEFAULT '0',
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `qtable`
--

INSERT INTO `qtable` (`qno`, `question`, `a`, `b`, `c`, `d`, `ans`, `f`, `topic`, `chapter_no`) VALUES
(1, 'what is java?', 'software', 'coffee', 'programming lang', 'programming lang and platform', 'programming lang and platform', '0', 'Java', '1'),
(2, 'Who is founder of Java?', 'James Gosling', 'Rasmus Lerdorf', 'Linus Torvalds', 'Microsoft', 'James Gosling', '0', 'Java', '1'),
(3, 'Which team started Java operations?', 'Red Team', 'Green Team', 'Yellow Team', 'Blue Team', 'Green Team', '0', 'Java', '1'),
(4, 'On which language Java syntax is based?', 'C', 'Java', 'PHP', 'C++', 'C++', '0', 'Java', '2'),
(5, 'Which feature is not present in Java?', 'Overloading', 'Binding', 'Overriding', 'explicit pointers', 'explicit pointers', '0', 'Java', '2'),
(6, 'Which feature is present in Java?', 'Automatic object collection', 'linker', 'removing unreferenced objects', 'removing referenced objects', 'removing unreferenced objects', '0', 'Java', '2'),
(7, 'Which platform Java provides?', 'Software based', 'Eclipse based', 'Object based', 'Linux based', 'Software based', '0', 'Java', '3'),
(8, 'Which is platform independent code that Java produces?', 'Byte code', 'Machine code', 'Psuedo code', 'Source code', 'Byte code', '0', 'Java', '3'),
(9, 'What is WORA?', 'Wait Or Read Attribute', 'Write Once Read Anywhere', 'Wait Once Read Anytime', 'Write On Reading Anything', 'Write Once Read Anywhere', '0', 'Java', '3'),
(10, 'Which program we cant write in Java?', 'Operator Overloading', 'Pointers Program', 'Socket Program', 'Networking Program', 'Pointers Program', '0', 'Java', '4'),
(11, 'Which methods are virtual by default?', 'static methods', 'non-static methods', 'final methods', 'virtual methods', 'non-static methods', '0', 'Java', '4'),
(12, 'Which unsigned right shift operator is supported by Java? ', '>>', '>>>', '<<', '<<<', '>>>', '0', 'Java', '4'),
(13, 'Which one of these lists contains only Java programming language keywords?', 'class, if, void, long, Int, continue', 'goto, instanceof, native, finally, default, throws', 'try, virtual, throw, final, volatile, transient', 'strictfp, constant, super, implements, do', 'goto, instanceof, native, finally, default, throws', '0', 'Java', ''),
(14, 'Which will legally declare, construct, and initialize an array?', 'int [] myList = {"1", "2", "3"};', 'int [] myList = (5, 8, 2);', 'int myList [] [] = {4,9,7,0};', 'int myList [] = {4, 3, 7};', 'int myList [] = {4, 3, 7};', '0', 'Java', ''),
(15, 'Which is a reserved word in the Java programming language?', 'method', 'native', 'subclasses', 'reference', 'native', '0', 'Java', ''),
(16, 'Which is a valid keyword in java?', 'interface', 'string', 'Float', 'unsigned', 'interface', '0', 'Java', ''),
(17, 'Which one of the following will declare an array and initialize it with five numbers?', 'Array a = new Array(5);', 'int [] a = {23,22,21,20,19};', 'int a [] = new int[5];', 'int [5] array;', 'int [] a = {23,22,21,20,19};', '0', 'Java', ''),
(18, 'Which is the valid declarations within an interface definition?', 'public double methoda();', 'public final double methoda();', 'static void methoda(double d1);', 'protected void methoda(double d1);', 'public double methoda();', '0', 'Java', ''),
(19, 'Which one is a valid declaration of a boolean?', 'boolean b1 = 0;', 'boolean b2 = ''false'';', 'boolean b3 = false;', 'boolean b4 = Boolean.false();', 'boolean b3 = false;', '0', 'Java', ''),
(20, 'Which is a valid declarations of a String?', 'String s1 = null;', 'String s2 = ''null'';', 'String s3 = (String) ''abc'';', 'String s4 = (String) ''\\ufeed'';', 'String s1 = null;', '0', 'Java', ''),
(21, 'What is the numerical range of a char?', '-128 to 127', '-(215) to (215) - 1', '0 to 32767', '0 to 65535', '0 to 65535', '0', 'Java', ''),
(22, 'Which interface does java.util.Hashtable implement?', 'Java.util.Map', 'Java.util.List', 'Java.util.HashTable', 'Java.util.Collection', 'Java.util.Map', '0', 'Java', ''),
(23, 'Which interface provides the capability to store objects using a key-value pair?', 'Java.util.Map', 'Java.util.Set', 'Java.util.List', 'Java.util.Collection', 'Java.util.Map', '0', 'Java', ''),
(24, 'Which collection class allows you to access its elements by associating a key with an element''s value, and provides synchronization?', 'java.util.SortedMap', 'java.util.TreeMap', 'java.util.TreeSet', 'java.util.Hashtable', 'java.util.Hashtable', '0', 'Java', ''),
(25, 'What is the name of the method used to start a thread execution?', 'init();', 'start();', 'run();', 'resume();', 'start();', '0', 'Java', ''),
(26, 'Which of the following will directly stop the execution of a Thread?', 'wait()', 'notify()', 'notifyall()', 'exits synchronized code', 'wait()', '0', 'Java', ''),
(27, 'Which method must be defined by a class implementing the java.lang.Runnable interface?', 'void run()', 'public void run()', 'public void start()', 'void run(int priority)', 'public void run()', '0', 'Java', ''),
(28, 'Which will contain the body of the thread?', 'run();', 'start();', 'stop();', 'main();', 'run();', '0', 'Java', ''),
(29, 'Which method registers a thread in a thread scheduler?', 'run();', 'construct();', 'start();', 'register();', 'start();', '0', 'Java', ''),
(30, 'Which class or interface defines the wait(), notify(),and notifyAll() methods?', 'Object', 'Thread', 'Runnable', 'Class', 'Object', '0', 'Java', ''),
(31, 'The DBMS acts as an interface between what two components of an enterprise-class database system?', 'Database application and the database', 'Data and the database', 'The user and the database application', 'Database application and SQL', 'Database application and the database', '0', 'Java', ''),
(32, 'For which type of development PHP language is getting used?', 'Desktop application development', 'Database development', 'Networking development', 'Web development', 'Web development', '0', 'PHP', '1'),
(33, 'For which type of web applications PHP is mostly used?', 'control-driven web applications', 'user-driven web applications', 'data-driven web applications', 'system-driven web applications', 'data-driven web applications', '0', 'PHP', '1'),
(34, 'What PHP stands for?', 'HTTP Protocol ', 'Hibernate Preprocessor', 'Hypertext Preprocessor', 'Poly Hypertext Processor', 'Hypertext Preprocessor', '0', 'PHP', '1'),
(35, 'Which is the latest PHP engine version?', '5.1', '6.1', '5.0', '6.0', '5.0', '0', 'PHP', '2'),
(36, 'Which feature is used in new PHP engine?', 'optimized memory manager', 'virtual indexing', 'lighter language', 'auto scaling', 'optimized memory manager', '0', 'PHP', '2'),
(37, 'Which feature is supported by PHP?', 'Object oriented programming', 'Application level programming', 'portability', 'cross-platform development', 'cross-platform development', '0', 'PHP', '2'),
(38, 'Which operator is used for single line comment in PHP?', '<', '<?', '#', '?/', '#', '0', 'PHP', '3'),
(39, 'Which operator is used for multiline comment in PHP?', '<?..?>', '?/../?', '/*..*/', '//..//', '/*..*/', '0', 'PHP', '3'),
(40, 'Which is the delimiters for PHP syntax?', '<?..?>', '<?php..?>', '<php..>', '</php../>', '<?php..?>', '0', 'PHP', '3'),
(41, 'What is variable in PHP?', 'name of the memory location', 'name of value', 'memory space', 'memory address', 'name of the memory location', '0', 'PHP', '4'),
(42, 'Which sign in PHP used to start variable declaration?', '$', '#', '?', '_', '$', '0', 'PHP', '4'),
(43, 'Which characters a variable name can contain?', '(A-z, 0-9, -, . and _ )', '(A-z, 0-9, @ and _ )', '(A-z, 0-9, and _ )', '(A-z, 0-9, |, and _ )', '(A-z, 0-9, and _ )', '0', 'PHP', '4');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stdid` varchar(50) NOT NULL DEFAULT '0',
  `fname` varchar(155) DEFAULT NULL,
  `marks` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `stdid`, `fname`, `marks`) VALUES
(1, '4', NULL, '2'),
(2, '7', NULL, '3'),
(3, '10', NULL, '3'),
(4, '10', NULL, '8'),
(5, '18', NULL, '0'),
(6, '18', NULL, '10'),
(7, '11', NULL, '3'),
(8, '11', NULL, '3'),
(9, '21', NULL, '6'),
(10, '24', NULL, '10'),
(11, '24', 'Aniket', '10'),
(12, '27', 'Pooja', '4'),
(13, '26', 'Akshata', '0'),
(14, '28', 'Akshay', '7'),
(18, '27', NULL, '6'),
(19, '29', NULL, '5'),
(20, '30', NULL, '0'),
(21, '30', NULL, '3');

-- --------------------------------------------------------

--
-- Table structure for table `schat`
--

CREATE TABLE IF NOT EXISTS `schat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stdid` varchar(50) NOT NULL DEFAULT '0',
  `fid` varchar(50) NOT NULL DEFAULT '0',
  `chat` text,
  `sentiment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `schat`
--

INSERT INTO `schat` (`id`, `stdid`, `fid`, `chat`, `sentiment`) VALUES
(1, '4', '1', 'hi', 'positive'),
(2, '4', '1', 'hi there', 'positive'),
(3, '4', '1', 'dcsd', 'negative'),
(4, '4', '1', 'this is good answer', 'positive'),
(5, '7', '2', 'Its superb', 'positive'),
(6, '4', '1', 'Hello dear', 'positive'),
(7, '9', '2', 'Hello Sir', 'positive'),
(8, '10', '1', 'Hello sir............', 'positive'),
(9, '10', '1', 'Hiiiii............', 'positive'),
(10, '18', '1', 'hii sir....\r\n', 'positive'),
(11, '20', '3', 'Hello sir', 'positive'),
(12, '24', '4', 'Hello sir', 'positive'),
(13, '27', '2', 'Hi sir.............', 'positive'),
(14, '27', '2', 'Ok', 'positive'),
(15, '27', '2', 'Good Morning....', 'positive'),
(16, '27', '2', 'GA sir......send me the test schedule.', 'positive'),
(17, '29', '2', 'Hello sir.....', 'positive'),
(18, '30', '2', 'Hello......', 'positive');

-- --------------------------------------------------------

--
-- Table structure for table `scheduletest`
--

CREATE TABLE IF NOT EXISTS `scheduletest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(200) NOT NULL DEFAULT '0',
  `duration` varchar(200) NOT NULL DEFAULT '0',
  `date1` varchar(200) NOT NULL DEFAULT '0',
  `time1` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `scheduletest`
--

INSERT INTO `scheduletest` (`id`, `course`, `duration`, `date1`, `time1`) VALUES
(1, 'java', '1', '2017-12-16', '14:00'),
(2, 'java', '1', '2017-12-18', '17:48'),
(3, 'c', 'c', '2017-12-23', '18:26'),
(4, 'c', 'c++', '2018-04-28', '16:35'),
(5, 'c', 'c++', '2018-05-03', '18:30'),
(6, 'c', '3', '2018-05-03', '18:38'),
(7, 'c', '3', '2018-05-07', '18:01'),
(8, 'java', '3', '2018-05-07', '18:12'),
(9, 'java', '3', '2019-01-16', '16:55'),
(10, 'java', '3', '2019-01-18', '16:30'),
(11, 'java', '3', '2019-04-02', '12:30');

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE IF NOT EXISTS `studentreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL DEFAULT '0',
  `lname` varchar(200) NOT NULL DEFAULT '0',
  `gender` varchar(200) NOT NULL DEFAULT '0',
  `dob` varchar(200) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '0',
  `mobile` varchar(200) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL DEFAULT '0',
  `course` varchar(200) NOT NULL DEFAULT '0',
  `duration` varchar(200) NOT NULL DEFAULT '0',
  `password` varchar(200) NOT NULL DEFAULT '0',
  `startdate` varchar(50) NOT NULL DEFAULT '0',
  `expdate` varchar(200) NOT NULL DEFAULT '0',
  `flag` varchar(200) NOT NULL DEFAULT '0',
  `amount` varchar(200) NOT NULL DEFAULT '5000',
  `test` varchar(50) NOT NULL DEFAULT '0',
  `tcount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`id`, `fname`, `lname`, `gender`, `dob`, `email`, `mobile`, `address`, `course`, `duration`, `password`, `startdate`, `expdate`, `flag`, `amount`, `test`, `tcount`) VALUES
(9, 'Raju', 'Ram', 'male', '2017-12-01', 'raju@gmail.com', '9568554231', 'Nashik', 'java', '3', '4545', '2017/12/22', '2018/03/22', '1', '2200', '0', 0),
(23, 'Ram', 'Raj', 'male', '2018-12-31', 'ram@gmail.com', '8765432211', 'Sangli', 'java', '3', '4545', '2019/01/03', '2019/04/03', '0', '2000', '0', 0),
(32, 'Yash', 'Patil', 'male', '1999-02-01', 'yash@gmail.com', '9876543211', 'Pune', 'java', '3', '4545', '0', '0', '1', '5000', '0', 0),
(33, 'Karan', 'Kumar', 'male', '1996-02-07', 'karan@gmail.com', '9876543211', 'Pune', 'java', '3', '1010', '0', '0', '1', '5000', '0', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
