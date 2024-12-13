/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `movements`;
CREATE TABLE `movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movement` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `movements_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS `pokemons`;
CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pokemon` varchar(30) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS `pokemons_movements`;
CREATE TABLE `pokemons_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pokemon_id` int(11) DEFAULT NULL,
  `movement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movement_id` (`movement_id`),
  KEY `pokemon_id` (`pokemon_id`),
  CONSTRAINT `pokemons_movements_ibfk_1` FOREIGN KEY (`movement_id`) REFERENCES `movements` (`id`),
  CONSTRAINT `pokemons_movements_ibfk_2` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS `pokemons_types`;
CREATE TABLE `pokemons_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pokemon_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pokemon_id` (`pokemon_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `pokemons_types_ibfk_1` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemons` (`id`),
  CONSTRAINT `pokemons_types_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `movements` (`id`, `movement`, `description`, `type_id`) VALUES
(1, 'ffg', 'gfgfg', 1);


INSERT INTO `pokemons` (`id`, `pokemon`, `is_deleted`, `image`) VALUES
(1, 'bulbasaur', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg');
INSERT INTO `pokemons` (`id`, `pokemon`, `is_deleted`, `image`) VALUES
(2, 'ivysaur', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/2.svg');
INSERT INTO `pokemons` (`id`, `pokemon`, `is_deleted`, `image`) VALUES
(3, 'venusaur', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/3.svg');
INSERT INTO `pokemons` (`id`, `pokemon`, `is_deleted`, `image`) VALUES
(4, 'charmander', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/4.svg'),
(5, 'charmeleon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/5.svg'),
(6, 'charizard', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/6.svg'),
(7, 'squirtle', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/7.svg'),
(8, 'wartortle', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/8.svg'),
(9, 'blastoise', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/9.svg'),
(10, 'caterpie', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/10.svg'),
(11, 'metapod', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/11.svg'),
(12, 'butterfree', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/12.svg'),
(13, 'weedle', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/13.svg'),
(14, 'kakuna', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/14.svg'),
(15, 'beedrill', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/15.svg'),
(16, 'pidgey', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/16.svg'),
(17, 'pidgeotto', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/17.svg'),
(18, 'pidgeot', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/18.svg'),
(19, 'rattata', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/19.svg'),
(20, 'raticate', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/20.svg'),
(21, 'spearow', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/21.svg'),
(22, 'fearow', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/22.svg'),
(23, 'ekans', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/23.svg'),
(24, 'arbok', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/24.svg'),
(25, 'pikachu', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/25.svg'),
(26, 'raichu', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/26.svg'),
(27, 'sandshrew', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/27.svg'),
(28, 'sandslash', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/28.svg'),
(29, 'nidoran-f', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/29.svg'),
(30, 'nidorina', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/30.svg'),
(31, 'nidoqueen', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/31.svg'),
(32, 'nidoran-m', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/32.svg'),
(33, 'nidorino', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/33.svg'),
(34, 'nidoking', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/34.svg'),
(35, 'clefairy', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/35.svg'),
(36, 'clefable', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/36.svg'),
(37, 'vulpix', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/37.svg'),
(38, 'ninetales', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/38.svg'),
(39, 'jigglypuff', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/39.svg'),
(40, 'wigglytuff', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/40.svg'),
(41, 'zubat', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/41.svg'),
(42, 'golbat', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/42.svg'),
(43, 'oddish', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/43.svg'),
(44, 'gloom', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/44.svg'),
(45, 'vileplume', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/45.svg'),
(46, 'paras', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/46.svg'),
(47, 'parasect', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/47.svg'),
(48, 'venonat', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/48.svg'),
(49, 'venomoth', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/49.svg'),
(50, 'diglett', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/50.svg'),
(51, 'dugtrio', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/51.svg'),
(52, 'meowth', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/52.svg'),
(53, 'persian', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/53.svg'),
(54, 'psyduck', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/54.svg'),
(55, 'golduck', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/55.svg'),
(56, 'mankey', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/56.svg'),
(57, 'primeape', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/57.svg'),
(58, 'growlithe', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/58.svg'),
(59, 'arcanine', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/59.svg'),
(60, 'poliwag', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/60.svg'),
(61, 'poliwhirl', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/61.svg'),
(62, 'poliwrath', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/62.svg'),
(63, 'abra', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/63.svg'),
(64, 'kadabra', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/64.svg'),
(65, 'alakazam', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/65.svg'),
(66, 'machop', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/66.svg'),
(67, 'machoke', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/67.svg'),
(68, 'machamp', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/68.svg'),
(69, 'bellsprout', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/69.svg'),
(70, 'weepinbell', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/70.svg'),
(71, 'victreebel', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/71.svg'),
(72, 'tentacool', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/72.svg'),
(73, 'tentacruel', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/73.svg'),
(74, 'geodude', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/74.svg'),
(75, 'graveler', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/75.svg'),
(76, 'golem', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/76.svg'),
(77, 'ponyta', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/77.svg'),
(78, 'rapidash', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/78.svg'),
(79, 'slowpoke', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/79.svg'),
(80, 'slowbro', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/80.svg'),
(81, 'magnemite', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/81.svg'),
(82, 'magneton', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/82.svg'),
(83, 'farfetchd', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/83.svg'),
(84, 'doduo', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/84.svg'),
(85, 'dodrio', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/85.svg'),
(86, 'seel', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/86.svg'),
(87, 'dewgong', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/87.svg'),
(88, 'grimer', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/88.svg'),
(89, 'muk', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/89.svg'),
(90, 'shellder', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/90.svg'),
(91, 'cloyster', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/91.svg'),
(92, 'gastly', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/92.svg'),
(93, 'haunter', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/93.svg'),
(94, 'gengar', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/94.svg'),
(95, 'onix', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/95.svg'),
(96, 'drowzee', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/96.svg'),
(97, 'hypno', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/97.svg'),
(98, 'krabby', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/98.svg'),
(99, 'kingler', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/99.svg'),
(100, 'voltorb', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/100.svg'),
(101, 'electrode', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/101.svg'),
(102, 'exeggcute', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/102.svg'),
(103, 'exeggutor', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/103.svg'),
(104, 'cubone', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/104.svg'),
(105, 'marowak', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/105.svg'),
(106, 'hitmonlee', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/106.svg'),
(107, 'hitmonchan', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/107.svg'),
(108, 'lickitung', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/108.svg'),
(109, 'koffing', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/109.svg'),
(110, 'weezing', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/110.svg'),
(111, 'rhyhorn', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/111.svg'),
(112, 'rhydon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/112.svg'),
(113, 'chansey', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/113.svg'),
(114, 'tangela', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/114.svg'),
(115, 'kangaskhan', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/115.svg'),
(116, 'horsea', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/116.svg'),
(117, 'seadra', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/117.svg'),
(118, 'goldeen', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/118.svg'),
(119, 'seaking', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/119.svg'),
(120, 'staryu', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/120.svg'),
(121, 'starmie', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/121.svg'),
(122, 'mr-mime', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/122.svg'),
(123, 'scyther', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/123.svg'),
(124, 'jynx', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/124.svg'),
(125, 'electabuzz', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/125.svg'),
(126, 'magmar', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/126.svg'),
(127, 'pinsir', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/127.svg'),
(128, 'tauros', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/128.svg'),
(129, 'magikarp', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/129.svg'),
(130, 'gyarados', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/130.svg'),
(131, 'lapras', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/131.svg'),
(132, 'ditto', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/132.svg'),
(133, 'eevee', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/133.svg'),
(134, 'vaporeon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/134.svg'),
(135, 'jolteon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/135.svg'),
(136, 'flareon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/136.svg'),
(137, 'porygon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/137.svg'),
(138, 'omanyte', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/138.svg'),
(139, 'omastar', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/139.svg'),
(140, 'kabuto', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/140.svg'),
(141, 'kabutops', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/141.svg'),
(142, 'aerodactyl', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/142.svg'),
(143, 'snorlax', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/143.svg'),
(144, 'articuno', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/144.svg'),
(145, 'zapdos', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/145.svg'),
(146, 'moltres', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/146.svg'),
(147, 'dratini', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/147.svg'),
(148, 'dragonair', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/148.svg'),
(149, 'dragonite', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/149.svg'),
(150, 'mewtwo', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/150.svg'),
(151, 'mew', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/151.svg');





INSERT INTO `types` (`id`, `type`) VALUES
(1, 'grass');
INSERT INTO `types` (`id`, `type`) VALUES
(2, 'poison');
INSERT INTO `types` (`id`, `type`) VALUES
(3, 'fire');
INSERT INTO `types` (`id`, `type`) VALUES
(4, 'flying'),
(5, 'water'),
(6, 'bug'),
(7, 'normal'),
(8, 'electric'),
(9, 'ground'),
(10, 'fairy'),
(11, 'fighting'),
(12, 'psychic'),
(13, 'rock'),
(14, 'steel'),
(15, 'ice'),
(16, 'ghost'),
(17, 'dragon');

INSERT INTO `users` (`id`, `username`, `password`, `email`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Julio', 'abc123', 'julio.aguilarc@ittux.edu.mx', 1, '2024-10-31 20:53:53', '2024-10-31 20:55:24');
INSERT INTO `users` (`id`, `username`, `password`, `email`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Homer.s', '123abc', 'homer.s@ittux.edu.mx', 0, '2024-11-05 20:08:54', '2024-11-05 20:08:54');
INSERT INTO `users` (`id`, `username`, `password`, `email`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Bart.s', 'a1b2c3', 'bart.s@ittux.edu.mx', 1, '2024-11-05 20:08:54', '2024-11-05 20:08:54');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;