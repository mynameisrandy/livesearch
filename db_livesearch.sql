-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 27, 2016 at 08:11 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_livesearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_abilities`
--

CREATE TABLE `tbl_abilities` (
  `ability_id` int(11) NOT NULL,
  `ability_name` varchar(122) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_abilities`
--

INSERT INTO `tbl_abilities` (`ability_id`, `ability_name`) VALUES
(1, 'Overgrow'),
(2, 'Blaze'),
(3, 'Torrent'),
(4, 'Shield Dust'),
(5, 'Keen Eye'),
(6, 'Static'),
(7, 'Sand Veil'),
(8, 'Poison Point'),
(9, 'Rivalry'),
(10, 'Flash Fire');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gymleaders`
--

CREATE TABLE `tbl_gymleaders` (
  `gymleader_id` int(11) NOT NULL,
  `gymleader_name` varchar(112) NOT NULL,
  `gymleader_img` varchar(112) NOT NULL,
  `gymleader_gym` varchar(112) NOT NULL,
  `gymleader_badgeName` varchar(122) NOT NULL,
  `gymleader_badgeIMG` varchar(122) NOT NULL,
  `gymleader_type` int(11) NOT NULL,
  `gymleader_gender` varchar(122) NOT NULL,
  `gymleader_hometown` varchar(122) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gymleaders`
--

