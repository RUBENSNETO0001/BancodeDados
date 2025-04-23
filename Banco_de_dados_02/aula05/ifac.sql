-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/04/2025 às 21:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ifac`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `email`, `data_nascimento`) VALUES
(1, 'Ana Souza', 'ana@ifac.edu.br', '2005-03-12'),
(2, 'Bruno Lima', 'bruno@ifac.edu.br', '2004-07-23'),
(3, 'Carlos Mendes', 'carlos@ifac.edu.br', '2003-11-30'),
(4, 'Daniela Rocha', 'daniela@ifac.edu.br', '2005-05-14'),
(5, 'Eduardo Silva', 'eduardo@ifac.edu.br', '2006-01-10'),
(6, 'Fernanda Castro', 'fernanda@ifac.edu.br', '2005-12-03'),
(7, 'Gabriel Costa', 'gabriel@ifac.edu.br', '2004-08-09'),
(8, 'Helena Dias', 'helena@ifac.edu.br', '2003-10-17'),
(9, 'Igor Martins', 'igor@ifac.edu.br', '2006-02-25'),
(10, 'Juliana Freitas', 'juliana@ifac.edu.br', '2005-09-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `carga_horaria`, `id_professor`) VALUES
(1, 'Matemática', 60, 1),
(2, 'Português', 60, 2),
(3, 'História', 40, 3),
(4, 'Geografia', 40, 4),
(5, 'Biologia', 60, 5),
(6, 'Física', 60, 6),
(7, 'Química', 60, 7),
(8, 'Inglês', 40, 8),
(9, 'Educação Física', 30, 9),
(10, 'Artes', 30, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_disciplina` int(11) DEFAULT NULL,
  `nota` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notas`
--

INSERT INTO `notas` (`id`, `id_aluno`, `id_disciplina`, `nota`) VALUES
(1, 1, 1, 8.50),
(2, 2, 2, 7.00),
(3, 3, 3, 6.80),
(4, 4, 4, 9.20),
(5, 5, 5, 5.50),
(6, 6, 6, 8.00),
(7, 7, 7, 7.30),
(8, 8, 8, 6.40),
(9, 9, 9, 9.00),
(10, 10, 10, 7.80);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `titulacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `email`, `titulacao`) VALUES
(1, 'Maria Almeida', 'maria@ifac.edu.br', 'Mestre'),
(2, 'João Pedro', 'joao@ifac.edu.br', 'Doutor'),
(3, 'Claudia Torres', 'claudia@ifac.edu.br', 'Especialista'),
(4, 'Rodrigo Santos', 'rodrigo@ifac.edu.br', 'Doutor'),
(5, 'Luciana Costa', 'luciana@ifac.edu.br', 'Mestre'),
(6, 'Paulo Henrique', 'paulo@ifac.edu.br', 'Mestre'),
(7, 'Renata Lima', 'renata@ifac.edu.br', 'Doutor'),
(8, 'Sérgio Oliveira', 'sergio@ifac.edu.br', 'Especialista'),
(9, 'Aline Matos', 'aline@ifac.edu.br', 'Mestre'),
(10, 'Fábio Rezende', 'fabio@ifac.edu.br', 'Doutor');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices de tabela `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_disciplina` (`id_disciplina`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`);

--
-- Restrições para tabelas `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
