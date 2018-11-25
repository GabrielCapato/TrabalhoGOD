CREATE TABLE `anuncio` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `PATH` varchar(45) NOT NULL,
  `anoModelo` int(11) NOT NULL,
  `anoFab` int(11) NOT NULL,
  `combustivel` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `valor` double NOT NULL,
  `km` double NOT NULL,
  PRIMARY KEY (`ID`)
);
CREATE TABLE `categoria` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`,`nome`)
) ;
CREATE TABLE `combustivel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
);