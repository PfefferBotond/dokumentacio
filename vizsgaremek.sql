-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 29. 21:20
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsgaremek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `calendar_data`
--

CREATE TABLE `calendar_data` (
  `calId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `carDataCarId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `calendar_data`
--

INSERT INTO `calendar_data` (`calId`, `title`, `start`, `comment`, `carDataCarId`) VALUES
(11, 'Pályamatrica', '2023. 04. 26.', '1 hónapos matrica megújítása, 10000Ft', 4),
(12, 'Büntetés', '2023. 05. 05.', 'Befizetési határidő vége, 80000Ft', 4),
(13, 'Műszaki vizsga', '2023. 05. 06.', 'Az autó vizsgáztatása,\nHalom utca, 4.', 4),
(14, 'Büntetés', '2023. 04. 11.', 'Parkolás, 5000Ft', 4),
(15, 'Autómosás', '2023. 04. 07.', '3000Ft', 4),
(20, 'Parkolás', '2023. 04. 29.', '500 Ft - Ázsia center ', 5),
(21, 'Befizetés', '2023. 05. 02.', 'Gyorshajtás  25000Ft', 5),
(22, 'Gépjárműadó', '2023. 07. 07.', '450000 Ft', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `car_data`
--

CREATE TABLE `car_data` (
  `carId` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `modelYear` int(11) NOT NULL,
  `fuelType` varchar(255) NOT NULL,
  `carPower` int(11) NOT NULL,
  `gearType` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `chassisType` varchar(255) NOT NULL,
  `doors` int(11) NOT NULL,
  `fuelEconomy` varchar(255) NOT NULL,
  `license_plate` varchar(255) NOT NULL,
  `givenName` varchar(255) NOT NULL,
  `userIdId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `car_data`
--

INSERT INTO `car_data` (`carId`, `brand`, `model`, `modelYear`, `fuelType`, `carPower`, `gearType`, `color`, `chassisType`, `doors`, `fuelEconomy`, `license_plate`, `givenName`, `userIdId`) VALUES
(4, 'Trabant', 'Nt', 2009, 'Benzin', 70, 'Manuális', 'Fehér', 'Szedán', 4, '3 liter / 100 km', 'ABC-123', 'Teszt Autó', 4),
(5, 'Nissan', 'BNR34', 2001, 'Benzin', 276, 'Manuális (6 fokozat)', 'Fehér', 'Kupé', 2, '7 liter / 100 kilóméter', 'abc-123', 'Nissan Skyline GT-R R34', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `car_picture`
--

CREATE TABLE `car_picture` (
  `picId` int(11) NOT NULL,
  `carPic` varchar(255) NOT NULL,
  `carsIdCarId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `car_picture`
--

INSERT INTO `car_picture` (`picId`, `carPic`, `carsIdCarId`) VALUES
(4, '50c9e3740ee50411087fa16e4226b1c87.jpeg', 4),
(5, '0231dbf57ca9f2f371dda498ded191e1.jpg', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `chart_data`
--

CREATE TABLE `chart_data` (
  `chartId` int(11) NOT NULL,
  `speedometer` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `carDataCarId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `chart_data`
--

INSERT INTO `chart_data` (`chartId`, `speedometer`, `date`, `carDataCarId`) VALUES
(9, 25000, '2023-04-26', 4),
(11, 27000, '2023-04-27', 4),
(12, 43000, '2023-05-26', 4),
(13, 47000, '2023-05-28', 4),
(14, 55000, '2023-06-26', 4),
(15, 66999, '2023-07-30', 4),
(16, 96000, '2023-10-26', 4),
(17, 10050, '2023-04-29', 5),
(19, 20049, '2023-06-29', 5),
(20, 30000, '2023-07-29', 5),
(21, 50000, '2023-09-29', 5),
(22, 65000, '2023-10-29', 5),
(23, 70000, '2023-12-29', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `document_data`
--

CREATE TABLE `document_data` (
  `docId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `carsDataCarId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `document_data`
--

INSERT INTO `document_data` (`docId`, `name`, `date`, `carsDataCarId`) VALUES
(32, 'Jogosítvány', '2025-07-26', 4),
(34, 'Forgalmi engedély', '2023-04-26', 4),
(35, 'Kötelező biztosítás', '2023-04-19', 4),
(36, 'Jogosítvány', '2024-10-25', 5),
(37, 'Forgalmi', '2024-12-20', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `token`
--

CREATE TABLE `token` (
  `token` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthDate` datetime NOT NULL DEFAULT '2023-04-29 21:05:43',
  `registrationDate` datetime NOT NULL DEFAULT '2023-04-29 21:05:43'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user_data`
--

INSERT INTO `user_data` (`id`, `username`, `password`, `email`, `birthDate`, `registrationDate`) VALUES
(1, 'Marcell', '$2b$05$0jeSZ7duR45EsHsG9eBOM.xi24hpGBaZ8OmzYVyCgHj4fFSEXY4Ju', 'marcell@gmail.com', '2000-01-01 00:00:00', '2023-04-22 20:05:43'),
(4, 'Pelda', '$2b$05$DPT4wWonvyKkpaC7pYPowenKQTIOROmxKx1Izlvmjoh2BETRfnqI6', 'pelda123@gmail.com', '2000-01-01 00:00:00', '2023-04-26 13:10:34');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `calendar_data`
--
ALTER TABLE `calendar_data`
  ADD PRIMARY KEY (`calId`),
  ADD KEY `FK_07447f34ba7973660004e7b6bc8` (`carDataCarId`);

--
-- A tábla indexei `car_data`
--
ALTER TABLE `car_data`
  ADD PRIMARY KEY (`carId`),
  ADD KEY `FK_42a5688172c5e5a8487bbda62d8` (`userIdId`);

--
-- A tábla indexei `car_picture`
--
ALTER TABLE `car_picture`
  ADD PRIMARY KEY (`picId`),
  ADD KEY `FK_d3896657c6e3e48aeecef83990a` (`carsIdCarId`);

--
-- A tábla indexei `chart_data`
--
ALTER TABLE `chart_data`
  ADD PRIMARY KEY (`chartId`),
  ADD KEY `FK_479a31b3af2aa8dc578ff346ae4` (`carDataCarId`);

--
-- A tábla indexei `document_data`
--
ALTER TABLE `document_data`
  ADD PRIMARY KEY (`docId`),
  ADD KEY `FK_35c18f573a97eb2e3f1597d8218` (`carsDataCarId`);

--
-- A tábla indexei `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`token`),
  ADD KEY `FK_94f168faad896c0786646fa3d4a` (`userId`);

--
-- A tábla indexei `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `calendar_data`
--
ALTER TABLE `calendar_data`
  MODIFY `calId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT a táblához `car_data`
--
ALTER TABLE `car_data`
  MODIFY `carId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `car_picture`
--
ALTER TABLE `car_picture`
  MODIFY `picId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `chart_data`
--
ALTER TABLE `chart_data`
  MODIFY `chartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT a táblához `document_data`
--
ALTER TABLE `document_data`
  MODIFY `docId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT a táblához `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `calendar_data`
--
ALTER TABLE `calendar_data`
  ADD CONSTRAINT `FK_07447f34ba7973660004e7b6bc8` FOREIGN KEY (`carDataCarId`) REFERENCES `car_data` (`carId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `car_data`
--
ALTER TABLE `car_data`
  ADD CONSTRAINT `FK_42a5688172c5e5a8487bbda62d8` FOREIGN KEY (`userIdId`) REFERENCES `user_data` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `car_picture`
--
ALTER TABLE `car_picture`
  ADD CONSTRAINT `FK_d3896657c6e3e48aeecef83990a` FOREIGN KEY (`carsIdCarId`) REFERENCES `car_data` (`carId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `chart_data`
--
ALTER TABLE `chart_data`
  ADD CONSTRAINT `FK_479a31b3af2aa8dc578ff346ae4` FOREIGN KEY (`carDataCarId`) REFERENCES `car_data` (`carId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `document_data`
--
ALTER TABLE `document_data`
  ADD CONSTRAINT `FK_35c18f573a97eb2e3f1597d8218` FOREIGN KEY (`carsDataCarId`) REFERENCES `car_data` (`carId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `FK_94f168faad896c0786646fa3d4a` FOREIGN KEY (`userId`) REFERENCES `user_data` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
