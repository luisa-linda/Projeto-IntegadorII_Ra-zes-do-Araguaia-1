-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/11/2025 às 21:31
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
-- Banco de dados: `raízes do araguaia - versão web bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id_avaliacao` int(11) NOT NULL,
  `id_ponto_FK` int(11) DEFAULT NULL,
  `estrelas` int(11) DEFAULT NULL,
  `comentarios` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id_avaliacao`, `id_ponto_FK`, `estrelas`, `comentarios`) VALUES
(1, 1, 5, '1° comentário: O thermas é gerenciada pela prefeitura e o valor do ingresso é $10/pessoa\r\n\r\nPossui várias piscinas de água quente.\r\nTambém há 3 toboáguas e piscina kids.\r\nO local é bem amplo mas sugiro a disponibilização de cadeiras ou espreguiçadeiras espalhadas no termas.\r\n\r\nLembro que antigamente havia boias para utilizar no rio lento (em 2017 quando vim pela pela primeira vez), hoje em dia não tem mais sendo necessário trazer a sua própria boia ou até mesmo comprar.\r\nTem também restaurante com salgados, pratos executivo, porções, e bebidas no geral\r\n\r\n2° comentário: Lugar muito bem administrado e conservado, ingresso muito acessível, na vez que fui era R$ 10,00 por pessoa, no restaurante comida boa e com valor acessível, pena que nem todos os visitantes sabem se portar quanto a higiene nos banheiros. Existem armários de aço para deixar pertences, é necessário levar somente cadeado. Fora os pontos negativos apresentados, é um parque maravilhoso.\r\n\r\n3° comentário: Ótimo para passar o dia em família, lugar muito legal para crianças, tudo bem limpo e organizado, entrada barata, só 10,00 e estudante paga meia, banheiros limpos, piscinas limpas, bastante espaço.'),
(2, 2, 5, '1° comentário: Só ficamos na beira da estrada, não fomos aos atrativos internos. Mas o lugar é maravilhoso para ver o pôr do sol e as estrelas. Só tinha eu e meu esposo, montamos nossas cadeiras de praia e ficamos horas aproveitando a natureza.\r\nVão de sapato fechado pois tem bastante formiga.\r\nMas a vista vale a pena demais.\r\n\r\n2° comentário: Lugar sem palavras lindo e cheio de mistérios, não subi no cume mas fui visitar, o tempo estava corrido porém recomendo o lugar é lindo\r\n\r\n3° comentário: Lugar encantador. Fizemos trilhas, subimos a serra, vimos escrito rupestres!\r\n\r\n\r\n'),
(3, 3, 5, '1° comentário: Estacionamento pago, 20 reais carro, 30 caminhonete.\r\nInfraestrutura com barracas, chuveiro e banheiro.\r\nCardápio das barracas com preço normal, nem caro nem barato.\r\nPraia limpa, com sombra.\r\nRio maravilhoso.\r\n\r\n2° comentário: Essa praia das araras é muito bonita, tem opções de restaurantes no local, tem salva vidas, tem lugar para acampar para quem tiver interesse. Já o acesso para essa praia não é tão bom, quem tem carro é mais tranquilo para chegar na praia, agora para quem tem moto já não é muito bom pois a estrada é de chão e tem muitas pedras e terra fofa o que faz a moto deslizar com mais facilidade. Mas tendo cuidado e andando devagar, dá para chegar no local.\r\n\r\n3° comentário: Uma linda praia de rio que fica muito bonita na época da seca. O acesso é por uma estrada de terra e é cobrado um preço de estacionamento. Na parte da manhã é bem mais tranquila, possibilitando banhos no Rio e um grande relaxamento. Há uma boa estrutura de barracas'),
(4, 4, 5, '1° comentário: Um ambiente maravilhoso limpo e organizado. Ótimo para fazer um piquenique ou simplesmente deitar para contemplar a uma noite enluarada.\r\n\r\n2° comentário: Local aconchegante. Espaço perfeito para estar em família. Espaço verde. Parque gramado. Lago bem cuidado. Lixeiras espalhadas pelo local. Há uma vista exuberante. Há um parquinho infantil gratuito. Há pista para caminhada diurna e noturna. O que carece é de uma melhor arborização para se estar no período Vespertino, pois a incidência do sol é grande. Estacionamento amplo. Vale muito a pena conhecer!\r\n\r\n3° comentário: Um ótimo lugar para passear ou passar o tempo. Muito organizado e limpo. Os municípios vizinhos precisam aprender a criar espaços de lazer como esse.'),
(5, 5, 4, '1° comentário: Por conta da pandemia, sem as barracas, ficou um local muito tranquilo e familiar pra se refrescar. Dica: leve seu próprio guarda sol.\r\n\r\n2° comentário: Melhor praia de toda região do Vale do Rio Araguaia! ✌️ 🏄 🍃 …\r\n\r\n3° comentário: Já estive várias vezes nessa praia, localizada em Aragarças, GO, no lindo rio Araguaia. A vista do rio É ímpar. Ele se abre pelos horizontes, acima e abaixo. Na época das temporadas de praia, o local é bem concorrido, mas há espaço para todos. O Corpo de Bombeiros delimita a zona de segurança e faz a vigilância. Há comércio de bebidas e alimentos. Preços razoáveis. Estacionamento no Sol grátis.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `id_estado_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `nome`, `id_estado_FK`) VALUES
(1, 'Pontal do Araguaia', 1),
(2, 'Aragarças', 2),
(3, 'Barra do Garças', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id_contato` int(11) NOT NULL,
  `redes_sociais` varchar(150) DEFAULT NULL,
  `numero_telefone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_ponto_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`id_contato`, `redes_sociais`, `numero_telefone`, `email`, `id_ponto_FK`) VALUES