INSERT INTO `tbl_gymleaders` (`gymleader_id`, `gymleader_name`, `gymleader_img`, `gymleader_gym`, `gymleader_badgeName`, `gymleader_badgeIMG`, `gymleader_type`, `gymleader_gender`, `gymleader_hometown`) VALUES
(1, 'Brock', 'Brock.png', 'Pewter Gym', 'Boulder Badge', 'BoulderBadge.png', 1, 'Male', 'Pewter City'),
(2, 'Misty\r\n', 'Misty.png', 'Cerulean Gym', 'Cascade Bradge', 'CascadeBradge.png', 2, 'Female', 'Cascade City'),
(3, 'Lt. Surge', 'Surge.png', 'Vermilion Gym', 'Thunder Badge', 'ThunderBadge.png', 3, 'Male', 'Vermilion City'),
(4, 'Erika', 'Erika.png', 'Celadon Gym', 'Rainbow Badge', 'RainbowBadge.png', 4, 'Female', 'Celadon City'),
(5, 'Koga', 'Koga.png', 'Fuchsia Gym', 'Soul Badge', 'SoulBadge', 4, 'Male', 'Fuchsia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pokemons`
--

CREATE TABLE `tbl_pokemons` (
  `pokemon_id` int(11) NOT NULL,
  `pokemon_name` varchar(112) NOT NULL,
  `pokemon_type` int(11) NOT NULL,
  `pokemon_img` varchar(112) NOT NULL,
  `pokemon_bio` text NOT NULL,
  `pokemon_abilities` int(11) NOT NULL,
  `pokemon_lvlup` int(11) NOT NULL,
  `pokemon_evolves` int(11) NOT NULL,
  `pokemon_hp` int(11) NOT NULL,
  `pokemon_attack` int(11) NOT NULL,
  `pokemon_def` int(11) NOT NULL,
  `pokemon_sp_attack` int(11) NOT NULL,
  `pokemon_sp_def` int(11) NOT NULL,
  `pokemon_speed` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pokemons`
--

INSERT INTO `tbl_pokemons` (`pokemon_id`, `pokemon_name`, `pokemon_type`, `pokemon_img`, `pokemon_bio`, `pokemon_abilities`, `pokemon_lvlup`, `pokemon_evolves`, `pokemon_hp`, `pokemon_attack`, `pokemon_def`, `pokemon_sp_attack`, `pokemon_sp_def`, `pokemon_speed`) VALUES
(1, 'Bulbasaur', 1, 'Bulbasaur.png', 'Bulbasaur is a dual-type Grass/Poison Pokemon. It evolves into Ivysaur starting at level 16, which evolves into Venusaur starting at level 32.', 1, 16, 2, 45, 49, 49, 65, 65, 45),
(2, 'Ivysaur', 1, 'Ivysaur.png', 'Ivysaur is a dual-type Grass/Poison Pokemon. It evolves from Bulbasaur starting at level 16 and evolves into Venusaur starting at level 32.', 1, 32, 3, 60, 62, 63, 80, 80, 60),
(3, 'Venusaur', 1, 'Venusaur.png', 'Venusaur is a dual-type Grass/Poison Pokemon.\r\nIt evolves from Ivysaur starting at level 32. It is the final form of Bulbasaur. It can Mega Evolve into Mega Venusaur using the Venusaurite.', 1, 32, 3, 80, 82, 83, 100, 100, 80),
(4, 'Mega Venusaur', 1, 'Mega Venusaur.png', 'It can Mega Evolve into Mega Venusaur using the Venusaurite.', 1, 32, 3, 80, 100, 123, 122, 120, 80),
(5, 'Charmander', 3, 'Charmander.png', 'Charmanderis a Fire-type Pokemon.\r\nIt evolves into Charmeleon starting at level 16, which evolves into Charizard starting at level 36.', 2, 16, 5, 39, 52, 43, 60, 60, 65),
(6, 'Charmeleon', 2, 'Charmeleon.png', 'Charmeleon is a Fire-type Pokemon.\r\nIt evolves from Charmander starting at level 16 and evolves into Charizard starting at level 36.', 2, 36, 6, 58, 64, 58, 80, 65, 80),
(7, 'Charizard', 2, 'Charizard.png', 'Charizard is a dual-type Fire/Flying Pokemon.\r\nIt evolves from Charmeleon starting at level 36. It is the final form of Charmander. It can Mega Evolve into two forms: Mega Charizard X using Charizardite X and Mega Charizard Y using Charizardite Y.', 4, 32, 6, 78, 85, 78, 109, 85, 100),
(8, 'Squirtle', 1, 'Squirtle.png', 'Squirtle''s primary role on a team is to remove entry hazards with Rapid Spin, but it is outclassed in many ways by Staryu. There are reasons to use Squirtle, however, because of its access to priority moves such as Aqua Jet and Fake Out, better bulk, and the ability to Rapid Spin on Ghost-types thanks to Foresight. Unfortunately, Squirtle has poor Attack and Speed stats so it''s typically delegated to being used on more defensive teams, but its lack of recovery hinders it on such team archetypes.\r\n\r\n', 2, 16, 16, 44, 48, 65, 50, 64, 43),
(9, 'Wartortle', 1, 'Wartortle.png', 'Wartortle is mostly outclassed by other Pokemon that can keep entry hazard control, such as Armaldo and Swanna though Wartortle carries some slight niches that allow it to set itself apart from them, and it can be considered for a teamslot on a defensive team that struggles against entry hazards, even if it''s extremely situational. Wartortle is the only spinner in PU that isn''t weak to Stealth Rock, though its lack of recovery makes it susceptible to entry hazards, especially Toxic Spikes, and keeps it from repeatedly being able to use Rapid Spin. Wartortle has good bulk enhanced by Eviolite, which allows it to check various threats and find some opportunities to Rapid Spin or cripple foes with Scald and Toxic. Another niche lies in its access to Foresight, as it allows Wartortle to catch Ghost-types that usually switch in on the probable Rapid Spin, such as Misdreavus, Gourgeist-XL, and Dusknoir, off-guard; however Misdreavus is still able to nullify Wartortle''s attempt to use Rapid Spin most of the time because of its access of Taunt, which blocks Foresight, though it can be caught off-guard on the switch in. Unfortunately, Defoggers such as Lumineon and Vullaby are often preferred on defensive teams because they can remove entry hazards more reliably. As a last note, Wartortle relies on Eviolite to keep checking strong attackers, and its mediocre offensive presence makes it setup fodder against Pokemon such as Clefairy, Duosion, and Simipour, making it unviable on most teams.\r\n\r\n', 2, 32, 3, 59, 63, 80, 65, 80, 58),
(10, 'Blastoise', 3, 'Blastoise.png', 'Wartortle is mostly outclassed by other Pokemon that can keep entry hazard control, such as Armaldo and Swanna though Wartortle carries some slight niches that allow it to set itself apart from them, and it can be considered for a teamslot on a defensive team that struggles against entry hazards, even if it''s extremely situational. Wartortle is the only spinner in PU that isn''t weak to Stealth Rock, though its lack of recovery makes it susceptible to entry hazards, especially Toxic Spikes, and keeps it from repeatedly being able to use Rapid Spin. Wartortle has good bulk enhanced by Eviolite, which allows it to check various threats and find some opportunities to Rapid Spin or cripple foes with Scald and Toxic. Another niche lies in its access to Foresight, as it allows Wartortle to catch Ghost-types that usually switch in on the probable Rapid Spin, such as Misdreavus, Gourgeist-XL, and Dusknoir, off-guard; however Misdreavus is still able to nullify Wartortle''s attempt to use Rapid Spin most of the time because of its access of Taunt, which blocks Foresight, though it can be caught off-guard on the switch in. Unfortunately, Defoggers such as Lumineon and Vullaby are often preferred on defensive teams because they can remove entry hazards more reliably. As a last note, Wartortle relies on Eviolite to keep checking strong attackers, and its mediocre offensive presence makes it setup fodder against Pokemon such as Clefairy, Duosion, and Simipour, making it unviable on most teams.\r\n\r\n', 1, 13, 2, 79, 83, 100, 85, 105, 78);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_types`
--

CREATE TABLE `tbl_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(112) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_types`
--

INSERT INTO `tbl_types` (`type_id`, `type_name`) VALUES
(1, 'Grass'),
(2, 'Poison'),
(3, 'Fire'),
(4, 'Normal'),
(5, 'Fighting'),
(6, 'Water'),
(7, 'Flying'),
(8, 'Dragon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_abilities`
--
ALTER TABLE `tbl_abilities`
  ADD PRIMARY KEY (`ability_id`);

--
-- Indexes for table `tbl_gymleaders`
--
ALTER TABLE `tbl_gymleaders`
  ADD PRIMARY KEY (`gymleader_id`);

--
-- Indexes for table `tbl_pokemons`
--
ALTER TABLE `tbl_pokemons`
  ADD PRIMARY KEY (`pokemon_id`);

--
-- Indexes for table `tbl_types`
--
ALTER TABLE `tbl_types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_abilities`
--
ALTER TABLE `tbl_abilities`
  MODIFY `ability_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_gymleaders`
--
ALTER TABLE `tbl_gymleaders`
  MODIFY `gymleader_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pokemons`
--
ALTER TABLE `tbl_pokemons`
  MODIFY `pokemon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_types`
--
ALTER TABLE `tbl_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
