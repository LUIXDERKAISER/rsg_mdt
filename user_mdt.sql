CREATE TABLE `user_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `user_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` int(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
	
       PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_telegrams` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
(1, 'Aiding and Abetting', 100, 0, 0),
(2, 'Arson', 500, 0, 30),
(3, 'Armored Wagon Robbery', 650, 0, 40),
(4, 'Attempted Murder on LEO', 1500, 0, 60),
(5, 'Attempted Murder', 1000, 0, 50),
(6, 'Assault w/ Deadly Weapon on LEO', 700, 0, 45),
(7, 'Assault w/ Deadly Weapon', 350, 0, 30),
(8, 'Assault on LEO', 150, 0, 15),
(9, 'Assault', 100, 0, 10),
(10, 'Bank Robbery', 800, 0, 50),
(11, 'Brandishing a Firearm', 100, 0, 5),
(12, 'Bribery', 200, 0, 20),
(13, 'Careless Driving', 100, 0, 0),
(14, 'Corruption', 10000, 0, 650),
(15, 'Contempt of Court', 250, 0, 10),
(16, 'Criminal Mischief', 100, 0, 15),
(17, 'Criminal Speeding', 300, 0, 10),
(18, 'Damage to Government Property', 150, 0, 10),
(19, 'Disturbing the Peace', 100, 0, 10),
(20, 'Driving/Riding Under the Influence', 150, 0, 15),
(21, 'Drug Manufacturing/Cultivation', 550, 0, 40),
(22, 'Drug Trafficking', 500, 0, 40),
(23, 'Evading Arrest', 200, 0, 20),
(24, 'Excessive Speeding 4', 250, 0, 0),
(25, 'Excessive Speeding 3', 200, 0, 0),
(26, 'Excessive Speeding 2', 150, 0, 0),
(27, 'Excessive Speeding', 100, 0, 0),
(28, 'Failure to Stop', 100, 0, 0),
(29, 'False Report', 100, 0, 10),
(30, 'Failure to Identify', 150, 0, 15),
(31, 'Failure to Obey a Lawful Order', 150, 0, 10),
(32, 'False Impersonation of a Government Official', 200, 0, 25),
(33, 'Felony Attempted Commision of an Offence/Crime', 350, 0, 20),
(34, 'Felony Driving/Riding Under the Influence', 300, 0, 30),
(35, 'Grand Theft Auto', 300, 0, 20),
(36, 'Hit and Run', 150, 0, 15),
(37, 'House Robbery', 100, 0, 10),
(38, 'Illegal Gambling', 200, 0, 20),
(39, 'Illegal Lane Change', 100, 0, 0),
(40, 'Illegal Parking', 100, 0, 0),
(41, 'Illegal U-Turn', 100, 0, 0),
(42, 'Indecent Exposure', 100, 0, 0),
(43, 'Incident Report', 0, 0, 0),
(44, 'Involuntary Manslaughter', 10000, 0, 120),
(45, 'Kidnapping of an LEO', 400, 0, 40),
(46, 'Kidnapping / Hostage Taking', 200, 0, 20),
(47, 'Larceny', 150, 0, 20),
(48, 'Loitering', 100, 0, 0),
(49, 'Murder', 25000, 0, 0),
(50, 'Obstruction of Justice', 150, 0, 15),
(51, 'Obstructing Traffic', 150, 0, 0),
(52, 'Organizing an illegal event', 150, 0, 15),
(53, 'Perjury', 1000, 0, 60),
(54, 'Participating in an illegal event', 50, 0, 5),
(55, 'Possession of Schedule 1 Drug', 150, 0, 15),
(56, 'Possession of Schedule 2 Drug', 250, 0, 20),
(57, 'Possession of a Class 2 Firearm', 800, 0, 40),
(58, 'Possession of a Class 1 Firearm', 150, 0, 15),
(59, 'Possession of Dirty Money', 200, 0, 25),
(60, 'Possession of Stolen Goods', 100, 0, 15),
(61, 'Prostitution', 250, 0, 15),
(62, 'Public Intoxication', 100, 0, 0),
(63, 'Reckless Endangerment', 150, 0, 5),
(64, 'Resisting Arrest', 100, 0, 10),
(65, 'Store Robbery', 150, 0, 15),
(66, 'Sale/Distribution of Schedule 1 Drug', 250, 0, 20),
(67, 'Sale/Distribution of Schedule 2 Drug', 400, 0, 30),
(68, 'Stalking', 350, 0, 20),
(69, 'Tampering With Evidence', 200, 0, 20),
(70, 'Threat to do Bodily Harm', 100, 0, 10),
(71, 'Terroristic Threat', 150, 0, 10),
(72, 'Trespassing', 100, 0, 10),
(73, 'Unlawful discharge of a firearm', 150, 0, 10),
(74, 'Unlawful Solicitation', 150, 0, 20),
(75, 'Vehicular Manslaughter', 7500, 0, 100),
(76, 'Verbal Harassment ', 100, 0, 0),
(77, 'Verbal Warning', 0, 0, 0),
(78, 'Weapons Caching of Class 2s', 2500, 0, 120),
(79, 'Weapons Caching of Class 1s', 1250, 0, 60),
(80, 'Weapons Trafficking of Class 2s', 1700, 0, 80),
(81, 'Weapons Trafficking of Class 1s', 800, 0, 45),
(82, 'Written Citation', 0, 0, 0);