(1, '@aguasquentesbg. ', '(66) 3405-1533', 'gabinete@barradogarcas.mt.gov.br', 1),
(2, 'não possui ', '(66) 3401-9781', 'gabinete@barradogarcas.mt.gov.br', 2),
(3, '@praiadaararaoficial\r\n', 'não possui ', 'não possui ', 3),
(4, ' @pontaldoaraguaia ', '(66) 3401-2670', 'prefeitura@pontaldoaraguaia.mt.gov.br', 4),
(5, 'não possui ', 'não possui ', 'não possui ', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `curiosidades`
--

CREATE TABLE `curiosidades` (
  `id_curiosidade` int(11) NOT NULL,
  `informacao` text DEFAULT NULL,
  `id_ponto_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `curiosidades`
--

INSERT INTO `curiosidades` (`id_curiosidade`, `informacao`, `id_ponto_FK`) VALUES
(1, '- Piscinas naturais termais entre 31 C e 43 C. \r\n- ⁠Águas com propriedades terapêuticas.\r\n- ⁠Localizado dentro de uma reserva do cerrado mato-grossense. \r\n- ⁠Trilhas ecológicas e áreas para piquenique.\r\n', 1),
(2, '-Montanhas com formações rochosas únicas.\r\n-Local de lendas sobre civilizações antigas\r\n-Trilhas ecológicas para caminhadas e observação da fauna. \r\n-Ideal para ecoturismo e fotografia da natureza. ', 2),
(3, '-A praia só aparece no período da seca ( junho a agosto).\r\n-É um dos pontos mais procurados para ver o pôr do sol no Araguaia. \r\n-Possui uma rica fauna local, com araras e garças frequentemente vistas. \r\n-Durante o mês de julho, o local recebe eventos musicais e esportivos.', 3),
(4, '-Lago artificial com capacidade para eventos de grande porte. \r\n-Área de lazer com quadras esportivas e pista de caminhada. \r\n-Localizado próximo ao centro da cidade, facilitando o acesso dos visitantes.', 4),
(5, '-Localizada às margens do Rio Araguaia.\r\n-Ideal para banho e esportes aquáticos.\r\n-Área para piquenique e lazer em família.\r\n-Observação da fauna e flora local\r\n-Algumas atividades como passeios de barco podem ter taxa.\r\n-Estacionamento disponível próximo à praia.', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `Nome` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estado`
--

INSERT INTO `estado` (`id_estado`, `Nome`) VALUES
(1, 'Mato Grosso'),
(2, 'Goiás');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontos_turisticos`
--

CREATE TABLE `pontos_turisticos` (
  `id_ponto` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `horario` varchar(150) DEFAULT NULL,
  `preco` varchar(100) DEFAULT NULL,
  `historia` text DEFAULT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `id_cidade_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pontos_turisticos`
--

INSERT INTO `pontos_turisticos` (`id_ponto`, `nome`, `horario`, `preco`, `historia`, `coordenadas`, `descricao`, `id_cidade_FK`) VALUES
(1, 'Parque das Águas Quentes', 'Aberto de terça a domingo, das 8h às 20h.\r\n', 'Ingresso: R$10,00 por pessoa (meia R$ 5,00).\r\nCrianças até 6 anos e idosos não pagam.', 'O Parque das Águas Quentes de Barra do Garças foi inaugurado em 1984 e administrado pela prefeitura, sendo um dos principais cartões-postais da cidade por sua águas termais, que brotam naturalmente a temperaturas entre 31 C e 43, conhecidas por suas propriedades terapêuticas. O parque oferece diversas opções de lazer em meio a natureza, com piscinas, toboáguas, restaurante e outras estruturas, e tem passado por várias modificações e revitalização, com foco em acessibilidade e conforto para os visitantes. ', 'https://maps.app.goo.gl/dKiinW1jsWfjVafa9', 'O Parque das Águas Quentes é um dos principais atrativos turísticos de Barra do Garças. Possui piscinas de águas termais com propriedades terapêuticas, em meio à natureza do cerrado mato-grossense. ', 3),
(2, 'Serra do Roncador', 'Visitação permitida durante o dia, recomenda-se ir entre 6h e 17h. \r\n\r\n', 'A entrada é gratuita. Para trilhas guiadas, o valor depende do guia ou agência contratada. \r\n', 'A Serra do Roncador é uma região de grande importância histórica e ambiental localizada em Mato Grosso. Conhecida por suas formações rochosas impressionantes e trilhas ecológicas, é cercada de lendas sobre civilizações antigas e mistérios. A região é ideal para ecoturismo, observação da fauna e flora e aventuras ao ar livre. \r\n', 'https://maps.app.goo.gl/kLJUbTT7t56dJ6sG7', 'A Serra do Roncador fica em Mato Grosso e é famosa por suas paisagens misteriosas, trilhas, cachoeiras e formações rochosas. O local atrai turistas e aventureiros por seu visual único e pelas lendas que cercam a região.', 3),
(3, 'Praia da Arara ', 'Aberto diariamente. \r\n', 'A entrada é gratuita. O consumo nas barracas e o aluguel de equipamentos (como caiaques e boias) são', 'A Praia da Arara é uma das principais atrações de Pontal do Araguaia, banhada pelas águas do Rio Araguaia. Durante o período de seca, suas areias emergem e formam uma praia natural que atrai turistas de toda a região. É conhecida por suas águas calmas e limpas, ideais para banho e esportes aquáticos. No local, há estrutura com barracas, quiosques e eventos culturais durante a temporada. ', 'https://maps.app.goo.gl/CG1cYE35EhwDKgeZ7', 'Praia da Arara é um refúgio encantador às margens do Rio Araguaia, em Pontal do Araguaia, Mato Grosso. As areias finas e águas calmas formam um cenário perfeito para relaxar, nadar e curtir o pôr do sol. Com natureza preservada e clima tranquilo, é um destino ideal para famílias e amantes da vida ao ar livre.', 1),
(4, 'Lago do Pontal', 'Aberto diariamente, é um lugar público.\r\n', 'Entrada Gratuita', 'O Lago do Pontal é uma área de lazer localizada no Parque Turísticos dos Garimpeiros, em Pontal do Araguaia. Inaugurado em 2022, o lago é um ponto de encontro para moradores e turistas, oferecendo atividades como pesca esportiva durante o mês de dezembro e eventos culturais. ', 'https://maps.app.goo.gl/RrrW2a36CTHv1Yx97', 'O Lago do Pontal, em Pontal do Araguaia ( MT), é um espaço encantador que une lazer, natureza e cultura. Com paisagens tranquilas, é palco de eventos de pesca, encontros comunitários e momentos especiais em família.', 1),
(5, 'Praia Quarto Crescente', 'Aberto Diariamente', 'Entrada gratuita. Algumas atividades podem ter taxa à parte. ', 'A Praia Quarto Crescente é uma das principais atrações de Aragarças, às margens do Rio Araguaia. Conhecida por suas águas limpas e tranquilas, é ideal para banho, esportes aquáticos e lazer em família, atraindo turistas da região e de estados vizinhos.\r\n', 'https://maps.app.goo.gl/bkHos3ms8nHzYgwU6', 'Praia Quarto Crescente fica em Aragarças ( GO), bem próxima de Barra do Garças ( MT). É famosa pelas águas calmas, areia clara e estrutura de lazer. Durante a temporada de junho a agosto, recebe barracas, shows e atividades que atraem moradores e turistas da região.', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `id_ponto_FK` (`id_ponto_FK`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `id_estado_FK` (`id_estado_FK`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id_contato`),
  ADD KEY `id_ponto_FK` (`id_ponto_FK`);

--
-- Índices de tabela `curiosidades`
--
ALTER TABLE `curiosidades`
  ADD PRIMARY KEY (`id_curiosidade`),
  ADD KEY `id_ponto_FK` (`id_ponto_FK`);

--
-- Índices de tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Índices de tabela `pontos_turisticos`
--
ALTER TABLE `pontos_turisticos`
  ADD PRIMARY KEY (`id_ponto`),
  ADD KEY `id_cidade_FK` (`id_cidade_FK`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`id_ponto_FK`) REFERENCES `pontos_turisticos` (`id_ponto`);

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_estado_FK`) REFERENCES `estado` (`id_estado`);

--
-- Restrições para tabelas `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `contato_ibfk_1` FOREIGN KEY (`id_ponto_FK`) REFERENCES `pontos_turisticos` (`id_ponto`);

--
-- Restrições para tabelas `curiosidades`
--
ALTER TABLE `curiosidades`
  ADD CONSTRAINT `curiosidades_ibfk_1` FOREIGN KEY (`id_ponto_FK`) REFERENCES `pontos_turisticos` (`id_ponto`);

--
-- Restrições para tabelas `pontos_turisticos`
--
ALTER TABLE `pontos_turisticos`
  ADD CONSTRAINT `pontos_turisticos_ibfk_1` FOREIGN KEY (`id_cidade_FK`) REFERENCES `cidade` (`id_cidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
