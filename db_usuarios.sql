-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 24, 2022 at 05:07 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_usuarios`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteUser` (IN `idSt` INT(11))  BEGIN
	DELETE FROM users WHERE id  = idSt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllUsers` ()  BEGIN
	SELECT * FROM users;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertUser` (IN `name` VARCHAR(150), IN `username` VARCHAR(25), IN `mail` VARCHAR(50), IN `phone` VARCHAR(10), IN `address` TEXT, IN `postalCode` VARCHAR(5), IN `typeOfUser` VARCHAR(20), IN `state` VARCHAR(50), IN `city` VARCHAR(55), IN `password` VARCHAR(255))  BEGIN
	INSERT INTO users (name, username, mail, phone, address,postalCode, typeOfUser, state, city, password)
    VALUES (name, username, mail, phone, address,postalCode, typeOfUser, state, city, password);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchUser` (IN `idSt` INT(11))  BEGIN
	SELECT * FROM users
    WHERE id = idSt;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateUser` (IN `idSt` INT(11), IN `name` VARCHAR(150), IN `username` VARCHAR(25), IN `mail` VARCHAR(50), IN `phone` VARCHAR(10), IN `address` TEXT, IN `postalCode` VARCHAR(5), IN `typeOfUser` VARCHAR(20), IN `state` VARCHAR(50), IN `city` VARCHAR(55))  BEGIN
	UPDATE users 
        SET name=name, username=username, mail=mail, phone=phone,address=address,postalCode=postalCode, typeOfUser=typeOfUser, state=state, city=city,password=password
   WHERE id = idSt;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `username` varchar(25) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `postalCode` varchar(5) NOT NULL,
  `typeOfUser` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `mail`, `phone`, `address`, `postalCode`, `typeOfUser`, `state`, `city`, `password`) VALUES
(11, 'Usuario', 'user', 'user@gmail.com', '6623154789', 'sdfsdf', '23567', 'Admistrador', 'SONORA', 'HERMOSILLO', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(38, 'Juan Pedro Hernandez', 'pedro19', 'pedro@gmail.com', '2019312739', 'Av Calle', '09989', 'Usuario', 'COLIMA', 'COMALA', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(39, 'Maria Ande Felix', 'andem', 'andem@gmail.com', '1137132712', 'Direaccion 34', '21312', 'Usuario', 'HIDALGO', 'ATLAPEXCO', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441'),
(40, 'userExamen', 'userExamen', 'user.examen@gmail.com', '1231231231', 'Av. Hola', '89779', 'Admistrador', 'SONORA', 'HERMOSILLO', 'caf71de44cfe004c62a51a54084d54f079c5cfad'),
(41, 'Laura Garza Hernandez', 'garza', 'garza@gmail.com', '9879879798', 'av valle nuevo 67', '87867', 'Usuario', 'DURANGO', 'EL ORO', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
