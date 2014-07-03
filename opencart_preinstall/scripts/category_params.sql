--
-- Table structure for table `abdb_category_params`
--

CREATE TABLE IF NOT EXISTS `abdb_category_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_hungarian_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=9 ;

--
-- Truncate table before insert `abdb_category_params`
--

TRUNCATE TABLE `abdb_category_params`;
--
-- Dumping data for table `abdb_category_params`
--

INSERT INTO `abdb_category_params` (`id`, `name`, `type`) VALUES
(1, 'Száraz', 1),
(2, 'Félszáraz', 1),
(3, 'Félédes', 1),
(4, 'Édes', 1),
(5, 'Fehérbor', 2),
(6, 'Rozé', 2),
(7, 'Vörösbor', 2),
(8, 'Desszertbor', 2);

-- --------------------------------------------------------

--
-- Table structure for table `abdb_category_params_to_category`
--

CREATE TABLE IF NOT EXISTS `abdb_category_params_to_category` (
  `category_param_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Truncate table before insert `abdb_category_params_to_category`
--

TRUNCATE TABLE `abdb_category_params_to_category`;
--
-- Dumping data for table `abdb_category_params_to_category`
--

INSERT INTO `abdb_category_params_to_category` (`category_param_id`, `category_id`) VALUES
(1, 59),
(2, 59),
(3, 59),
(4, 59);

-- --------------------------------------------------------

--
-- Table structure for table `abdb_category_params_to_product`
--

CREATE TABLE IF NOT EXISTS `abdb_category_params_to_product` (
  `product_id` int(11) NOT NULL,
  `category_param_id` int(11) NOT NULL,
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Truncate table before insert `abdb_category_params_to_product`
--

TRUNCATE TABLE `abdb_category_params_to_product`;
--
-- Dumping data for table `abdb_category_params_to_product`
--

INSERT INTO `abdb_category_params_to_product` (`product_id`, `category_param_id`) VALUES
(53, 1),
(53, 5),
(54, 2),
(54, 7),
(52, 1),
(52, 7);
