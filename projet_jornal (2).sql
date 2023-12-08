-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Dez-2023 às 18:27
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projet_jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cinema`
--

CREATE TABLE `cinema` (
  `pk_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `sinopse` varchar(300) NOT NULL,
  `elenco` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `destaque_home`
--

CREATE TABLE `destaque_home` (
  `pk_id` int(11) NOT NULL,
  `fk_noticia` int(11) NOT NULL,
  `fk_redacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `pk_id` int(11) NOT NULL,
  `tipo_genero` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `pk_id` int(11) NOT NULL,
  `palavra_chave` varchar(200) NOT NULL,
  `texto` text NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `sub_titulo` varchar(300) NOT NULL,
  `data_postagem` datetime DEFAULT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `redacao`
--

CREATE TABLE `redacao` (
  `pk_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cpf` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `revisor`
--

CREATE TABLE `revisor` (
  `pk_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cpf` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `pk_id` int(11) NOT NULL,
  `e_mail` varchar(220) NOT NULL,
  `senha` varchar(80) NOT NULL,
  `habilita` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `destaque_home`
--
ALTER TABLE `destaque_home`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `redacao`
--
ALTER TABLE `redacao`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `revisor`
--
ALTER TABLE `revisor`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cinema`
--
ALTER TABLE `cinema`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `destaque_home`
--
ALTER TABLE `destaque_home`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `redacao`
--
ALTER TABLE `redacao`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `revisor`
--
ALTER TABLE `revisor`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
