## CREATE TEAM ##
CREATE TABLE `team` (
  `team_name_id` varchar(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_individual` boolean DEFAULT TRUE,
  `creation_date` date DEFAULT NULL,
  `pageurl` varchar(2083) DEFAULT NULL,
  `voting_freq` int DEFAULT NULL,
  `last_voted` date DEFAULT NULL,
  `size` int DEFAULT 6,
  PRIMARY KEY (`team_name_id`)
)

## CREATE Relationships ##

CREATE TABLE `relationships` (
  `relationship_id` varchar(225) NOT NULL,
  `parent_id` varchar(225) NOT NULL,
  `child_id` varchar(255) NOT NULL,
  `is_leader` boolean DEFAULT FALSE,
  `creation_date` date DEFAULT NULL,
  PRIMARY KEY (`relationship_id`),
  FOREIGN KEY (`parent_id`) REFERENCES `team` (`team_name_id`),
  FOREIGN KEY (`child_id`) REFERENCES `team` (`team_name_id`)
)


