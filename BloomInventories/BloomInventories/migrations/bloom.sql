-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2022 at 07:35 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloom`
--

-- --------------------------------------------------------

--
-- Table structure for table `bouquets`
--

CREATE TABLE `bouquets` (
  `id` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `location_id` int(11) NOT NULL,
  `material1` varchar(255) NOT NULL DEFAULT '',
  `material2` varchar(255) NOT NULL DEFAULT '',
  `material3` varchar(255) NOT NULL DEFAULT '',
  `material4` varchar(255) NOT NULL DEFAULT '',
  `material5` varchar(255) NOT NULL DEFAULT '',
  `material6` varchar(255) NOT NULL DEFAULT '',
  `material7` varchar(255) NOT NULL DEFAULT '',
  `material8` varchar(255) NOT NULL DEFAULT '',
  `material9` varchar(255) NOT NULL DEFAULT '',
  `material10` varchar(255) NOT NULL DEFAULT '',
  `material11` varchar(255) NOT NULL DEFAULT '',
  `material12` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bouquets`
--

INSERT INTO `bouquets` (`id`, `name`, `category`, `quantity`, `imgUrl`, `price`, `location_id`, `material1`, `material2`, `material3`, `material4`, `material5`, `material6`, `material7`, `material8`, `material9`, `material10`, `material11`, `material12`) VALUES
(28, 'Rustic', 'leafy', 2, 'https://i.pinimg.com/564x/9a/37/7a/9a377ad2ea497fa44ebf72405a6c9410.jpg', '120', 1, 'olive branches', 'foliage', 'white hydrangeas', 'cream ribbon', '', '', '', '', '', '', '', ''),
(29, 'Pink posy', 'floral', 3, 'https://i.pinimg.com/564x/d9/11/98/d9119831c35d7066ba15122bfd22056d.jpg', '230', 1, 'pink hydrangeas', 'eucalyptus', 'white phlox', 'pink carnations', 'pink sprays', 'white paper', 'pink ribbon', '', '', '', '', ''),
(30, 'Soft and sweet', 'floral', 5, 'https://i.pinimg.com/736x/09/33/38/0933381a02e5645887f780baae8a733e.jpg', '230', 1, 'pink roses', 'white roses', 'pink tulips', 'white tulips', 'pink agrostemma', 'queen\'s lace', 'brown paper', 'white ribbon', '', '', '', ''),
(31, 'Sunset', 'floral', 5, 'https://i.pinimg.com/736x/e3/00/58/e3005856d9095de0b52a20ee211a41c9.jpg', '260', 1, 'peach ranunculas', 'pink poppies', 'pink sweetpeas', 'peach carnations', 'white roses', 'pink lisianthus', 'orange tulips', 'pink sprays', 'brown paper', 'white paper', 'cream ribbon', 'pink ribbon'),
(32, 'Carnation', 'single', 6, 'https://i.pinimg.com/736x/96/b2/74/96b274c133cca6ad47c1908e84235b03.jpg', '50', 1, 'pink carnations', 'white paper', 'sheer ribbon', '', '', '', '', '', '', '', '', ''),
(33, 'Tulips', 'bunch', 7, 'https://i.pinimg.com/564x/f7/ec/1b/f7ec1b88265a85eff1e48d99f019281a.jpg', '220', 1, 'pink tulips', 'white paper', 'white ribbon', '', '', '', '', '', '', '', '', ''),
(34, 'Pretty pink', 'floral', 8, 'https://i.pinimg.com/564x/55/88/20/5588202c41178a1cfa1e432444ee6a13.jpg', '270', 1, 'pink cornflower', 'pink roses', 'white lisianthus', 'pink carnations', 'baby\'s breath', 'white paper', 'pink ribbon', '', '', '', '', ''),
(35, 'Rosy', 'bunch', 9, 'https://i.pinimg.com/564x/14/a8/11/14a811d95ac9f801c4a84762147fca78.jpg', '150', 1, 'pink roses', 'white paper', 'pink ribbon', '', '', '', '', '', '', '', '', ''),
(36, 'Blue posy', 'floral', 10, 'https://i.pinimg.com/564x/65/80/dc/6580dc0d02931862793a54b4e730fc9e.jpg', '200', 1, 'blue hydrangeas', 'eucalyptus', 'white lisianthus', 'white phlox', 'white scabiosa', 'white paper', 'blue paper', 'white ribbon', 'blue ribbon', '', '', ''),
(37, 'Sweet pea', 'floral', 1, 'https://i.pinimg.com/564x/c8/1b/06/c81b06187009c07e5ac18ba881554ab6.jpg', '180', 1, 'pink lisianthus', 'peach ranunculas', 'pink sweetpeas', 'pink sprays', 'peach phlox', 'pink ribbon', '', '', '', '', '', ''),
(38, 'Peach perfect', 'floral', 3, 'https://i.pinimg.com/564x/37/82/9e/37829e4b9df9edb27f48e7a823248947.jpg', '230', 1, 'orange roses', 'peach ranunculas', 'peach carnations', 'baby\'s breath', 'eucalyptus', 'brown paper', 'pink ribbon', 'white ribbon', '', '', '', ''),
(39, 'Simple', 'leafy', 12, 'https://i.pinimg.com/564x/65/25/24/6525247ef10b8a94e487237da74c9867.jpg', '120', 1, 'eucalyptus', 'white peonies', 'fern', 'foliage', 'rock roses', 'twine', '', '', '', '', '', ''),
(40, 'Floral fantasy', 'floral', 2, 'https://i.pinimg.com/564x/a9/b3/2e/a9b32efbd081b2c82df12ef75def9fd3.jpg', '200', 1, 'eucalyptus', 'pink roses', 'cream roses', 'brown paper', 'twine', '', '', '', '', '', '', ''),
(41, 'Spring', 'floral', 12, 'https://i.pinimg.com/564x/76/24/9b/76249b36c5c0a196104e6f422b7f1c70.jpg', '190', 1, 'pink gerberas', 'pink daffodils', 'peach roses', 'white roses', 'pink ranunculas', 'blue sweetpeas', 'pink agrostemma', 'cream paper', 'yellow ribbon', '', '', ''),
(42, 'Whimsical', 'floral', 3, 'https://i.pinimg.com/564x/a3/74/95/a3749540b00ae57cc777837a3c00c987.jpg', '240', 1, 'white roses', 'pink roses', 'white lisianthus', 'pink agrostemma', 'pink peonies', 'white paper', 'pink ribbon', '', '', '', '', ''),
(43, 'Oopsie daisy', 'leafy', 13, 'https://i.pinimg.com/564x/c1/b3/0b/c1b30bb02156b7156ac8c598933ab6d7.jpg', '100', 1, 'white gerberas', 'eucalyptus', 'foliage', 'cream paper', 'white paper', 'cream ribbon', '', '', '', '', '', ''),
(44, 'Perfect purple', 'bunch', 14, 'https://i.pinimg.com/564x/cb/80/10/cb80105038f024ed000c23d5eb323cc6.jpg', '120', 1, 'purple phlox', 'purple ribbon', '', '', '', '', '', '', '', '', '', ''),
(45, 'Evergreen', 'leafy', 15, 'https://i.pinimg.com/564x/68/83/a8/6883a81ee2a04824744eefdf3d2fe539.jpg', '90', 1, 'eucalyptus', 'bunny tails', 'olive branches', 'queen\'s lace', 'white roses', 'baby\'s breath', 'sheer ribbon', '', '', '', '', ''),
(46, 'Liseanthus', 'bunch', 12, 'https://i.pinimg.com/564x/af/ed/c7/afedc7a8cc41f203424d7a42eccc3f19.jpg', '130', 1, 'purple lisianthus', 'bunny tails', 'eucalyptus', '', 'white paper', 'purple ribbon', '', '', '', '', '', ''),
(47, 'Hydrangea', 'single', 12, 'https://i.pinimg.com/736x/a1/45/93/a145936991ce5913ce9c4f74d372254d.jpg', '90', 1, 'blue hydrangeas', 'brown paper', 'blue ribbon', '', '', '', '', '', '', '', '', ''),
(48, 'Anemone', 'bunch', 2, 'https://i.pinimg.com/736x/f6/7f/ae/f67fae8f59c761f301942f1542535768.jpg', '200', 1, 'pink anemones', 'eucalyptus', 'cream paper', 'black paper', 'black ribbon', '', '', '', '', '', '', ''),
(49, 'Sweet', 'bunch', 6, 'https://i.pinimg.com/564x/32/12/5a/32125aa6dd3bfbb32debd7a161e0658e.jpg', '190', 1, 'pink ranunculas', 'baby\'s breath', 'white paper', 'pink ribbon', '', '', '', '', '', '', '', ''),
(50, 'Greenery', 'leafy', 6, 'https://i.pinimg.com/564x/a4/c2/ac/a4c2ac0a6718c1cfea5cd194b84ecc94.jpg', '180', 1, 'green hydrangeas', 'eucalyptus', 'foliage', 'white sweetpeas', 'twine', '', '', '', '', '', '', ''),
(51, 'Sage', 'leafy', 9, 'https://i.pinimg.com/736x/a4/a8/d6/a4a8d67e8952cfb2032a267c0d0a7784.jpg', '170', 1, 'cream roses', 'eucalyptus', 'green paper', 'sage paper', 'cream ribbon', 'sheer ribbon', '', '', '', '', '', ''),
(52, 'Peony', 'bunch', 6, 'https://i.pinimg.com/564x/21/d7/9c/21d79c9c7192d32565e1355dd735a42b.jpg', '300', 1, 'pink peonies', 'white paper', '', 'brown paper', 'pink ribbon', 'white ribbon', '', '', '', '', '', ''),
(53, 'Purity', 'single', 15, 'https://i.pinimg.com/564x/46/00/d2/4600d26fd0f9a1cc609f897b35b2daa9.jpg', '50', 1, 'cream roses', 'cream paper', 'twine', '', '', '', '', '', '', '', '', ''),
(54, 'Lovely', 'single', 17, 'https://i.pinimg.com/564x/96/d5/a5/96d5a53baec7beba1e14f7db7305a5e0.jpg', '40', 1, 'pink roses', 'eucalyptus', 'cream paper', 'cream ribbon', 'pink ribbon', '', '', '', '', '', '', ''),
(55, 'Elegance', 'single', 17, 'https://i.pinimg.com/564x/c5/a3/17/c5a3176c747f227da2f311f1f1773a2b.jpg', '70', 1, 'pink roses', 'black paper', 'black ribbon', 'white paper', '', '', '', '', '', '', '', ''),
(56, 'Rustic', 'leafy', 13, 'https://i.pinimg.com/564x/9a/37/7a/9a377ad2ea497fa44ebf72405a6c9410.jpg', '120', 2, 'olive branches', 'foliage', 'white hydrangeas', 'cream ribbon', '', '', '', '', '', '', '', ''),
(57, 'Rustic', 'leafy', 12, 'https://i.pinimg.com/564x/9a/37/7a/9a377ad2ea497fa44ebf72405a6c9410.jpg', '120', 3, 'olive branches', 'foliage', 'white hydrangeas', 'cream ribbon', '', '', '', '', '', '', '', ''),
(58, 'Anemone', 'bunch', 3, 'https://i.pinimg.com/736x/f6/7f/ae/f67fae8f59c761f301942f1542535768.jpg', '200', 2, 'pink anemones', 'eucalyptus', 'cream paper', 'black paper', 'black ribbon', '', '', '', '', '', '', ''),
(59, 'Anemone', 'bunch', 2, 'https://i.pinimg.com/736x/f6/7f/ae/f67fae8f59c761f301942f1542535768.jpg', '200', 3, 'pink anemones', 'eucalyptus', 'cream paper', 'black paper', 'black ribbon', '', '', '', '', '', '', ''),
(60, 'Blue posy', 'floral', 20, 'https://i.pinimg.com/564x/65/80/dc/6580dc0d02931862793a54b4e730fc9e.jpg', '200', 2, 'blue hydrangeas', 'eucalyptus', 'white lisianthus', 'white phlox', 'white scabiosa', 'white paper', 'blue paper', 'white ribbon', 'blue ribbon', '', '', ''),
(61, 'Blue posy', 'floral', 16, 'https://i.pinimg.com/564x/65/80/dc/6580dc0d02931862793a54b4e730fc9e.jpg', '200', 3, 'blue hydrangeas', 'eucalyptus', 'white lisianthus', 'white phlox', 'white scabiosa', 'white paper', 'blue paper', 'white ribbon', 'blue ribbon', '', '', ''),
(62, 'Carnation', 'single', 18, 'https://i.pinimg.com/736x/96/b2/74/96b274c133cca6ad47c1908e84235b03.jpg', '50', 2, 'pink carnations', 'white paper', 'sheer ribbon', '', '', '', '', '', '', '', '', ''),
(63, 'Carnation', 'single', 19, 'https://i.pinimg.com/736x/96/b2/74/96b274c133cca6ad47c1908e84235b03.jpg', '50', 3, 'pink carnations', 'white paper', 'sheer ribbon', '', '', '', '', '', '', '', '', ''),
(64, 'Elegance', 'single', 20, 'https://i.pinimg.com/564x/c5/a3/17/c5a3176c747f227da2f311f1f1773a2b.jpg', '70', 2, 'pink roses', 'black paper', 'black ribbon', 'white paper', '', '', '', '', '', '', '', ''),
(65, 'Elegance', 'single', 1, 'https://i.pinimg.com/564x/c5/a3/17/c5a3176c747f227da2f311f1f1773a2b.jpg', '70', 3, 'pink roses', 'black paper', 'black ribbon', 'white paper', '', '', '', '', '', '', '', ''),
(66, 'Evergreen', 'leafy', 1, 'https://i.pinimg.com/564x/68/83/a8/6883a81ee2a04824744eefdf3d2fe539.jpg', '90', 2, 'eucalyptus', 'bunny tails', 'olive branches', 'queen\'s lace', 'white roses', 'baby\'s breath', 'sheer ribbon', '', '', '', '', ''),
(67, 'Evergreen', 'leafy', 15, 'https://i.pinimg.com/564x/68/83/a8/6883a81ee2a04824744eefdf3d2fe539.jpg', '90', 3, 'eucalyptus', 'bunny tails', 'olive branches', 'queen\'s lace', 'white roses', 'baby\'s breath', 'sheer ribbon', '', '', '', '', ''),
(68, 'Floral fantasy', 'floral', 2, 'https://i.pinimg.com/564x/a9/b3/2e/a9b32efbd081b2c82df12ef75def9fd3.jpg', '200', 2, 'eucalyptus', 'pink roses', 'cream roses', 'brown paper', 'twine', '', '', '', '', '', '', ''),
(69, 'Floral fantasy', 'floral', 2, 'https://i.pinimg.com/564x/a9/b3/2e/a9b32efbd081b2c82df12ef75def9fd3.jpg', '200', 3, 'eucalyptus', 'pink roses', 'cream roses', 'brown paper', 'twine', '', '', '', '', '', '', ''),
(70, 'Greenery', 'leafy', 6, 'https://i.pinimg.com/564x/a4/c2/ac/a4c2ac0a6718c1cfea5cd194b84ecc94.jpg', '180', 2, 'green hydrangeas', 'eucalyptus', 'foliage', 'white sweetpeas', 'twine', '', '', '', '', '', '', ''),
(71, 'Greenery', 'leafy', 6, 'https://i.pinimg.com/564x/a4/c2/ac/a4c2ac0a6718c1cfea5cd194b84ecc94.jpg', '180', 3, 'green hydrangeas', 'eucalyptus', 'foliage', 'white sweetpeas', 'twine', '', '', '', '', '', '', ''),
(72, 'Hydrangea', 'single', 12, 'https://i.pinimg.com/736x/a1/45/93/a145936991ce5913ce9c4f74d372254d.jpg', '90', 2, 'blue hydrangeas', 'brown paper', 'blue ribbon', '', '', '', '', '', '', '', '', ''),
(73, 'Hydrangea', 'single', 12, 'https://i.pinimg.com/736x/a1/45/93/a145936991ce5913ce9c4f74d372254d.jpg', '90', 3, 'blue hydrangeas', 'brown paper', 'blue ribbon', '', '', '', '', '', '', '', '', ''),
(74, 'Liseanthus', 'bunch', 12, 'https://i.pinimg.com/564x/af/ed/c7/afedc7a8cc41f203424d7a42eccc3f19.jpg', '130', 2, 'purple lisianthus', 'bunny tails', 'eucalyptus', '', 'white paper', 'purple ribbon', '', '', '', '', '', ''),
(75, 'Liseanthus', 'bunch', 12, 'https://i.pinimg.com/564x/af/ed/c7/afedc7a8cc41f203424d7a42eccc3f19.jpg', '130', 3, 'purple lisianthus', 'bunny tails', 'eucalyptus', '', 'white paper', 'purple ribbon', '', '', '', '', '', ''),
(76, 'Lovely', 'single', 2, 'https://i.pinimg.com/564x/96/d5/a5/96d5a53baec7beba1e14f7db7305a5e0.jpg', '40', 2, 'pink roses', 'eucalyptus', 'cream paper', 'cream ribbon', 'pink ribbon', '', '', '', '', '', '', ''),
(77, 'Lovely', 'single', 3, 'https://i.pinimg.com/564x/96/d5/a5/96d5a53baec7beba1e14f7db7305a5e0.jpg', '40', 3, 'pink roses', 'eucalyptus', 'cream paper', 'cream ribbon', 'pink ribbon', '', '', '', '', '', '', ''),
(78, 'Oopsie daisy', 'leafy', 4, 'https://i.pinimg.com/564x/c1/b3/0b/c1b30bb02156b7156ac8c598933ab6d7.jpg', '100', 2, 'white gerberas', 'eucalyptus', 'foliage', 'cream paper', 'white paper', 'cream ribbon', '', '', '', '', '', ''),
(79, 'Oopsie daisy', 'leafy', 5, 'https://i.pinimg.com/564x/c1/b3/0b/c1b30bb02156b7156ac8c598933ab6d7.jpg', '100', 3, 'white gerberas', 'eucalyptus', 'foliage', 'cream paper', 'white paper', 'cream ribbon', '', '', '', '', '', ''),
(80, 'Peach perfect', 'floral', 2, 'https://i.pinimg.com/564x/37/82/9e/37829e4b9df9edb27f48e7a823248947.jpg', '230', 2, 'orange roses', 'peach ranunculas', 'peach carnations', 'baby\'s breath', 'eucalyptus', 'brown paper', 'pink ribbon', 'white ribbon', '', '', '', ''),
(81, 'Peach perfect', 'floral', 2, 'https://i.pinimg.com/564x/37/82/9e/37829e4b9df9edb27f48e7a823248947.jpg', '230', 3, 'orange roses', 'peach ranunculas', 'peach carnations', 'baby\'s breath', 'eucalyptus', 'brown paper', 'pink ribbon', 'white ribbon', '', '', '', ''),
(82, 'Peony', 'bunch', 6, 'https://i.pinimg.com/564x/21/d7/9c/21d79c9c7192d32565e1355dd735a42b.jpg', '300', 2, 'pink peonies', 'white paper', '', 'brown paper', 'pink ribbon', 'white ribbon', '', '', '', '', '', ''),
(83, 'Peony', 'bunch', 6, 'https://i.pinimg.com/564x/21/d7/9c/21d79c9c7192d32565e1355dd735a42b.jpg', '300', 3, 'pink peonies', 'white paper', '', 'brown paper', 'pink ribbon', 'white ribbon', '', '', '', '', '', ''),
(84, 'Perfect purple', 'bunch', 14, 'https://i.pinimg.com/564x/cb/80/10/cb80105038f024ed000c23d5eb323cc6.jpg', '120', 2, 'purple phlox', 'purple ribbon', '', '', '', '', '', '', '', '', '', ''),
(85, 'Perfect purple', 'bunch', 14, 'https://i.pinimg.com/564x/cb/80/10/cb80105038f024ed000c23d5eb323cc6.jpg', '120', 3, 'purple phlox', 'purple ribbon', '', '', '', '', '', '', '', '', '', ''),
(86, 'Pink posy', 'floral', 6, 'https://i.pinimg.com/564x/d9/11/98/d9119831c35d7066ba15122bfd22056d.jpg', '230', 2, 'pink hydrangeas', 'eucalyptus', 'white phlox', 'pink carnations', 'pink sprays', 'white paper', 'pink ribbon', '', '', '', '', ''),
(87, 'Pink posy', 'floral', 7, 'https://i.pinimg.com/564x/d9/11/98/d9119831c35d7066ba15122bfd22056d.jpg', '230', 3, 'pink hydrangeas', 'eucalyptus', 'white phlox', 'pink carnations', 'pink sprays', 'white paper', 'pink ribbon', '', '', '', '', ''),
(88, 'Pretty pink', 'floral', 8, 'https://i.pinimg.com/564x/55/88/20/5588202c41178a1cfa1e432444ee6a13.jpg', '270', 2, 'pink cornflower', 'pink roses', 'white lisianthus', 'pink carnations', 'baby\'s breath', 'white paper', 'pink ribbon', '', '', '', '', ''),
(89, 'Pretty pink', 'floral', 9, 'https://i.pinimg.com/564x/55/88/20/5588202c41178a1cfa1e432444ee6a13.jpg', '270', 3, 'pink cornflower', 'pink roses', 'white lisianthus', 'pink carnations', 'baby\'s breath', 'white paper', 'pink ribbon', '', '', '', '', ''),
(90, 'Purity', 'single', 15, 'https://i.pinimg.com/564x/46/00/d2/4600d26fd0f9a1cc609f897b35b2daa9.jpg', '50', 2, 'cream roses', 'cream paper', 'twine', '', '', '', '', '', '', '', '', ''),
(91, 'Purity', 'single', 15, 'https://i.pinimg.com/564x/46/00/d2/4600d26fd0f9a1cc609f897b35b2daa9.jpg', '50', 3, 'cream roses', 'cream paper', 'twine', '', '', '', '', '', '', '', '', ''),
(92, 'Rosy', 'bunch', 19, 'https://i.pinimg.com/564x/14/a8/11/14a811d95ac9f801c4a84762147fca78.jpg', '150', 2, 'pink roses', 'white paper', 'pink ribbon', '', '', '', '', '', '', '', '', ''),
(93, 'Rosy', 'bunch', 19, 'https://i.pinimg.com/564x/14/a8/11/14a811d95ac9f801c4a84762147fca78.jpg', '150', 3, 'pink roses', 'white paper', 'pink ribbon', '', '', '', '', '', '', '', '', ''),
(95, 'Sage', 'leafy', 9, 'https://i.pinimg.com/736x/a4/a8/d6/a4a8d67e8952cfb2032a267c0d0a7784.jpg', '170', 2, 'cream roses', 'eucalyptus', 'green paper', 'sage paper', 'cream ribbon', 'sheer ribbon', '', '', '', '', '', ''),
(96, 'Sage', 'leafy', 9, 'https://i.pinimg.com/736x/a4/a8/d6/a4a8d67e8952cfb2032a267c0d0a7784.jpg', '170', 3, 'cream roses', 'eucalyptus', 'green paper', 'sage paper', 'cream ribbon', 'sheer ribbon', '', '', '', '', '', ''),
(97, 'Simple', 'leafy', 10, 'https://i.pinimg.com/564x/65/25/24/6525247ef10b8a94e487237da74c9867.jpg', '120', 2, 'eucalyptus', 'white peonies', 'fern', 'foliage', 'rock roses', 'twine', '', '', '', '', '', ''),
(98, 'Simple', 'leafy', 11, 'https://i.pinimg.com/564x/65/25/24/6525247ef10b8a94e487237da74c9867.jpg', '120', 3, 'eucalyptus', 'white peonies', 'fern', 'foliage', 'rock roses', 'twine', '', '', '', '', '', ''),
(99, 'Soft and sweet', 'floral', 12, 'https://i.pinimg.com/736x/09/33/38/0933381a02e5645887f780baae8a733e.jpg', '230', 2, 'pink roses', 'white roses', 'pink tulips', 'white tulips', 'pink agrostemma', 'queen\'s lace', 'brown paper', 'white ribbon', '', '', '', ''),
(100, 'Soft and sweet', 'floral', 12, 'https://i.pinimg.com/736x/09/33/38/0933381a02e5645887f780baae8a733e.jpg', '230', 3, 'pink roses', 'white roses', 'pink tulips', 'white tulips', 'pink agrostemma', 'queen\'s lace', 'brown paper', 'white ribbon', '', '', '', ''),
(101, 'Spring', 'floral', 14, 'https://i.pinimg.com/564x/76/24/9b/76249b36c5c0a196104e6f422b7f1c70.jpg', '190', 2, 'pink gerberas', 'pink daffodils', 'peach roses', 'white roses', 'pink ranunculas', 'blue sweetpeas', 'pink agrostemma', 'cream paper', 'yellow ribbon', '', '', ''),
(102, 'Spring', 'floral', 14, 'https://i.pinimg.com/564x/76/24/9b/76249b36c5c0a196104e6f422b7f1c70.jpg', '190', 3, 'pink gerberas', 'pink daffodils', 'peach roses', 'white roses', 'pink ranunculas', 'blue sweetpeas', 'pink agrostemma', 'cream paper', 'yellow ribbon', '', '', ''),
(103, 'Sunset', 'floral', 12, 'https://i.pinimg.com/736x/e3/00/58/e3005856d9095de0b52a20ee211a41c9.jpg', '260', 2, 'peach ranunculas', 'pink poppies', 'pink sweetpeas', 'peach carnations', 'white roses', 'pink lisianthus', 'orange tulips', 'pink sprays', 'brown paper', 'white paper', 'cream ribbon', 'pink ribbon'),
(104, 'Sunset', 'floral', 13, 'https://i.pinimg.com/736x/e3/00/58/e3005856d9095de0b52a20ee211a41c9.jpg', '260', 3, 'peach ranunculas', 'pink poppies', 'pink sweetpeas', 'peach carnations', 'white roses', 'pink lisianthus', 'orange tulips', 'pink sprays', 'brown paper', 'white paper', 'cream ribbon', 'pink ribbon'),
(105, 'Sweet', 'bunch', 6, 'https://i.pinimg.com/564x/32/12/5a/32125aa6dd3bfbb32debd7a161e0658e.jpg', '190', 2, 'pink ranunculas', 'baby\'s breath', 'white paper', 'pink ribbon', '', '', '', '', '', '', '', ''),
(106, 'Sweet', 'bunch', 6, 'https://i.pinimg.com/564x/32/12/5a/32125aa6dd3bfbb32debd7a161e0658e.jpg', '190', 3, 'pink ranunculas', 'baby\'s breath', 'white paper', 'pink ribbon', '', '', '', '', '', '', '', ''),
(107, 'Sweet pea', 'floral', 1, 'https://i.pinimg.com/564x/c8/1b/06/c81b06187009c07e5ac18ba881554ab6.jpg', '180', 2, 'pink lisianthus', 'peach ranunculas', 'pink sweetpeas', 'pink sprays', 'peach phlox', 'pink ribbon', '', '', '', '', '', ''),
(108, 'Sweet pea', 'floral', 1, 'https://i.pinimg.com/564x/c8/1b/06/c81b06187009c07e5ac18ba881554ab6.jpg', '180', 3, 'pink lisianthus', 'peach ranunculas', 'pink sweetpeas', 'pink sprays', 'peach phlox', 'pink ribbon', '', '', '', '', '', ''),
(109, 'Tulips', 'bunch', 12, 'https://i.pinimg.com/564x/f7/ec/1b/f7ec1b88265a85eff1e48d99f019281a.jpg', '220', 2, 'pink tulips', 'white paper', 'white ribbon', '', '', '', '', '', '', '', '', ''),
(110, 'Tulips', 'bunch', 12, 'https://i.pinimg.com/564x/f7/ec/1b/f7ec1b88265a85eff1e48d99f019281a.jpg', '220', 3, 'pink tulips', 'white paper', 'white ribbon', '', '', '', '', '', '', '', '', ''),
(111, 'Whimsical', 'floral', 3, 'https://i.pinimg.com/564x/a3/74/95/a3749540b00ae57cc777837a3c00c987.jpg', '240', 2, 'white roses', 'pink roses', 'white lisianthus', 'pink agrostemma', 'pink peonies', 'white paper', 'pink ribbon', '', '', '', '', ''),
(112, 'Whimsical', 'floral', 3, 'https://i.pinimg.com/564x/a3/74/95/a3749540b00ae57cc777837a3c00c987.jpg', '240', 3, 'white roses', 'pink roses', 'white lisianthus', 'pink agrostemma', 'pink peonies', 'white paper', 'pink ribbon', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(6) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `locationName`, `Adress`) VALUES
(1, 'Bloom Headquarters', '222 Uitsig St, Port Elizabeth, Eastern Cape, South Africa'),
(2, 'Peony Place', '898 Telford Ave, Taung Station, North West, South Africa'),
(3, 'Carnation Corner', '1687 South St, Brits, North West, South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `location_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `category`, `quantity`, `imgUrl`, `location_id`) VALUES
(1, 'white hydrangeas', 'seasonal', 0, 'https://i.pinimg.com/564x/d4/49/e3/d449e3a236ae5697a7796330e763b685.jpg', 1),
(2, 'pink hydrangeas', 'seasonal', 3, 'https://i.pinimg.com/564x/7a/67/e0/7a67e0f8cc8fb6fc6ba08e4ce4878bff.jpg', 1),
(3, 'pink lisianthus', 'seasonal', 0, 'https://i.pinimg.com/564x/8c/83/5d/8c835d9986cc024bf6152b280f6f5c81.jpg', 1),
(4, 'white phlox', 'evergreen', 14, 'https://images.squarespace-cdn.com/content/5abb434b96d455c795a29023/1589734590889-3EMHNGOQ2B3AGW9WZCHB/image-asset.jpeg?content-type=image%2Fjpeg', 1),
(5, 'pink carnations', 'seasonal', 10, 'https://i.pinimg.com/564x/c1/34/00/c13400643687c52fa20a3a2de0497974.jpg', 1),
(6, 'pink tulips', 'seasonal', 17, 'https://i.pinimg.com/564x/49/2a/27/492a27636798145d04a1362d28a1cab6.jpg', 1),
(7, 'white tulips', 'seasonal', 25, 'https://i.pinimg.com/564x/fa/0d/5b/fa0d5be6acf62a647d91d46fdfa76750.jpg', 1),
(8, 'pink agrostemma', 'seasonal', 11, 'https://i.pinimg.com/originals/b4/7b/d5/b47bd509565cba6659dff833671b3844.jpg', 1),
(9, 'peach ranunculas', 'seasonal', 18, 'https://i.pinimg.com/564x/73/15/2d/73152d0a107eeb6afdf9799c4853c796.jpg', 1),
(10, 'pink poppies', 'seasonal', 32, 'https://i.pinimg.com/564x/29/21/2a/29212ad3405d390618f797224c8e93da.jpg', 1),
(11, 'pink sweetpeas', 'seasonal', 15, 'https://i.pinimg.com/564x/6d/e8/a4/6de8a42cfe57cc95c8c7719e30f0ff27.jpg', 1),
(12, 'peach carnations', 'seasonal', 15, 'https://i.pinimg.com/564x/9c/ba/d5/9cbad5d8a651a81580d2f13e58ff4fd4.jpg', 1),
(13, 'orange tulips', 'seasonal', 1, 'https://i.pinimg.com/564x/ed/ac/07/edac07714275d4634c0eac1e78140475.jpg', 1),
(14, 'pink cornflower', 'seasonal', 16, 'https://i.pinimg.com/564x/8c/88/20/8c88207ac7a9f3dc3ef59c44bcf8d663.jpg', 1),
(15, 'white lisianthus', 'seasonal', 44, 'https://i.pinimg.com/564x/1a/dc/98/1adc98805dd721909eda9a02d984de83.jpg', 1),
(16, 'blue hydrangeas', 'seasonal', 13, 'https://i.pinimg.com/564x/ea/9c/6e/ea9c6e17fa4bb92ac3b57137947e73c9.jpg', 1),
(17, 'white scabiosa', 'seasonal', 12, 'https://i.pinimg.com/564x/2c/6b/c6/2c6bc6a4f694438ed3efe558fc2798c3.jpg', 1),
(18, 'peach phlox', 'seasonal', 30, 'https://i.pinimg.com/564x/4d/f5/5e/4df55ec47f6438af48fd0fe0194e947a.jpg', 1),
(19, 'white peonies', 'seasonal', 19, 'https://i.pinimg.com/564x/7e/43/b3/7e43b336b5a561848cdaf67332f4a92f.jpg', 1),
(20, 'pink daffodils', 'seasonal', 24, 'https://i.pinimg.com/564x/57/d9/54/57d9543ec70fd2a714f6890d2a167250.jpg', 1),
(21, 'pink ranunculas', 'seasonal', 13, 'https://i.pinimg.com/564x/f9/82/53/f98253f9e543c42eabba7a5f85ad9827.jpg', 1),
(22, 'blue sweetpeas', 'seasonal', 24, 'https://i.pinimg.com/564x/f7/b7/dd/f7b7dd2b4063886aaed7e317539805e2.jpg', 1),
(23, 'pink peonies', 'seasonal', 13, 'https://i.pinimg.com/736x/91/82/53/9182537a8634343c19bcf5d9c2a50f32.jpg', 1),
(24, 'purple phlox', 'seasonal', 24, 'https://i.pinimg.com/564x/f6/28/17/f628174eae347477ce18bbd675b18bd8.jpg', 1),
(25, 'purple lisianthus', 'seasonal', 23, 'https://i.pinimg.com/564x/50/aa/64/50aa6436c14ed07b684480811ea714c5.jpg', 1),
(26, 'pink anemones', 'seasonal', 1, 'https://i.pinimg.com/236x/3c/8d/8c/3c8d8c6322f3e263e6c298669b6a9b27.jpg', 1),
(27, 'green hydrangeas', 'seasonal', 2, 'https://i.pinimg.com/564x/94/05/e6/9405e62316852b25769d1ae2d4524c25.jpg', 1),
(28, 'white sweetpeas', 'seasonal', 24, 'https://i.pinimg.com/564x/79/1d/d8/791dd8317b0486d1ed29f0d8383c6675.jpg', 1),
(43, 'pink gerberas', 'seasonal', 23, 'https://i.pinimg.com/564x/17/27/aa/1727aa39d579e77f2ba10bb2a14885d1.jpg', 1),
(44, 'white gerberas', 'seasonal', 25, 'https://i.pinimg.com/564x/ba/b4/bc/bab4bceac80607ede081ee3db22c392a.jpg', 1),
(45, 'olive branches', 'evergreen', 39, 'https://i.pinimg.com/564x/00/96/7c/00967cafb53fc1ea01c942bdc5cae3be.jpg', 1),
(46, 'foliage', 'evergreen', 23, 'https://i.pinimg.com/236x/7e/ce/c6/7ecec6eb4daae05f64f47d79ca9bdca7.jpg', 1),
(47, 'eucalyptus', 'evergreen', 10, 'https://i.pinimg.com/736x/28/3e/e0/283ee0b2e8864728122a461c56530dbd.jpg', 1),
(48, 'baby\'s breath', 'evergreen', 45, 'https://i.pinimg.com/564x/44/07/40/44074045f3fdf8745ff4e7564405132e.jpg', 1),
(49, 'pink roses', 'evergreen', 20, 'https://i.pinimg.com/564x/c8/90/51/c8905124186c938ec834b6cf818a9a90.jpg', 1),
(50, 'white roses', 'evergreen', 43, 'https://i.pinimg.com/736x/79/a1/77/79a177ab1c30e3beb929a61a3ca5c956.jpg', 1),
(51, 'bunny tails', 'evergreen', 15, 'https://i.pinimg.com/564x/d5/11/8c/d5118cd9491cb70c3a62e25fc5ded71a.jpg', 1),
(52, 'queen\'s lace', 'evergreen', 32, 'https://i.pinimg.com/564x/50/b6/0c/50b60ce4d5012af452b02a258caab25a.jpg', 1),
(53, 'pink sprays', 'evergreen', 13, 'https://i.pinimg.com/564x/09/76/fd/0976fdee586a1663e985c4425ac0c1da.jpg', 1),
(54, 'orange roses', 'evergreen', 34, 'https://i.pinimg.com/564x/18/cd/7b/18cd7b245f5fd065eed569e040bb1509.jpg', 1),
(56, 'fern', 'evergreen', 23, 'https://i.pinimg.com/564x/3b/ae/12/3bae12ee0bc587ea5069ca00d77b71e8.jpg', 1),
(57, 'rock roses', 'evergreen', 11, 'https://i.pinimg.com/564x/ad/eb/1c/adeb1c3009fd25a8887de8c0282f9a9e.jpg', 1),
(58, 'cream roses', 'evergreen', 12, 'https://i.pinimg.com/564x/95/0b/35/950b35d2471dc39217798271405d4672.jpg', 1),
(59, 'peach roses', 'evergreen', 12, 'https://i.pinimg.com/564x/e6/10/56/e610562019015a97ba564e8571f2912c.jpg', 1),
(60, 'cream ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/24/9c/97/249c97230e473ac63eed3816df69ed09.jpg', 1),
(61, 'blue ribbon', 'packaging', 27, 'https://i.pinimg.com/564x/35/b8/c1/35b8c1393cc7eff04f958a1209f9cd4e.jpg', 1),
(62, 'pink ribbon', 'packaging', 10, 'https://i.pinimg.com/564x/44/e0/41/44e0412b34d865875552eab1b5459cff.jpg', 1),
(63, 'white ribbon', 'packaging', 20, 'https://i.pinimg.com/564x/b8/2d/92/b82d923bf05921a6a8cb4045826e2a46.jpg', 1),
(64, 'purple ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/70/dc/b0/70dcb0e879adc8d71523e7bfc3645648.jpg', 1),
(65, 'yellow ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/99/53/4d/99534d8099baca64fa501967a33fab09.jpg', 1),
(66, 'sheer ribbon', 'packaging', 1, 'https://i.pinimg.com/564x/05/e3/45/05e3457d393a5de96d14f71db22c2d14.jpg', 1),
(67, 'black ribbon', 'packaging', 1, 'https://i.pinimg.com/564x/b8/b0/5c/b8b05c281938d880211072018a521327.jpg', 1),
(68, 'brown paper', 'packaging', 45, 'https://i.pinimg.com/564x/39/1c/5c/391c5c34938a242137185772c46ae978.jpg', 1),
(69, 'white paper', 'packaging', 3, 'https://i.pinimg.com/236x/fb/48/5a/fb485aa9740fdf1908fa4b05d4fb459c.jpg', 1),
(70, 'blue paper', 'packaging', 12, 'https://i.pinimg.com/564x/d3/8f/87/d38f87b82e8964334e111d084a3cbf74.jpg', 1),
(71, 'cream paper', 'packaging', 3, 'https://i.pinimg.com/564x/8b/b7/95/8bb7958d52e9c049c06dfdc8e0f7d8a8.jpg', 1),
(72, 'green paper', 'packaging', 13, 'https://i.pinimg.com/564x/7d/ad/41/7dad4104346669f1d83fbeb20b0fcdc8.jpg', 1),
(73, 'sage paper', 'packaging', 3, 'https://i.pinimg.com/564x/98/c6/2b/98c62bd6ee22fa7e33b0b56969e90bdd.jpg', 1),
(74, 'black paper', 'packaging', 12, 'https://i.pinimg.com/564x/87/d0/96/87d09612a0aedce00167bf7855cd180f.jpg', 1),
(75, 'twine', 'packaging', 49, 'https://i.pinimg.com/564x/a3/79/a5/a379a53c24b7f58650b89be7f61e808e.jpg', 1),
(76, 'white hydrangeas', 'seasonal', 24, 'https://i.pinimg.com/564x/d4/49/e3/d449e3a236ae5697a7796330e763b685.jpg', 2),
(77, 'pink hydrangeas', 'seasonal', 1, 'https://i.pinimg.com/564x/7a/67/e0/7a67e0f8cc8fb6fc6ba08e4ce4878bff.jpg', 2),
(78, 'pink lisianthus', 'seasonal', 20, 'https://i.pinimg.com/564x/8c/83/5d/8c835d9986cc024bf6152b280f6f5c81.jpg', 2),
(79, 'white phlox', 'evergreen', 12, 'https://images.squarespace-cdn.com/content/5abb434b96d455c795a29023/1589734590889-3EMHNGOQ2B3AGW9WZCHB/image-asset.jpeg?content-type=image%2Fjpeg', 2),
(80, 'pink carnations', 'seasonal', 17, 'https://i.pinimg.com/564x/c1/34/00/c13400643687c52fa20a3a2de0497974.jpg', 2),
(81, 'pink tulips', 'seasonal', 21, 'https://i.pinimg.com/564x/49/2a/27/492a27636798145d04a1362d28a1cab6.jpg', 2),
(82, 'white tulips', 'seasonal', 14, 'https://i.pinimg.com/564x/fa/0d/5b/fa0d5be6acf62a647d91d46fdfa76750.jpg', 2),
(83, 'pink agrostemma', 'seasonal', 14, 'https://i.pinimg.com/originals/b4/7b/d5/b47bd509565cba6659dff833671b3844.jpg', 2),
(84, 'peach ranunculas', 'seasonal', 19, 'https://i.pinimg.com/564x/73/15/2d/73152d0a107eeb6afdf9799c4853c796.jpg', 2),
(85, 'pink poppies', 'seasonal', 12, 'https://i.pinimg.com/564x/29/21/2a/29212ad3405d390618f797224c8e93da.jpg', 2),
(86, 'pink sweetpeas', 'seasonal', 12, 'https://i.pinimg.com/564x/6d/e8/a4/6de8a42cfe57cc95c8c7719e30f0ff27.jpg', 2),
(87, 'peach carnations', 'seasonal', 16, 'https://i.pinimg.com/564x/9c/ba/d5/9cbad5d8a651a81580d2f13e58ff4fd4.jpg', 2),
(88, 'orange tulips', 'seasonal', 1, 'https://i.pinimg.com/564x/ed/ac/07/edac07714275d4634c0eac1e78140475.jpg', 2),
(89, 'pink cornflower', 'seasonal', 1, 'https://i.pinimg.com/564x/8c/88/20/8c88207ac7a9f3dc3ef59c44bcf8d663.jpg', 2),
(90, 'white lisianthus', 'seasonal', 26, 'https://i.pinimg.com/564x/1a/dc/98/1adc98805dd721909eda9a02d984de83.jpg', 2),
(91, 'blue hydrangeas', 'seasonal', 9, 'https://i.pinimg.com/564x/ea/9c/6e/ea9c6e17fa4bb92ac3b57137947e73c9.jpg', 2),
(92, 'white scabiosa', 'seasonal', 8, 'https://i.pinimg.com/564x/2c/6b/c6/2c6bc6a4f694438ed3efe558fc2798c3.jpg', 2),
(93, 'peach phlox', 'seasonal', 30, 'https://i.pinimg.com/564x/4d/f5/5e/4df55ec47f6438af48fd0fe0194e947a.jpg', 2),
(94, 'white peonies', 'seasonal', 20, 'https://i.pinimg.com/564x/7e/43/b3/7e43b336b5a561848cdaf67332f4a92f.jpg', 2),
(95, 'pink daffodils', 'seasonal', 24, 'https://i.pinimg.com/564x/57/d9/54/57d9543ec70fd2a714f6890d2a167250.jpg', 2),
(96, 'pink ranunculas', 'seasonal', 13, 'https://i.pinimg.com/564x/f9/82/53/f98253f9e543c42eabba7a5f85ad9827.jpg', 2),
(97, 'blue sweetpeas', 'seasonal', 24, 'https://i.pinimg.com/564x/f7/b7/dd/f7b7dd2b4063886aaed7e317539805e2.jpg', 2),
(98, 'pink peonies', 'seasonal', 13, 'https://i.pinimg.com/736x/91/82/53/9182537a8634343c19bcf5d9c2a50f32.jpg', 2),
(99, 'purple phlox', 'seasonal', 24, 'https://i.pinimg.com/564x/f6/28/17/f628174eae347477ce18bbd675b18bd8.jpg', 2),
(100, 'purple lisianthus', 'seasonal', 23, 'https://i.pinimg.com/564x/50/aa/64/50aa6436c14ed07b684480811ea714c5.jpg', 2),
(101, 'pink anemones', 'seasonal', 0, 'https://i.pinimg.com/236x/3c/8d/8c/3c8d8c6322f3e263e6c298669b6a9b27.jpg', 2),
(102, 'green hydrangeas', 'seasonal', 2, 'https://i.pinimg.com/564x/94/05/e6/9405e62316852b25769d1ae2d4524c25.jpg', 2),
(103, 'white sweetpeas', 'seasonal', 24, 'https://i.pinimg.com/564x/79/1d/d8/791dd8317b0486d1ed29f0d8383c6675.jpg', 2),
(104, 'pink gerberas', 'seasonal', 23, 'https://i.pinimg.com/564x/17/27/aa/1727aa39d579e77f2ba10bb2a14885d1.jpg', 2),
(105, 'white gerberas', 'seasonal', 25, 'https://i.pinimg.com/564x/ba/b4/bc/bab4bceac80607ede081ee3db22c392a.jpg', 2),
(106, 'olive branches', 'evergreen', 40, 'https://i.pinimg.com/564x/00/96/7c/00967cafb53fc1ea01c942bdc5cae3be.jpg', 2),
(107, 'foliage', 'evergreen', 25, 'https://i.pinimg.com/236x/7e/ce/c6/7ecec6eb4daae05f64f47d79ca9bdca7.jpg', 2),
(108, 'eucalyptus', 'evergreen', 20, 'https://i.pinimg.com/736x/28/3e/e0/283ee0b2e8864728122a461c56530dbd.jpg', 2),
(109, 'baby\'s breath', 'evergreen', 46, 'https://i.pinimg.com/564x/44/07/40/44074045f3fdf8745ff4e7564405132e.jpg', 2),
(110, 'pink roses', 'evergreen', 24, 'https://i.pinimg.com/564x/c8/90/51/c8905124186c938ec834b6cf818a9a90.jpg', 2),
(111, 'white roses', 'evergreen', 46, 'https://i.pinimg.com/736x/79/a1/77/79a177ab1c30e3beb929a61a3ca5c956.jpg', 2),
(112, 'bunny tails', 'evergreen', 15, 'https://i.pinimg.com/564x/d5/11/8c/d5118cd9491cb70c3a62e25fc5ded71a.jpg', 2),
(113, 'queen\'s lace', 'evergreen', 35, 'https://i.pinimg.com/564x/50/b6/0c/50b60ce4d5012af452b02a258caab25a.jpg', 2),
(114, 'pink sprays', 'evergreen', 25, 'https://i.pinimg.com/564x/09/76/fd/0976fdee586a1663e985c4425ac0c1da.jpg', 2),
(115, 'orange roses', 'evergreen', 35, 'https://i.pinimg.com/564x/18/cd/7b/18cd7b245f5fd065eed569e040bb1509.jpg', 2),
(116, 'fern', 'evergreen', 24, 'https://i.pinimg.com/564x/3b/ae/12/3bae12ee0bc587ea5069ca00d77b71e8.jpg', 2),
(117, 'rock roses', 'evergreen', 12, 'https://i.pinimg.com/564x/ad/eb/1c/adeb1c3009fd25a8887de8c0282f9a9e.jpg', 2),
(118, 'cream roses', 'evergreen', 12, 'https://i.pinimg.com/564x/95/0b/35/950b35d2471dc39217798271405d4672.jpg', 2),
(119, 'peach roses', 'evergreen', 12, 'https://i.pinimg.com/564x/e6/10/56/e610562019015a97ba564e8571f2912c.jpg', 2),
(120, 'cream ribbon', 'packaging', 14, 'https://i.pinimg.com/564x/24/9c/97/249c97230e473ac63eed3816df69ed09.jpg', 2),
(121, 'blue ribbon', 'packaging', 23, 'https://i.pinimg.com/564x/35/b8/c1/35b8c1393cc7eff04f958a1209f9cd4e.jpg', 2),
(122, 'pink ribbon', 'packaging', 24, 'https://i.pinimg.com/564x/44/e0/41/44e0412b34d865875552eab1b5459cff.jpg', 2),
(123, 'white ribbon', 'packaging', 20, 'https://i.pinimg.com/564x/b8/2d/92/b82d923bf05921a6a8cb4045826e2a46.jpg', 2),
(124, 'purple ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/70/dc/b0/70dcb0e879adc8d71523e7bfc3645648.jpg', 2),
(125, 'yellow ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/99/53/4d/99534d8099baca64fa501967a33fab09.jpg', 2),
(126, 'sheer ribbon', 'packaging', 1, 'https://i.pinimg.com/564x/05/e3/45/05e3457d393a5de96d14f71db22c2d14.jpg', 2),
(127, 'black ribbon', 'packaging', 0, 'https://i.pinimg.com/564x/b8/b0/5c/b8b05c281938d880211072018a521327.jpg', 2),
(128, 'brown paper', 'packaging', 49, 'https://i.pinimg.com/564x/39/1c/5c/391c5c34938a242137185772c46ae978.jpg', 2),
(129, 'white paper', 'packaging', 8, 'https://i.pinimg.com/236x/fb/48/5a/fb485aa9740fdf1908fa4b05d4fb459c.jpg', 2),
(130, 'blue paper', 'packaging', 8, 'https://i.pinimg.com/564x/d3/8f/87/d38f87b82e8964334e111d084a3cbf74.jpg', 2),
(131, 'cream paper', 'packaging', 0, 'https://i.pinimg.com/564x/8b/b7/95/8bb7958d52e9c049c06dfdc8e0f7d8a8.jpg', 2),
(132, 'green paper', 'packaging', 13, 'https://i.pinimg.com/564x/7d/ad/41/7dad4104346669f1d83fbeb20b0fcdc8.jpg', 2),
(133, 'sage paper', 'packaging', 1, 'https://i.pinimg.com/564x/98/c6/2b/98c62bd6ee22fa7e33b0b56969e90bdd.jpg', 2),
(134, 'black paper', 'packaging', 11, 'https://i.pinimg.com/564x/87/d0/96/87d09612a0aedce00167bf7855cd180f.jpg', 2),
(135, 'twine', 'packaging', 50, 'https://i.pinimg.com/564x/a3/79/a5/a379a53c24b7f58650b89be7f61e808e.jpg', 2),
(167, 'white hydrangeas', 'seasonal', 16, 'https://i.pinimg.com/564x/d4/49/e3/d449e3a236ae5697a7796330e763b685.jpg', 3),
(168, 'pink hydrangeas', 'seasonal', 15, 'https://i.pinimg.com/564x/7a/67/e0/7a67e0f8cc8fb6fc6ba08e4ce4878bff.jpg', 3),
(169, 'pink lisianthus', 'seasonal', 40, 'https://i.pinimg.com/564x/8c/83/5d/8c835d9986cc024bf6152b280f6f5c81.jpg', 3),
(170, 'white phlox', 'evergreen', 16, 'https://images.squarespace-cdn.com/content/5abb434b96d455c795a29023/1589734590889-3EMHNGOQ2B3AGW9WZCHB/image-asset.jpeg?content-type=image%2Fjpeg', 3),
(171, 'pink carnations', 'seasonal', 19, 'https://i.pinimg.com/564x/c1/34/00/c13400643687c52fa20a3a2de0497974.jpg', 3),
(172, 'pink tulips', 'seasonal', 21, 'https://i.pinimg.com/564x/49/2a/27/492a27636798145d04a1362d28a1cab6.jpg', 3),
(173, 'white tulips', 'seasonal', 14, 'https://i.pinimg.com/564x/fa/0d/5b/fa0d5be6acf62a647d91d46fdfa76750.jpg', 3),
(174, 'pink agrostemma', 'seasonal', 14, 'https://i.pinimg.com/originals/b4/7b/d5/b47bd509565cba6659dff833671b3844.jpg', 3),
(175, 'peach ranunculas', 'seasonal', 19, 'https://i.pinimg.com/564x/73/15/2d/73152d0a107eeb6afdf9799c4853c796.jpg', 3),
(176, 'pink poppies', 'seasonal', 12, 'https://i.pinimg.com/564x/29/21/2a/29212ad3405d390618f797224c8e93da.jpg', 3),
(177, 'pink sweetpeas', 'seasonal', 12, 'https://i.pinimg.com/564x/6d/e8/a4/6de8a42cfe57cc95c8c7719e30f0ff27.jpg', 3),
(178, 'peach carnations', 'seasonal', 16, 'https://i.pinimg.com/564x/9c/ba/d5/9cbad5d8a651a81580d2f13e58ff4fd4.jpg', 3),
(179, 'orange tulips', 'seasonal', 1, 'https://i.pinimg.com/564x/ed/ac/07/edac07714275d4634c0eac1e78140475.jpg', 3),
(180, 'pink cornflower', 'seasonal', 16, 'https://i.pinimg.com/564x/8c/88/20/8c88207ac7a9f3dc3ef59c44bcf8d663.jpg', 3),
(181, 'white lisianthus', 'seasonal', 30, 'https://i.pinimg.com/564x/1a/dc/98/1adc98805dd721909eda9a02d984de83.jpg', 3),
(182, 'blue hydrangeas', 'seasonal', 13, 'https://i.pinimg.com/564x/ea/9c/6e/ea9c6e17fa4bb92ac3b57137947e73c9.jpg', 3),
(183, 'white scabiosa', 'seasonal', 12, 'https://i.pinimg.com/564x/2c/6b/c6/2c6bc6a4f694438ed3efe558fc2798c3.jpg', 3),
(184, 'peach phlox', 'seasonal', 30, 'https://i.pinimg.com/564x/4d/f5/5e/4df55ec47f6438af48fd0fe0194e947a.jpg', 3),
(185, 'white peonies', 'seasonal', 20, 'https://i.pinimg.com/564x/7e/43/b3/7e43b336b5a561848cdaf67332f4a92f.jpg', 3),
(186, 'pink daffodils', 'seasonal', 24, 'https://i.pinimg.com/564x/57/d9/54/57d9543ec70fd2a714f6890d2a167250.jpg', 3),
(187, 'pink ranunculas', 'seasonal', 13, 'https://i.pinimg.com/564x/f9/82/53/f98253f9e543c42eabba7a5f85ad9827.jpg', 3),
(188, 'blue sweetpeas', 'seasonal', 24, 'https://i.pinimg.com/564x/f7/b7/dd/f7b7dd2b4063886aaed7e317539805e2.jpg', 3),
(189, 'pink peonies', 'seasonal', 13, 'https://i.pinimg.com/736x/91/82/53/9182537a8634343c19bcf5d9c2a50f32.jpg', 3),
(190, 'purple phlox', 'seasonal', 24, 'https://i.pinimg.com/564x/f6/28/17/f628174eae347477ce18bbd675b18bd8.jpg', 3),
(191, 'purple lisianthus', 'seasonal', 23, 'https://i.pinimg.com/564x/50/aa/64/50aa6436c14ed07b684480811ea714c5.jpg', 3),
(192, 'pink anemones', 'seasonal', 1, 'https://i.pinimg.com/236x/3c/8d/8c/3c8d8c6322f3e263e6c298669b6a9b27.jpg', 3),
(193, 'green hydrangeas', 'seasonal', 2, 'https://i.pinimg.com/564x/94/05/e6/9405e62316852b25769d1ae2d4524c25.jpg', 3),
(194, 'white sweetpeas', 'seasonal', 24, 'https://i.pinimg.com/564x/79/1d/d8/791dd8317b0486d1ed29f0d8383c6675.jpg', 3),
(195, 'pink gerberas', 'seasonal', 23, 'https://i.pinimg.com/564x/17/27/aa/1727aa39d579e77f2ba10bb2a14885d1.jpg', 3),
(196, 'white gerberas', 'seasonal', 25, 'https://i.pinimg.com/564x/ba/b4/bc/bab4bceac80607ede081ee3db22c392a.jpg', 3),
(197, 'olive branches', 'evergreen', 40, 'https://i.pinimg.com/564x/00/96/7c/00967cafb53fc1ea01c942bdc5cae3be.jpg', 3),
(198, 'foliage', 'evergreen', 25, 'https://i.pinimg.com/236x/7e/ce/c6/7ecec6eb4daae05f64f47d79ca9bdca7.jpg', 3),
(199, 'eucalyptus', 'evergreen', 25, 'https://i.pinimg.com/736x/28/3e/e0/283ee0b2e8864728122a461c56530dbd.jpg', 3),
(200, 'baby\'s breath', 'evergreen', 46, 'https://i.pinimg.com/564x/44/07/40/44074045f3fdf8745ff4e7564405132e.jpg', 3),
(201, 'pink roses', 'evergreen', 24, 'https://i.pinimg.com/564x/c8/90/51/c8905124186c938ec834b6cf818a9a90.jpg', 3),
(202, 'white roses', 'evergreen', 46, 'https://i.pinimg.com/736x/79/a1/77/79a177ab1c30e3beb929a61a3ca5c956.jpg', 3),
(203, 'bunny tails', 'evergreen', 15, 'https://i.pinimg.com/564x/d5/11/8c/d5118cd9491cb70c3a62e25fc5ded71a.jpg', 3),
(204, 'queen\'s lace', 'evergreen', 35, 'https://i.pinimg.com/564x/50/b6/0c/50b60ce4d5012af452b02a258caab25a.jpg', 3),
(205, 'pink sprays', 'evergreen', 25, 'https://i.pinimg.com/564x/09/76/fd/0976fdee586a1663e985c4425ac0c1da.jpg', 3),
(206, 'orange roses', 'evergreen', 35, 'https://i.pinimg.com/564x/18/cd/7b/18cd7b245f5fd065eed569e040bb1509.jpg', 3),
(207, 'fern', 'evergreen', 24, 'https://i.pinimg.com/564x/3b/ae/12/3bae12ee0bc587ea5069ca00d77b71e8.jpg', 3),
(208, 'rock roses', 'evergreen', 12, 'https://i.pinimg.com/564x/ad/eb/1c/adeb1c3009fd25a8887de8c0282f9a9e.jpg', 3),
(209, 'cream roses', 'evergreen', 12, 'https://i.pinimg.com/564x/95/0b/35/950b35d2471dc39217798271405d4672.jpg', 3),
(210, 'peach roses', 'evergreen', 12, 'https://i.pinimg.com/564x/e6/10/56/e610562019015a97ba564e8571f2912c.jpg', 3),
(211, 'cream ribbon', 'packaging', 14, 'https://i.pinimg.com/564x/24/9c/97/249c97230e473ac63eed3816df69ed09.jpg', 3),
(212, 'blue ribbon', 'packaging', 27, 'https://i.pinimg.com/564x/35/b8/c1/35b8c1393cc7eff04f958a1209f9cd4e.jpg', 3),
(213, 'pink ribbon', 'packaging', 24, 'https://i.pinimg.com/564x/44/e0/41/44e0412b34d865875552eab1b5459cff.jpg', 3),
(214, 'white ribbon', 'packaging', 24, 'https://i.pinimg.com/564x/b8/2d/92/b82d923bf05921a6a8cb4045826e2a46.jpg', 3),
(215, 'purple ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/70/dc/b0/70dcb0e879adc8d71523e7bfc3645648.jpg', 3),
(216, 'yellow ribbon', 'packaging', 12, 'https://i.pinimg.com/564x/99/53/4d/99534d8099baca64fa501967a33fab09.jpg', 3),
(217, 'sheer ribbon', 'packaging', 1, 'https://i.pinimg.com/564x/05/e3/45/05e3457d393a5de96d14f71db22c2d14.jpg', 3),
(218, 'black ribbon', 'packaging', 1, 'https://i.pinimg.com/564x/b8/b0/5c/b8b05c281938d880211072018a521327.jpg', 3),
(219, 'brown paper', 'packaging', 49, 'https://i.pinimg.com/564x/39/1c/5c/391c5c34938a242137185772c46ae978.jpg', 3),
(220, 'white paper', 'packaging', 12, 'https://i.pinimg.com/236x/fb/48/5a/fb485aa9740fdf1908fa4b05d4fb459c.jpg', 3),
(221, 'blue paper', 'packaging', 12, 'https://i.pinimg.com/564x/d3/8f/87/d38f87b82e8964334e111d084a3cbf74.jpg', 3),
(222, 'cream paper', 'packaging', 3, 'https://i.pinimg.com/564x/8b/b7/95/8bb7958d52e9c049c06dfdc8e0f7d8a8.jpg', 3),
(223, 'green paper', 'packaging', 13, 'https://i.pinimg.com/564x/7d/ad/41/7dad4104346669f1d83fbeb20b0fcdc8.jpg', 3),
(224, 'sage paper', 'packaging', 1, 'https://i.pinimg.com/564x/98/c6/2b/98c62bd6ee22fa7e33b0b56969e90bdd.jpg', 3),
(225, 'black paper', 'packaging', 12, 'https://i.pinimg.com/564x/87/d0/96/87d09612a0aedce00167bf7855cd180f.jpg', 3),
(226, 'twine', 'packaging', 50, 'https://i.pinimg.com/564x/a3/79/a5/a379a53c24b7f58650b89be7f61e808e.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`) VALUES
(1, 'isla@just.co.za'),
(2, 'pieter@gmail.com'),
(3, 'hunt@highschool.com'),
(4, 'fiona@medico.co.za'),
(5, 'john@gmail.com'),
(6, 'cassandra@medico.co.za'),
(7, 'someone@email.com'),
(8, 'newSubscriber@mail.co.za'),
(9, 'hello@mail.co.za'),
(10, 'someonenew');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(11) NOT NULL,
  `flowerName` varchar(255) NOT NULL,
  `flowerUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `flowerName`, `flowerUrl`) VALUES
(1, '099c544a4cf113e4b7c0895de478b6539acf49a7', 'daisies.png'),
(2, 'a53d212fe320bd6acaade8548868c0c0de6029d0', 'magnolia.png'),
(3, 'd8d3ec63d40988ffa509ab2cc48ae96fe65d67a9', 'orchid.png'),
(4, '6a969865eb0adbe481a258a18fc500b009cdc645', 'poppy.png'),
(5, '6435f683ab44dc5a30afa7a4523115585991eb42', 'sakura.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bouquets`
--
ALTER TABLE `bouquets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bouquets`
--
ALTER TABLE `bouquets`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
