CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('unemployed', 'Chômeur', 0),
('unemployed2', 'Aucune', 0);

-- --------------------------------------------------------

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('unemployed', 0, 'unemployed', 'RSA', 750, '{}', '{}'),
('unemployed2', 0, 'unemployed2', 'Aucun', 0, '', ''),

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `accounts` longtext,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext,
  `job` varchar(20) DEFAULT 'unemployed',
  `job2` varchar(20) NOT NULL DEFAULT 'unemployed2',
  `job_grade` int(11) DEFAULT '0',
  `job2_grade` int(11) NOT NULL DEFAULT '0',
  `loadout` longtext,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `skin` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

