-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Set-2024 às 14:20
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `terabd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alagamentos`
--

CREATE TABLE `alagamentos` (
  `id` int(11) NOT NULL,
  `dataalaga` date NOT NULL,
  `zona` varchar(10) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `ponto` int(3) NOT NULL,
  `statusalaga` varchar(25) NOT NULL,
  `sentido` varchar(25) NOT NULL,
  `referencia` varchar(60) NOT NULL,
  `horarioInicio` date NOT NULL,
  `horarioFinal` date NOT NULL,
  `logradouro` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alagamentos`
--

INSERT INTO `alagamentos` (`id`, `dataalaga`, `zona`, `bairro`, `ponto`, `statusalaga`, `sentido`, `referencia`, `horarioInicio`, `horarioFinal`, `logradouro`) VALUES
(1, '2023-09-02', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV SANTO AMARO'),
(2, '2023-09-30', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'AV PROF VICENTE RAO', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(3, '2023-10-01', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'AMBOS', 'AV PROF VICENTE RAO', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(4, '2023-10-01', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'BAIRRO/CENTRO', 'R CERQUEIRA CESAR', '0000-00-00', '0000-00-00', 'R PDE JOSE DE ANCHIETA'),
(5, '2023-10-01', 'Zona Sul', 'Ipiranga', 1, 'Inativo Transitável', 'AMBOS', 'AV DO ESTADO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(6, '2023-10-02', 'Zona Sul', 'Ipiranga', 1, 'Inativo Transitável', 'AMBOS', 'AV DO ESTADO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(7, '2023-10-05', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'R DOS MENDES', '0000-00-00', '0000-00-00', 'AV SEN TEOTONIO VILELA'),
(8, '2023-10-05', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'CENTRO/BAIRRO', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(9, '2023-10-05', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'BAIRRO/CENTRO', 'AV PROF VICENTE RAO', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(10, '2023-10-05', 'Zona Sul', 'Ipiranga', 1, 'Inativo Transitável', 'BAIRRO/CENTRO', 'R ALICE DE SOUZA LIMA', '0000-00-00', '0000-00-00', 'AV PRES JOAO GOULART'),
(11, '2023-10-07', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'AMBOS', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(12, '2023-10-07', 'Zona Sul', 'Jabaquara', 1, 'Inativo Transitável', 'NAO INFORMADO', 'TV DOM GIL SANCHES', '0000-00-00', '0000-00-00', 'AV TULIO TEODORO DE CAMPOS'),
(13, '2023-10-08', 'Zona Sul', 'Ipiranga', 1, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'R PRES COSTA PINTO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(14, '2023-10-09', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'AV INTERLAGOS', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(15, '2023-10-12', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(16, '2023-10-27', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'AV LAVANDISCA', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(17, '2023-10-31', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'UNICO', 'R. ALBERTO GEBARA', '0000-00-00', '0000-00-00', 'R VISCONDE DE CASTRO'),
(18, '2023-10-31', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Intransitável', 'AMBOS', 'VD GAL EUCLIDES DE FIGUEIREDO', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(19, '2023-10-31', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Intransitável', 'NAO INFORMADO', 'AV LAVANDISCA', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(20, '2023-11-03', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Intransitável', 'AMBOS', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(21, '2023-11-15', 'Zona Sul', 'Campo Limpo', 1, 'Inativo Intransitável', 'AMBOS', 'AL JOSE LOPES DE ALMEIDA', '0000-00-00', '0000-00-00', 'AV ELLIS MAAS'),
(22, '2023-11-15', 'Zona Sul', 'M\'Boi Mirim', 1, 'Inativo Transitável', 'BAIRRO/CENTRO', 'R DANIEL KLEIN', '0000-00-00', '0000-00-00', 'ES M\'BOI MIRIM'),
(23, '2023-11-19', 'Zona Sul', 'M\'Boi Mirim', 1, 'Inativo Transitável', 'BAIRRO/CENTRO', 'R DANIEL KLEIN', '0000-00-00', '0000-00-00', 'ES M\'BOI MIRIM'),
(24, '2023-11-19', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R GURIU', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(25, '2023-11-23', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'ALTURA DO N. 3411', '0000-00-00', '0000-00-00', 'AV DONA BELMIRA MARIN'),
(26, '2023-11-23', 'Zona Sul', 'M\'Boi Mirim', 3, 'Inativo Transitável', 'BAIRRO/CENTRO', 'ALTURA DO N. 3579', '0000-00-00', '0000-00-00', 'AV JOAO DIAS'),
(27, '2023-11-23', 'Zona Sul', 'M\'Boi Mirim', 3, 'Inativo Transitável', 'BAIRRO/CENTRO', 'R DANIEL KLEIN', '0000-00-00', '0000-00-00', 'ES M\'BOI MIRIM'),
(28, '2023-11-23', 'Zona Sul', 'M\'Boi Mirim', 3, 'Inativo Transitável', 'BAIRRO/CENTRO', 'ALTURA DO N. 1725', '0000-00-00', '0000-00-00', 'ES M\'BOI MIRIM'),
(29, '2023-11-23', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Transitável', 'AMBOS', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(30, '2023-11-23', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Transitável', 'AMBOS', 'AL STO AMARO', '0000-00-00', '0000-00-00', 'R JOAO ALFREDO'),
(31, '2023-11-23', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'AV OCTALLES MARCONDES FERREIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(32, '2023-11-23', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'BAIRRO/CENTRO', 'AV INDIANOPOLIS', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(33, '2023-11-23', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'BAIRRO/CENTRO', 'AV MACUCO', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(34, '2023-11-27', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Intransitável', 'AMBOS', 'VD GAL EUCLIDES DE FIGUEIREDO', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(35, '2023-11-28', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(36, '2023-11-29', 'Zona Sul', 'Cidade Ademar', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'R ARISTIDES NOGUEIRA', '0000-00-00', '0000-00-00', 'ES DO ALVARENGA'),
(37, '2023-11-29', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(38, '2023-11-29', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'R ENG ALLYRIO HUGUENEY DE MATTOS', '0000-00-00', '0000-00-00', 'AV INTERLAGOS'),
(39, '2023-11-29', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'PC DOM FRANCISCO DE SOUSA', '0000-00-00', '0000-00-00', 'AV VITOR MANZINI'),
(40, '2023-11-29', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(41, '2023-11-29', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(42, '2023-11-29', 'Zona Sul', 'Jabaquara', 1, 'Inativo Transitável', 'MARGINAL/IMIGRANTES', 'AV PROF ABRAAO DE MORAIS', '0000-00-00', '0000-00-00', 'RV DOS IMIGRANTES'),
(43, '2023-11-29', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Transitável', 'MARGINAL/IMIGRANTES', 'AC ESQ A RODOVIA DOS IMIGRANTES', '0000-00-00', '0000-00-00', 'AV AFFONSO D\'ESCRAGNOLLE TAUNAY'),
(44, '2023-12-08', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Transitável', 'BAIRRO/CENTRO', 'R PROF FRANCISCO MARQUES OLIVEIRA JR.', '0000-00-00', '0000-00-00', 'AV CARLOS BARBOSA SANTOS'),
(45, '2023-12-10', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Intransitável', 'AMBOS', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(46, '2023-12-23', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'AMBOS', 'R ENG DAGOBERTO SALLES FILHO', '0000-00-00', '0000-00-00', 'AV INTERLAGOS'),
(47, '2023-12-23', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(48, '2023-12-23', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'CASTELO/INTERLAGOS', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(49, '2023-12-23', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(50, '2023-12-23', 'Zona Sul', 'Santo Amaro', 5, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(51, '2023-12-23', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Transitável', 'AMBOS', 'R RIBEIRO LACERDA', '0000-00-00', '0000-00-00', 'AV PROF ABRAAO DE MORAIS'),
(52, '2024-01-08', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'AMBOS', 'VD DOS BANDEIRANTES-DR ANTONIO MARCONDES DE ALMEIDA', '0000-00-00', '0000-00-00', 'AV DOS BANDEIRANTES'),
(53, '2024-01-08', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'BAIRRO/CENTRO', 'AV JAMARIS', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(54, '2024-01-08', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'AMBOS', 'AV ANTONIO J. DE MOURA ANDRADE', '0000-00-00', '0000-00-00', 'AV REPUBLICA DO LIBANO'),
(55, '2024-01-09', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Intransitável', 'AMBOS', 'VD GAL EUCLIDES DE FIGUEIREDO', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(56, '2024-01-09', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Intransitável', 'AMBOS', 'AV ANTONIO J. DE MOURA ANDRADE', '0000-00-00', '0000-00-00', 'AV REPUBLICA DO LIBANO'),
(57, '2024-01-09', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Transitável', 'NAO INFORMADO', 'R GROENLANDIA', '0000-00-00', '0000-00-00', 'AV BRIG LUIS ANTONIO'),
(58, '2024-01-09', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Transitável', 'BAIRRO/CENTRO', 'AV MOEMA', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(59, '2024-01-10', 'Zona Sul', 'Santo Amaro', 4, 'Inativo Intransitável', 'DIADEMA/MARGINAL', 'R STO ARCADIO', '0000-00-00', '0000-00-00', 'AV ROQUE PETRONI JUNIOR'),
(60, '2024-01-10', 'Zona Sul', 'Santo Amaro', 4, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(61, '2024-01-10', 'Zona Sul', 'Santo Amaro', 4, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(62, '2024-01-10', 'Zona Sul', 'Santo Amaro', 4, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(63, '2024-01-10', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Intransitável', 'AMBOS', 'VD GAL EUCLIDES DE FIGUEIREDO', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(64, '2024-01-12', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'ALTURA N. 752', '0000-00-00', '0000-00-00', 'AV GUARAPIRANGA'),
(65, '2024-01-12', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'AV ROQUE PETRONI JUNIOR', '0000-00-00', '0000-00-00', 'AV SANTO AMARO'),
(66, '2024-01-12', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Intransitável', 'AMBOS', 'R DOS BRASOES', '0000-00-00', '0000-00-00', 'AV SANTO AMARO'),
(67, '2024-01-12', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(68, '2024-01-19', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'R DOS BRASOES', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(69, '2024-01-19', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'AV JOAO DORIA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(70, '2024-01-19', 'Zona Sul', 'Ipiranga', 3, 'Inativo Intransitável', 'AMBOS', 'AV DO ESTADO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(71, '2024-01-19', 'Zona Sul', 'Ipiranga', 3, 'Inativo Intransitável', 'IMIGRANTES/ANCHIETA', 'R ARMANDO MATTAR', '0000-00-00', '0000-00-00', 'AV PRES TANCREDO NEVES'),
(72, '2024-01-19', 'Zona Sul', 'Ipiranga', 3, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'AV DO ESTADO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(73, '2024-01-19', 'Zona Sul', 'Jabaquara', 1, 'Inativo Intransitável', 'AMBOS', 'R PROF FRANCISCO EMYDIO DA FONSECA TELLES', '0000-00-00', '0000-00-00', 'R ALBA'),
(74, '2024-01-19', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Intransitável', 'AMBOS', 'PC LEONOR KAUPA', '0000-00-00', '0000-00-00', 'R RIBEIRO LACERDA'),
(75, '2024-01-19', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Intransitável', 'AEROPORTO/SANTANA', 'AL UANANA', '0000-00-00', '0000-00-00', 'AV RUBEN BERTA'),
(76, '2024-01-19', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Intransitável', 'S PAULO/SANTOS', 'AV BOSQUE DA SAUDE', '0000-00-00', '0000-00-00', 'AV PROF ABRAAO DE MORAIS'),
(77, '2024-01-19', 'Zona Sul', 'Vila Mariana', 4, 'Inativo Transitável', 'S PAULO/SANTOS', 'R FREI ROLIM', '0000-00-00', '0000-00-00', 'AV PROF ABRAAO DE MORAIS'),
(78, '2024-01-23', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Transitável', 'AMBOS', 'R PROF FRANCISCO MARQUES OLIVEIRA JR.', '0000-00-00', '0000-00-00', 'AV CARLOS BARBOSA SANTOS'),
(79, '2024-01-27', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(80, '2024-01-28', 'Zona Sul', 'M\'Boi Mirim', 1, 'Inativo Transitável', 'AMBOS', 'R INDIANA', '0000-00-00', '0000-00-00', 'R JACUCAIM'),
(81, '2024-01-28', 'Zona Sul', 'Ipiranga', 1, 'Inativo Intransitável', 'AMBOS', 'AV PROF ASCENDINO REIS', '0000-00-00', '0000-00-00', 'PC JUCA MULATO'),
(82, '2024-01-28', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'AV JAMARIS', '0000-00-00', '0000-00-00', 'AV IBIRAPUERA'),
(83, '2024-01-28', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'AMBOS', 'AV PROF ABRAAO DE MORAIS', '0000-00-00', '0000-00-00', 'AV MIGUEL ESTEFNO'),
(84, '2024-01-31', 'Zona Sul', 'Cidade Ademar', 1, 'Inativo Intransitável', 'UNICO', 'R MIGUEL YUNES', '0000-00-00', '0000-00-00', 'AV NSRA.DE SABARA'),
(85, '2024-01-31', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'AV YERVANT KISSAJIKIAN', '0000-00-00', '0000-00-00', 'AV INTERLAGOS'),
(86, '2024-02-02', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Transitável', 'BAIRRO/CENTRO', 'AV PEDRO ALVARES CABRAL', '0000-00-00', '0000-00-00', 'PC TULIO FONTOURA'),
(87, '2024-02-04', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'R FERDINANDO FORINO', '0000-00-00', '0000-00-00', 'R ESTEVAO FABRI'),
(88, '2024-02-04', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Intransitável', 'AEROPORTO/SANTANA', 'AV JUREMA', '0000-00-00', '0000-00-00', 'AV MOREIRA GUIMARAES'),
(89, '2024-02-04', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'SANTANA/AEROPORTO', 'R DR HABERBECK BRANDAO', '0000-00-00', '0000-00-00', 'AV RUBEM BERTA'),
(90, '2024-02-13', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'R ENG ALLYRIO HUGUENEY DE MATTOS', '0000-00-00', '0000-00-00', 'AV INTERLAGOS'),
(91, '2024-02-13', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R CRISTALINO ROLIM DE FREITAS', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(92, '2024-02-13', 'Zona Sul', 'Santo Amaro', 3, 'Inativo Intransitável', 'MARGINAL/AEROPORTO', 'PC JOSE BLOTA JUNIOR', '0000-00-00', '0000-00-00', 'AV JORN ROBERTO MARINHO'),
(93, '2024-02-13', 'Zona Sul', 'Ipiranga', 1, 'Inativo Transitável', 'AMBOS', 'PC DEL AMOROSO NETO', '0000-00-00', '0000-00-00', 'AV ORDEM E PROGRESSO'),
(94, '2024-02-14', 'Zona Sul', 'Campo Limpo', 1, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'R ALVES DOS SANTOS', '0000-00-00', '0000-00-00', 'ES DO CAMPO LIMPO'),
(95, '2024-02-19', 'Zona Sul', 'M\'Boi Mirim', 1, 'Inativo Transitável', 'CASTELO/INTERLAGOS', 'PTE JOAO DIAS', '0000-00-00', '0000-00-00', 'AV GUIDO CALOI'),
(96, '2024-02-19', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R JAIME DE OLIVEIRA SOUZA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(97, '2024-02-19', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Intransitável', 'INTERLAGOS/CASTELO', 'R PROF CAMPOS DE OLIVEIRA', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(98, '2024-02-20', 'Zona Sul', 'M\'Boi Mirim', 1, 'Inativo Transitável', 'CASTELO/INTERLAGOS', 'AV JOAO DIAS', '0000-00-00', '0000-00-00', 'AV GUIDO CALOI'),
(99, '2024-02-20', 'Zona Sul', 'Parelheiros', 1, 'Inativo Intransitável', 'AMBOS', 'AV JACEGUAVA', '0000-00-00', '0000-00-00', 'AV SEN TEOTONIO VILELA'),
(100, '2024-02-20', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'V MARIANA/PINHEIROS', 'R ABILIO SOARES', '0000-00-00', '0000-00-00', 'AV PEDRO ALVARES CABRAL'),
(101, '2024-02-20', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'V MARIANA/PINHEIROS', 'AV DR DANTE PAZZANESE', '0000-00-00', '0000-00-00', 'AV PEDRO ALVARES CABRAL'),
(102, '2024-02-23', 'Zona Sul', 'M\'Boi Mirim', 2, 'Inativo Intransitável', 'BAIRRO/CENTRO', 'AV COMEN SANT\'ANNA', '0000-00-00', '0000-00-00', 'R MARGINAL (JD MARIANI)'),
(103, '2024-02-23', 'Zona Sul', 'M\'Boi Mirim', 2, 'Ativo Transitável', 'CENTRO/BAIRRO', 'R CLAMECY', '0000-00-00', '0000-00-00', 'ES M\'BOI MIRIM'),
(104, '2024-02-23', 'Zona Sul', 'Ipiranga', 1, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'AV DO ESTADO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(105, '2024-03-05', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Intransitável', 'CENTRO/BAIRRO', 'R DOS BRASOES', '0000-00-00', '0000-00-00', 'AV STO AMARO'),
(106, '2024-03-05', 'Zona Sul', 'Vila Mariana', 3, 'Inativo Intransitável', 'IBIRAPUERA/MARGINAL', 'R BANDEIRA PAULISTA', '0000-00-00', '0000-00-00', 'AV ANTONIO J. DE MOURA ANDRADE'),
(107, '2024-03-05', 'Zona Sul', 'Vila Mariana', 3, 'Inativo Intransitável', 'UNICO', 'AV IBIRAPUERA', '0000-00-00', '0000-00-00', 'AV JAMARIS'),
(108, '2024-03-05', 'Zona Sul', 'Vila Mariana', 3, 'Inativo Intransitável', 'AMBOS', 'PC JANETE CLAIR', '0000-00-00', '0000-00-00', 'AV PROF ASCENDINO REIS'),
(109, '2024-03-06', 'Zona Sul', 'Santo Amaro', 1, 'Inativo Transitável', 'INTERLAGOS/CASTELO', 'R ACARI', '0000-00-00', '0000-00-00', 'AV DAS NACOES UNIDAS'),
(110, '2024-03-08', 'Zona Sul', 'Campo Limpo', 1, 'Inativo Intransitável', 'AMBOS', 'R TULIO MUGNAINI', '0000-00-00', '0000-00-00', 'AV CARLOS CALDEIRA FILHO'),
(111, '2024-03-08', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Transitável', 'IMIGRANTES/MARGINAL', 'VD DOS BANDEIRANTES-DR ANTONIO MARCONDES DE ALMEIDA', '0000-00-00', '0000-00-00', 'AV DOS BANDEIRANTES'),
(112, '2024-03-08', 'Zona Sul', 'Santo Amaro', 2, 'Inativo Intransitável', 'AMBOS', 'R ELIAS ANTONIO ZOGBI', '0000-00-00', '0000-00-00', 'AV VITOR MANZINI'),
(113, '2024-03-08', 'Zona Sul', 'Ipiranga', 2, 'Inativo Intransitável', 'UNICO', 'R PRES COSTA PINTO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(114, '2024-03-08', 'Zona Sul', 'Ipiranga', 2, 'Inativo Intransitável', 'AMBOS', 'R PRES COSTA PINTO', '0000-00-00', '0000-00-00', 'R PRES BATISTA PEREIRA'),
(115, '2024-03-08', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'AEROPORTO/SANTANA', 'R TUTOIA', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(116, '2024-03-08', 'Zona Sul', 'Vila Mariana', 2, 'Inativo Transitável', 'SANTANA/AEROPORTO', 'VD GAL EUCLIDES DE FIGUEIREDO', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(117, '2024-03-18', 'Zona Sul', 'Capela do Socorro', 1, 'Inativo Transitável', 'CENTRO/BAIRRO', 'R ANGELO SANTI', '0000-00-00', '0000-00-00', 'PC HIROSHI SHIOZAWA'),
(118, '2024-05-27', 'Zona Sul', 'Vila Mariana', 1, 'Inativo Transitável', 'SANTANA/AEROPORTO', 'CV JOAO JORGE SAAD', '0000-00-00', '0000-00-00', 'AV VINTE E TRES DE MAIO'),
(119, '2024-07-09', 'Zona Sul', 'Campo Limpo', 1, 'Inativo Transitável', 'NAO INFORMADO', 'R PROF INDALECIO DE MELO', '0000-00-00', '0000-00-00', 'R ALVES DOS SANTOS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interrupcoes`
--

CREATE TABLE `interrupcoes` (
  `id` int(11) NOT NULL,
  `DscConjuntoUnidadeConsumidora` varchar(25) NOT NULL,
  `DatInicioInterrupcao` datetime NOT NULL,
  `DatFimInterrupcao` datetime NOT NULL,
  `contagem` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pluviometria`
--

CREATE TABLE `pluviometria` (
  `id` int(11) NOT NULL,
  `codBairro` varchar(2) NOT NULL,
  `nomeBairro` varchar(20) NOT NULL,
  `dataPluvio` date NOT NULL,
  `pluviometria` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alagamentos`
--
ALTER TABLE `alagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `interrupcoes`
--
ALTER TABLE `interrupcoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pluviometria`
--
ALTER TABLE `pluviometria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alagamentos`
--
ALTER TABLE `alagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de tabela `interrupcoes`
--
ALTER TABLE `interrupcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pluviometria`
--
ALTER TABLE `pluviometria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
