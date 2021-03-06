-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 13/03/2013 às 15h54min
-- Versão do Servidor: 5.5.16
-- Versão do PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `bimboo_localhost`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `analytics_data`
--

CREATE TABLE IF NOT EXISTS `analytics_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `analytics_data` text,
  `url` text,
  `qnt` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `agrupamento` text,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `grupo` bigint(20) DEFAULT NULL,
  `nome` text COLLATE utf8_bin,
  `email` text COLLATE utf8_bin,
  `site` text COLLATE utf8_bin,
  `comentario` text COLLATE utf8_bin,
  `ip` bigint(20) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `url_referencia` text COLLATE utf8_bin,
  `aproved` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_grupo` (`grupo`),
  KEY `idx_ip` (`ip`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`ROWID`, `grupo`, `nome`, `email`, `site`, `comentario`, `ip`, `created_at`, `url_referencia`, `aproved`) VALUES
(1, 1, 0x5275616e204f6c697665697261, 0x7465636e6f6c6f6769614062696d626f6f2e636f6d2e6272, '', 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e204475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e, 0, 1349791560, '', 1),
(2, 1, 0x52656e616e205269626569726f, 0x636f7274654062696d626f6f2e636f6d2e6272, '', 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e204475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e, 0, 1349791560, '', 1),
(3, 1, 0x416e6472c3a9204665726c65, 0x7375706f7274654062696d626f6f2e636f6d2e6272, '', 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e204475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e, 0, 1349791620, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios_config`
--

CREATE TABLE IF NOT EXISTS `comentarios_config` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `moderate` bigint(20) DEFAULT NULL,
  `blacklist` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios_data`
--

CREATE TABLE IF NOT EXISTS `comentarios_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `parent_section` bigint(20) DEFAULT NULL,
  `view` text COLLATE utf8_bin,
  `ref_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`),
  KEY `idx_parent_section` (`parent_section`),
  KEY `idx_ref_id` (`ref_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `comentarios_data`
--

INSERT INTO `comentarios_data` (`ROWID`, `component_id`, `parent_section`, `view`, `ref_id`) VALUES
(1, 223, 236, 0x636f6d6d656e74735f64656661756c74, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `application_name` text COLLATE utf8_bin,
  `application_type` text COLLATE utf8_bin,
  `adress_city` text COLLATE utf8_bin,
  `adress_state` text COLLATE utf8_bin,
  `adress_country` text COLLATE utf8_bin,
  `features` text COLLATE utf8_bin,
  `system_timezone` text COLLATE utf8_bin,
  `system_summertime` text COLLATE utf8_bin,
  `system_inflector_language` text COLLATE utf8_bin,
  `language` text COLLATE utf8_bin,
  `google_apps` text COLLATE utf8_bin,
  `google_maps_key` text COLLATE utf8_bin,
  `google_search_code` text COLLATE utf8_bin,
  `analytics_id` text COLLATE utf8_bin,
  `analytics_login` text COLLATE utf8_bin,
  `analytics_password` text COLLATE utf8_bin,
  `analytics_code` text COLLATE utf8_bin,
  `banner_slider_template` text COLLATE utf8_bin,
  `banner_slider_effect` text COLLATE utf8_bin,
  `banner_slider_width` text COLLATE utf8_bin,
  `banner_slider_height` text COLLATE utf8_bin,
  `gallery_portfolio` text COLLATE utf8_bin,
  `archived_months` text COLLATE utf8_bin,
  `comments_disqus_shortname` text COLLATE utf8_bin,
  `dnsimple` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `configuration`
--

INSERT INTO `configuration` (`ROWID`, `application_name`, `application_type`, `adress_city`, `adress_state`, `adress_country`, `features`, `system_timezone`, `system_summertime`, `system_inflector_language`, `language`, `google_apps`, `google_maps_key`, `google_search_code`, `analytics_id`, `analytics_login`, `analytics_password`, `analytics_code`, `banner_slider_template`, `banner_slider_effect`, `banner_slider_width`, `banner_slider_height`, `gallery_portfolio`, `archived_months`, `comments_disqus_shortname`, `dnsimple`) VALUES
(1, 0x42696d626f6f20322e32204e657773, 0x6e657773, '', '', '', 0x7273732c626f782c64756d625f74656d706c617465732c6d6169735f6c696461732c72656c61746f72696f5f6d617465726961732c72656c6163696f6e616461732c736974656d61702c616e616c79746963732c7365617263682c636f6e74656e745f666f726d2c636f6e74656e745f7365617263682c636f6d6d656e74735f64656661756c742c67616c6c6572795f6d6f6f746f6f6c732c, 0x2d34, 0x6e6f, 0x70745f4252, 0x70742d6272, '', '', '', 0x3532353034343839, 0x6c6f626f616e616c797469637340676d61696c2e636f6d, 0x61646c6f626f6d3035643034, 0x55412d32363834373938372d31, 0x6e6f6972, 0x73717561726573, 0x393630, 0x333630, 0x66616c7365, 0x36, '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `email` text COLLATE utf8_bin,
  `mobile_phone` text COLLATE utf8_bin,
  `work_phone` text COLLATE utf8_bin,
  `home_phone` text COLLATE utf8_bin,
  `created_at` bigint(20) DEFAULT NULL,
  `password` text COLLATE utf8_bin,
  `notes` text COLLATE utf8_bin,
  `profile_photo` text COLLATE utf8_bin,
  `meta_mensal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` (`ROWID`, `name`, `email`, `mobile_phone`, `work_phone`, `home_phone`, `created_at`, `password`, `notes`, `profile_photo`, `meta_mensal`) VALUES
(1, 0x41646d696e6973747261646f72, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, '', '', '', 1349786013, 0x4c62696d626f4d303741313223, '', 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a303a22223b733a31373a226f726967696e616c5f66696c656e616d65223b733a303a22223b733a383a2266696c6573697a65223b693a303b7d, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact_permissions`
--

CREATE TABLE IF NOT EXISTS `contact_permissions` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_name` text COLLATE utf8_bin,
  `rule_name` text COLLATE utf8_bin,
  `contact_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_contact_ROWID` (`contact_ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `contact_permissions`
--

INSERT INTO `contact_permissions` (`ROWID`, `component_name`, `rule_name`, `contact_ROWID`) VALUES
(2, 0x636f6e7461637473, 0x61646d696e6973747261646f72, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_attachment_data`
--

CREATE TABLE IF NOT EXISTS `content_attachment_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `filename` text COLLATE utf8_bin,
  `storage_filename` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `rm_width` bigint(20) DEFAULT NULL,
  `rm_height` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_block_data`
--

CREATE TABLE IF NOT EXISTS `content_block_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `alignment` bigint(20) DEFAULT NULL,
  `content_section_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`),
  KEY `idx_content_section_ROWID` (`content_section_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_box_data`
--

CREATE TABLE IF NOT EXISTS `content_box_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `links` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `parent_section` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `height` bigint(20) DEFAULT NULL,
  `spacing` bigint(20) DEFAULT NULL,
  `footer_area` text COLLATE utf8_bin,
  `view` text COLLATE utf8_bin,
  `display_title` bigint(20) DEFAULT NULL,
  `display_links` bigint(20) DEFAULT NULL,
  `display_footer` bigint(20) DEFAULT NULL,
  `content_section_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`),
  KEY `idx_parent_section` (`parent_section`),
  KEY `idx_content_section_ROWID` (`content_section_ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `content_box_data`
--

INSERT INTO `content_box_data` (`ROWID`, `name`, `links`, `component_id`, `parent_section`, `width`, `height`, `spacing`, `footer_area`, `view`, `display_title`, `display_links`, `display_footer`, `content_section_ROWID`) VALUES
(1, 0x54c3ad74756c6f206461204361697861, 0x3c61207461726765743d225f706172656e742220687265663d2223223e4c696e6b2064612043616978613c2f613e, 212, 248, 320, 200, 5, 0x3c61207461726765743d225f706172656e742220687265663d2223223e4c696e6b20526f646170c3a93c2f613e, 0x63782d63616978612d70616472616f2d636f6d2d626f726461, 1, 1, 1, 250),
(2, 0x54c3ad74756c6f206461204361697861, 0x3c61207461726765743d225f706172656e742220687265663d2223223e4c696e6b2064612043616978613c2f613e, 214, 249, 300, 200, 5, 0x3c61207461726765743d225f706172656e742220687265663d2223223e4c696e6b20526f646170c3a93c2f613e, 0x63782d63616978612d70616472616f, 1, 1, 1, 251),
(3, 0x4d616973204c69646173, 0x3c61207461726765743d225f706172656e742220687265663d2223223e4c696e6b2064612043616978613c2f613e, 312, 379, 300, 0, 10, 0x3c61207461726765743d225f706172656e742220687265663d2223223e4c696e6b20526f646170c3a93c2f613e, 0x63782d63616978612d6d6169732d6c69646173, 1, 0, 0, 381);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_column_data`
--

CREATE TABLE IF NOT EXISTS `content_column_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`),
  KEY `idx_page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `content_column_data`
--

INSERT INTO `content_column_data` (`ROWID`, `component_id`, `page_id`) VALUES
(4, 195, 236),
(5, 210, 236),
(6, 225, 253),
(7, 232, 253),
(8, 243, 253),
(9, 290, 298),
(10, 296, 236),
(11, 300, 298);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_column_data_and_content_section_relations`
--

CREATE TABLE IF NOT EXISTS `content_column_data_and_content_section_relations` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `content_column_data_ROWID` bigint(20) DEFAULT NULL,
  `content_section_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_content_column_data_ROWID` (`content_column_data_ROWID`),
  KEY `idx_content_section_ROWID` (`content_section_ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `content_column_data_and_content_section_relations`
--

INSERT INTO `content_column_data_and_content_section_relations` (`ROWID`, `content_column_data_ROWID`, `content_section_ROWID`) VALUES
(7, 4, 240),
(8, 4, 241),
(9, 5, 248),
(10, 5, 249),
(11, 6, 257),
(12, 6, 258),
(13, 6, 259),
(14, 7, 260),
(15, 7, 261),
(16, 7, 262),
(17, 8, 263),
(18, 8, 264),
(19, 9, 372),
(20, 10, 378),
(21, 10, 379),
(22, 11, 380);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_eye_data`
--

CREATE TABLE IF NOT EXISTS `content_eye_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `parent_section` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `alignment` bigint(20) DEFAULT NULL,
  `phrase` text COLLATE utf8_bin,
  `source` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`),
  KEY `idx_parent_section` (`parent_section`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `content_eye_data`
--

INSERT INTO `content_eye_data` (`ROWID`, `name`, `component_id`, `parent_section`, `width`, `alignment`, `phrase`, `source`) VALUES
(1, '', 220, 236, 300, 0, 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720, 0x4e6f6d6520646f206175746f72);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_hr_data`
--

CREATE TABLE IF NOT EXISTS `content_hr_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `margin_top` bigint(20) DEFAULT NULL,
  `margin_bottom` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `content_hr_data`
--

INSERT INTO `content_hr_data` (`ROWID`, `component_id`, `margin_top`, `margin_bottom`) VALUES
(1, 262, 0, 0),
(2, 217, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_html_data`
--

CREATE TABLE IF NOT EXISTS `content_html_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `html` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `content_html_data`
--

INSERT INTO `content_html_data` (`ROWID`, `component_id`, `html`) VALUES
(1, 197, 0x3c6120687265663d2223223e613a2042696d626f6f2073696d706c6520616e6420706f77657266756c6c3c2f613e3c62723e0a3c6120636c6173733d22766973697465642220687265663d2223223e613a766973697465642042696d626f6f2073696d706c6520616e6420706f77657266756c6c3c2f613e3c62723e0a3c6120636c6173733d22686f7665722220687265663d2223223e613a686f7665722042696d626f6f2073696d706c6520616e6420706f77657266756c6c3c2f613e3c62723e),
(2, 199, 0x3c627574746f6e20636c6173733d226d62313022207374796c653d22646973706c61793a696e6c696e652d626c6f636b3b223e3c7370616e3e4578656d706c6f20613a3c2f7370616e3e3c2f627574746f6e3e3c62723e3c62723e0a3c627574746f6e20636c6173733d22686f766572206d62313022207374796c653d22646973706c61793a696e6c696e652d626c6f636b3b223e3c7370616e3e4578656d706c6f20613a686f7665723c2f7370616e3e3c2f627574746f6e3e3c62723e3c62723e0a3c627574746f6e20636c6173733d2261637469766522207374796c653d22646973706c61793a696e6c696e652d626c6f636b3b223e3c7370616e3e4578656d706c6f20613a6163746976653c2f7370616e3e3c2f627574746f6e3e);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_image_data`
--

CREATE TABLE IF NOT EXISTS `content_image_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_data` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `dont_allow_use` bigint(20) DEFAULT NULL,
  `zoom` bigint(20) DEFAULT NULL,
  `link_nova_aba` bigint(20) DEFAULT NULL,
  `margin_bottom` bigint(20) DEFAULT NULL,
  `show_inside_box` bigint(20) DEFAULT NULL,
  `alignment` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `open_url` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=34 ;

--
-- Extraindo dados da tabela `content_image_data`
--

INSERT INTO `content_image_data` (`ROWID`, `image_data`, `component_id`, `description`, `dont_allow_use`, `zoom`, `link_nova_aba`, `margin_bottom`, `show_inside_box`, `alignment`, `width`, `open_url`) VALUES
(20, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32302f32302f2f3530373435633631383034663938303037656631356363336338653633383336333037383136663461373835372e706e67223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31333a226578636c757369766f2e706e67223b733a383a2266696c6573697a65223b693a313733303b7d, 188, '', 0, 0, 0, 0, 0, 0, 240, ''),
(21, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32312f32312f2f3530373435633731383831353834313433356435346535666133613239393437396635346332363839363838372e706e67223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31333a2272656375727369766f2e706e67223b733a383a2266696c6573697a65223b693a313637313b7d, 189, '', 0, 0, 0, 0, 0, 0, 240, ''),
(22, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32322f32322f2f3531303638373233366262613937313264623131343735393862656161316162373139653938616539376538642e706e67223b733a31373a226f726967696e616c5f66696c656e616d65223b733a383a226c6f676f2e706e67223b733a383a2266696c6573697a65223b693a373433383b7d, 192, '', 0, 0, 0, 1, 0, 0, 240, 0x2f),
(23, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32332f32332f2f3531303763666432313536326431343332303963626637336564636433306536303065323335356331333733612e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a32313a226d61726761726964612d616d6172656c612e6a7067223b733a383a2266696c6573697a65223b693a3132383632333b7d, 246, '', 0, 0, 0, 0, 0, 1, 300, ''),
(24, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32342f32342f2f3531303764303733636562386630353731646130636662333036343935376264306362366238396337303162312e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31383a226372697374612d706c756d6f73612e6a7067223b733a383a2266696c6573697a65223b693a3335363436393b7d, 248, '', 0, 0, 0, 0, 0, 1, 300, ''),
(25, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32352f32352f2f3531303764316439386631633438336166613437343438306237396538653530663935396638663361646637642e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31363a22626f72626f6c6574696e68612e6a7067223b733a383a2266696c6573697a65223b693a39333638303b7d, 250, '', 0, 0, 0, 0, 0, 1, 300, ''),
(26, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32362f32362f2f3531303764333930363938643661656538653238663039373734343833646234343133653931356363373830342e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31393a22666c6f722d64652d617a616c6569612e6a7067223b733a383a2266696c6573697a65223b693a3136373037393b7d, 252, '', 0, 0, 0, 0, 0, 1, 300, ''),
(27, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32372f32372f2f3531303764353630346362623731383539386531316432633066393063333338373662663861643439626436322e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31383a227a696e69615f726f73615f6969692e6a7067223b733a383a2266696c6573697a65223b693a3138373634343b7d, 254, '', 0, 0, 0, 0, 0, 1, 300, ''),
(28, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32382f32382f2f3531303764363631346537653235636466646264386663323635326365356264353138323961633166383339392e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31313a2263616d656c69612e6a7067223b733a383a2266696c6573697a65223b693a3236373736383b7d, 256, '', 0, 0, 0, 0, 0, 1, 300, ''),
(29, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f32392f32392f2f3531303764366234343664356638636332626538323666666566646431636337396537353962663034663065382e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31333a22686f7274656e6369612e6a7067223b733a383a2266696c6573697a65223b693a3431363632363b7d, 258, '', 0, 0, 0, 0, 0, 1, 300, ''),
(30, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f33302f33302f2f3531303764373638303839313632656232316230646634366534626565616264343436653536363135643137322e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a383a22726f73612e6a7067223b733a383a2266696c6573697a65223b693a3134333434373b7d, 260, '', 0, 0, 0, 0, 0, 1, 300, ''),
(31, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f33312f33312f2f3531343038643231633738333664373136653362383561613661613962373935663933373933636365363138392e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31303a2274756c6970732e6a7067223b733a383a2266696c6573697a65223b693a3332383132333b7d, 320, '', 0, 0, 0, 1, 0, 0, 620, ''),
(33, 0x41424441544123613a333a7b733a31363a2273746f726167655f66696c656e616d65223b733a37303a222f6d656469612f696d616765732f33332f33332f2f3531343039323338663334613033653363663633313734336138656164376130613737333032643939323263352e6a7067223b733a31373a226f726967696e616c5f66696c656e616d65223b733a31303a2274756c6970732e6a7067223b733a383a2266696c6573697a65223b693a3332383132333b7d, 326, '', 0, 0, 0, 1, 0, 0, 410, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_image_gallery_data`
--

CREATE TABLE IF NOT EXISTS `content_image_gallery_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `parent_section` bigint(20) DEFAULT NULL,
  `max_width` bigint(20) DEFAULT NULL,
  `gallery_template` text COLLATE utf8_bin,
  `default_image` bigint(20) DEFAULT NULL,
  `water_mark` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_image_gallery_file`
--

CREATE TABLE IF NOT EXISTS `content_image_gallery_file` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `file` text COLLATE utf8_bin,
  `position` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8_bin,
  `link` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_node`
--

CREATE TABLE IF NOT EXISTS `content_node` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `lft` bigint(20) DEFAULT NULL,
  `rgt` bigint(20) DEFAULT NULL,
  `content_page_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_content_page_ROWID` (`content_page_ROWID`),
  KEY `idx_lft_rgt` (`lft`,`rgt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=54 ;

--
-- Extraindo dados da tabela `content_node`
--

INSERT INTO `content_node` (`ROWID`, `url`, `name`, `lft`, `rgt`, `content_page_ROWID`) VALUES
(1, 0x2f, 0x50c3a167696e6120496e696369616c, 1, 44, 1),
(37, 0x637573746f6d697a6163616f2d637373, 0x437573746f6d697a61c3a7c3a36f20435353, 10, 11, 47),
(38, 0x626c6f636f732d64696e616d69636f73, 0x426c6f636f732044696ec3a26d69636f73, 12, 13, 48),
(39, 0x6c69737461732d64696e616d69636173, 0x4c69737461732044696ec3a26d69636173, 14, 15, 57),
(40, 0x706167696e612d706572736f6e616c697a616461, 0x50c3a167696e6120506572736f6e616c697a616461, 16, 41, 58),
(41, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d31, 0x4974656d2031, 17, 22, 59),
(42, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d32, 0x4974656d2032, 23, 28, 60),
(43, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d33, 0x4974656d2033, 29, 34, 61),
(44, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d34, 0x4974656d2034, 35, 40, 62),
(45, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d342f6974656d2d342d31, 0x4974656d20342e31, 36, 37, 63),
(46, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d342f6974656d2d342d32, 0x4974656d20342e32, 38, 39, 64),
(47, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d332f6974656d2d332d31, 0x4974656d20332e31, 30, 31, 65),
(48, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d332f6974656d2d332d32, 0x4974656d20332e32, 32, 33, 66),
(49, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d322f6974656d2d322d31, 0x4974656d20322e31, 24, 25, 67),
(50, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d322f6974656d2d322d32, 0x4974656d20322e32, 26, 27, 68),
(51, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d312f6974656d2d312d31, 0x4974656d20312e31, 18, 19, 69),
(52, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d312f6974656d2d312d32, 0x4974656d20312e32, 20, 21, 70),
(53, 0x6578747261, 0x4578747261, 42, 43, 71);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_organizador_data`
--

CREATE TABLE IF NOT EXISTS `content_organizador_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `qnt` bigint(20) DEFAULT NULL,
  `paginate_results` bigint(20) DEFAULT NULL,
  `itens_per_page` bigint(20) DEFAULT NULL,
  `data_order` bigint(20) DEFAULT NULL,
  `view` text COLLATE utf8_bin,
  `archived_months` bigint(20) DEFAULT NULL,
  `tag_1` bigint(20) DEFAULT NULL,
  `tag_2` bigint(20) DEFAULT NULL,
  `tag_3` bigint(20) DEFAULT NULL,
  `tag_4` bigint(20) DEFAULT NULL,
  `tag_5` bigint(20) DEFAULT NULL,
  `tag_6` bigint(20) DEFAULT NULL,
  `tag_7` bigint(20) DEFAULT NULL,
  `tag_8` bigint(20) DEFAULT NULL,
  `tag_9` bigint(20) DEFAULT NULL,
  `tag_10` bigint(20) DEFAULT NULL,
  `tag_11` bigint(20) DEFAULT NULL,
  `tag_12` bigint(20) DEFAULT NULL,
  `tag_13` bigint(20) DEFAULT NULL,
  `tag_14` bigint(20) DEFAULT NULL,
  `tag_15` bigint(20) DEFAULT NULL,
  `tag_16` bigint(20) DEFAULT NULL,
  `excluded_tag_1` bigint(20) DEFAULT NULL,
  `excluded_tag_2` bigint(20) DEFAULT NULL,
  `excluded_tag_3` bigint(20) DEFAULT NULL,
  `excluded_tag_4` bigint(20) DEFAULT NULL,
  `generate_rss` bigint(20) DEFAULT NULL,
  `data_url` text COLLATE utf8_bin,
  `mostrar_titulo` bigint(20) DEFAULT NULL,
  `tamanho_titulo` text COLLATE utf8_bin,
  `mostrar_resumo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Extraindo dados da tabela `content_organizador_data`
--

INSERT INTO `content_organizador_data` (`ROWID`, `name`, `component_id`, `qnt`, `paginate_results`, `itens_per_page`, `data_order`, `view`, `archived_months`, `tag_1`, `tag_2`, `tag_3`, `tag_4`, `tag_5`, `tag_6`, `tag_7`, `tag_8`, `tag_9`, `tag_10`, `tag_11`, `tag_12`, `tag_13`, `tag_14`, `tag_15`, `tag_16`, `excluded_tag_1`, `excluded_tag_2`, `excluded_tag_3`, `excluded_tag_4`, `generate_rss`, `data_url`, `mostrar_titulo`, `tamanho_titulo`, `mostrar_resumo`) VALUES
(1, 0x546578746f20636f6d206461746120652074c3ad74756c6f, 226, 2, 0, 2, 0, 0x6e65772d64657374617175652d73696d706c65732d636f6d2d64617461, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 0),
(2, 0x546578746f20636f6d2063617465676f72696120652074c3ad74756c6f, 228, 2, 0, 2, 0, 0x6e65772d64657374617175652d73696d706c65732d636f6d2d63617465676f726961, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 0),
(3, 0x546578746f20636f6d206d61726361646f7220652074c3ad74756c6f, 229, 2, 0, 2, 0, 0x6e65772d64657374617175652d73696d706c65732d636f6d2d6d61726361646f72, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 0),
(4, 0x496d6167656d20566572746963616c, 233, 2, 0, 2, 0, 0x6e65772d64657374617175652d766572746963616c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(5, 0x496d6167656d20486f72697a6f6e74616c, 234, 2, 0, 2, 0, 0x6e65772d64657374617175652d686f72697a6f6e74616c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(6, 0x496d6167656d204d696e69202d20436f6d7061637461, 235, 2, 0, 2, 0, 0x6e65772d64657374617175652d717561647261646f2d63617465676f7269612d746974756c6f, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(7, 0x5363726f6c6c20486f72697a6f6e74616c, 237, 1000, 0, 20, 0, 0x6e65772d64657374617175652d7363726f6c6c2d686f72697a6f6e74616c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x626c6f636f732d64696e616d69636f73, 1, 0x6d6564696f, 1),
(8, 0x5363726f6c6c20566572746963616c, 240, 1000, 0, 20, 0, 0x6e65772d64657374617175652d7363726f6c6c2d766572746963616c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x626c6f636f732d64696e616d69636f73, 1, 0x6d6564696f, 1),
(10, 0x526f74617469766f2050616472c3a36f20566572746963616c, 244, 5, 0, 5, 0, 0x6e65772d64657374617175652d726f74617469766f2d766572746963616c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(11, 0x526f74617469766f2050616472c3a36f20486f72697a6f6e74616c, 245, 5, 0, 5, 0, 0x6e65772d64657374617175652d726f74617469766f2d686f72697a6f6e74616c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(12, 0x3120436f6c756e61, 264, 2, 0, 2, 0, 0x6e65772d6c697374612d67726164652d312d636f6c756e61, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x6c69737461732d64696e616d69636173, 1, 0x6772616e6465, 1),
(13, 0x3220436f6c756e6173, 267, 4, 0, 4, 0, 0x6e65772d6c697374612d67726164652d322d636f6c756e6173, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x6c69737461732d64696e616d69636173, 1, 0x6d6564696f, 1),
(14, 0x3320436f6c756e6173, 269, 6, 0, 6, 0, 0x6e65772d6c697374612d67726164652d332d636f6c756e6173, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x6c69737461732d64696e616d69636173, 1, 0x6d6564696f, 1),
(16, 0x3320436f6c756e61732046756c6c, 273, 6, 0, 6, 0, 0x6e65772d6c697374612d67726164652d332d636f6c756e61732d66756c6c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x6c69737461732d64696e616d69636173, 1, 0x6d6564696f, 1),
(17, 0x3420436f6c756e61732046756c6c, 275, 8, 0, 8, 0, 0x6e65772d6c697374612d67726164652d342d636f6c756e61732d66756c6c, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x6c69737461732d64696e616d69636173, 1, 0x6d6564696f, 1),
(18, 0x54c3ad74756c6f20646f204465737461717565, 289, 5, 0, 5, 0, 0x6e65772d64657374617175652d726f74617469766f2d7468756d62, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x6578747261, 0, 0x70657175656e6f, NULL),
(19, 0x426c6f67, 291, 2, 0, 2, 0, 0x6e65772d6c697374612d626c6f67, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6772616e6465, 1),
(20, 0x436f6d706163746120636f6d20486f7261, 301, 2, 0, 2, 0, 0x6e65772d6c697374612d636f6d70616374612d636f6d2d686f7261, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(21, 0x436f6d706163746120636f6d2044617461, 302, 2, 0, 2, 0, 0x6e65772d6c697374612d636f6d70616374612d636f6d2d64617461, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 1),
(22, 0x4d696e6920436f6d706163746120636f6d20486f7261, 305, 2, 0, 2, 0, 0x6e65772d6c697374612d6d696e692d636f6d70616374612d636f6d2d686f7261, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 0),
(23, 0x4d696e6920436f6d706163746120636f6d2044617461, 307, 2, 0, 2, 0, 0x6e65772d6c697374612d6d696e692d636f6d70616374612d636f6d2d64617461, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0x6d6564696f, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_padding_data`
--

CREATE TABLE IF NOT EXISTS `content_padding_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `padding` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=75 ;

--
-- Extraindo dados da tabela `content_padding_data`
--

INSERT INTO `content_padding_data` (`ROWID`, `component_id`, `padding`) VALUES
(53, 201, 0x3230),
(54, 202, 0x3230),
(55, 203, 0x3230),
(56, 208, 0x3230),
(57, 215, 0x3230),
(58, 218, 0x3230),
(59, 221, 0x3230),
(60, 230, 0x3230),
(61, 236, 0x3230),
(62, 239, 0x3230),
(63, 241, 0x3230),
(64, 265, 0x3430),
(65, 268, 0x3430),
(66, 270, 0x3430),
(67, 272, 0x3430),
(68, 274, 0x3430),
(69, 297, 0x3230),
(70, 303, 0x3230),
(71, 304, 0x3230),
(72, 306, 0x3230),
(73, 317, 0x3230);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_page`
--

CREATE TABLE IF NOT EXISTS `content_page` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `old_url` text COLLATE utf8_bin,
  `title` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin,
  `chapeu` text COLLATE utf8_bin,
  `dont_generate_url` bigint(20) DEFAULT NULL,
  `url_external` bigint(20) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `published_at` bigint(20) DEFAULT NULL,
  `view` text COLLATE utf8_bin,
  `indexed_text` text COLLATE utf8_bin,
  `author` text COLLATE utf8_bin,
  `waiting_aproval` bigint(20) DEFAULT NULL,
  `total_comments` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `keywords` text COLLATE utf8_bin,
  `display_author_name` bigint(20) DEFAULT NULL,
  `tag_1` bigint(20) DEFAULT NULL,
  `tag_2` bigint(20) DEFAULT NULL,
  `tag_3` bigint(20) DEFAULT NULL,
  `tag_4` bigint(20) DEFAULT NULL,
  `tag_5` bigint(20) DEFAULT NULL,
  `tag_6` bigint(20) DEFAULT NULL,
  `tag_7` bigint(20) DEFAULT NULL,
  `tag_8` bigint(20) DEFAULT NULL,
  `tag_9` bigint(20) DEFAULT NULL,
  `tag_10` bigint(20) DEFAULT NULL,
  `tag_11` bigint(20) DEFAULT NULL,
  `tag_12` bigint(20) DEFAULT NULL,
  `tag_13` bigint(20) DEFAULT NULL,
  `tag_14` bigint(20) DEFAULT NULL,
  `tag_15` bigint(20) DEFAULT NULL,
  `tag_16` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_published_at` (`published_at`),
  KEY `idx_created_at` (`created_at`),
  KEY `idx_waiting_aproval` (`waiting_aproval`),
  KEY `idx_pub_and_wait` (`published_at`,`waiting_aproval`),
  KEY `idx_url` (`url`(255)),
  KEY `idx_indexed_text` (`indexed_text`(255))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=72 ;

--
-- Extraindo dados da tabela `content_page`
--

INSERT INTO `content_page` (`ROWID`, `parent_id`, `old_url`, `title`, `url`, `chapeu`, `dont_generate_url`, `url_external`, `type`, `created_at`, `published_at`, `view`, `indexed_text`, `author`, `waiting_aproval`, `total_comments`, `description`, `keywords`, `display_author_name`, `tag_1`, `tag_2`, `tag_3`, `tag_4`, `tag_5`, `tag_6`, `tag_7`, `tag_8`, `tag_9`, `tag_10`, `tag_11`, `tag_12`, `tag_13`, `tag_14`, `tag_15`, `tag_16`) VALUES
(1, 1, '', 0x50c3a167696e6120496e696369616c, 0x2f, '', 1, 1, 0, 1349786016, 1349786040, 0x696e646578, 0x706167696e6120696e696369616c202030392f6f75747562726f2f323031322030383a3334, '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 37, '', 0x437573746f6d697a61c3a7c3a36f20435353, 0x637573746f6d697a6163616f2d637373, '', 1, 1, 0, 1359396791, 1359396840, 0x70616765, 0x637573746f6d697a6163616f2063737320637573746f6d697a6163616f20637373207474756c6f206831206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747565722061646970697363696e6720656c697420736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c7574706174207574207769736920656e696d206164206d696e696d2076656e69616d2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e736571756174207474756c6f206832206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747565722061646970697363696e6720656c697420736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c7574706174207574207769736920656e696d206164206d696e696d2076656e69616d2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e736571756174207474756c6f206833206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747565722061646970697363696e6720656c697420736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c7574706174207574207769736920656e696d206164206d696e696d2076656e69616d2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e736571756174207474756c6f206834206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747565722061646970697363696e6720656c697420736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c7574706174207574207769736920656e696d206164206d696e696d2076656e69616d2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e736571756174207474756c6f206835206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747565722061646970697363696e6720656c697420736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c7574706174207574207769736920656e696d206164206d696e696d2076656e69616d2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e736571756174207474756c6f206836206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747565722061646970697363696e6720656c697420736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c7574706174207574207769736920656e696d206164206d696e696d2076656e69616d2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742032382f6a616e6569726f2f323031332031343a3134, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 38, '', 0x426c6f636f732044696ec3a26d69636f73, 0x626c6f636f732d64696e616d69636f73, '', 1, 1, 0, 1359463566, 1359463920, 0x706167652d696e7465697261, 0x626c6f636f732064696e616d69636f7320626c6f636f732064696e616d69636f7320746578746f732073696d706c65736e656e68756d61207067696e612063616461737472616461206e657373612073656f206e656e68756d61207067696e612063616461737472616461206e657373612073656f206e656e68756d61207067696e612063616461737472616461206e657373612073656f2032392f6a616e6569726f2f323031332030383a3532, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, '', 0x4d61726761726964612d616d6172656c61202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f6d61726761726964612d616d6172656c61, 0x466c6f726573, 0, 0, 1, 1359466356, 1359466440, 0x70616765, 0x6d617267617269646120616d6172656c61206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c697420636f6d20616d6172656c6f20766973746f736f20617320666c6f7265732062726f74616d206e6f20766572616f2065206e61207072696d6176657261206c69737461732064696e616d69636173206d617267617269646120616d6172656c6120636f6d20616d6172656c6f20766973746f736f20617320666c6f7265732062726f74616d206e6f207665726f2065206e61207072696d6176657261206a206120666f6c686167656d206162756e64616e7465206f20616e6f20746f646f20646573646520717565206120706c616e74612073656a612063756c74697661646120656d20736f6c20706c656e6f20726573697374652062656d20616f2074656d706f207365636f206520676f737461206465206672696f206c65766520726571756572207265706c616e74696f20616e75616c20706f697320706572646520612062656c657a6120636f6d206f2074656d706f2032392f6a616e6569726f2f323031332030393a3334, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x436f6d20616d6172656c6f20766973746f736f2c20617320666c6f7265732062726f74616d206e6f20766572c3a36f2065206e61207072696d61766572612e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, '', 0x43726973746120706c756d6f7361202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f6372697374612d706c756d6f7361, 0x466c6f726573, 0, 0, 1, 1359466532, 1359466620, 0x70616765, 0x63726973746120706c756d6f7361206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c6974206f20636f6e6a756e746f206465206d696e69666c6f72657320666f726d6120696e666c6f72657363656e636961732063686569617320646520636f72206c69737461732064696e616d696361732063726973746120706c756d6f7361206f20636f6e6a756e746f206465206d696e69666c6f72657320666f726d6120696e666c6f726573636e636961732063686569617320646520636f7220656c617320706f64656d20736572207665726d656c68617320726f736173206272616e6361732065206d7569746173206f7574726173206174696e67656d20343020636d20646520616c74757261207175616e646f2063756c7469766164617320656d20736f6c20706c656e6f20636f6d20736f6c6f20667274696c20746f6c6572612062656d206f206672696f2065206f2074656d706f207365636f2032392f6a616e6569726f2f323031332030393a3337, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x4f20636f6e6a756e746f206465206d696e69666c6f72657320666f726d6120696e666c6f72657363c3aa6e636961732063686569617320646520636f722e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 0, '', 0x426f72626f6c6574696e6861202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f626f72626f6c6574696e6861, 0x466c6f726573, 0, 0, 1, 1359466658, 1359466980, 0x70616765, 0x626f72626f6c6574696e6861206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c6974206f726967696e6172696120646f206368696c65206f6e64652063726573636520656d20636f6e6469636f657320646520706f75636120756d6964616465206120626f72626f6c6574696e686120706f6465207365722063756c74697661646120656d2063616e746569726f73206a617264696e6569726173206f75207661736f73206c69737461732064696e616d6963617320626f72626f6c6574696e6861206f726967696e72696120646f206368696c65206f6e64652063726573636520656d20636f6e6469657320646520706f75636120756d6964616465206120626f72626f6c6574696e686120706f6465207365722063756c74697661646120656d2063616e746569726f73206a617264696e6569726173206f75207661736f7320617320666c6f726573207061726563656d206f7271756465617320652073757267656d206e61207072696d61766572612062656d2061646570746120616f2074656d706f207365636f206120706c616e7461206e6f20746f6c65726120656e6368617263616d656e746f20656e746f206e6f206465766520666963617220656d206c6f63616c206f6e6465206120636875766120616c63616e63652032392f6a616e6569726f2f323031332030393a3433, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x4f726967696ec3a172696120646f204368696c652c206f6e64652063726573636520656d20636f6e6469c3a7c3b5657320646520706f75636120756d69646164652c206120426f72626f6c6574696e686120706f6465207365722063756c74697661646120656d2063616e746569726f732c206a617264696e6569726173206f75207661736f732e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, '', 0x5ac3ad6e6961202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f7a696e6961, 0x466c6f726573, 0, 0, 1, 1359467009, 1359467880, 0x70616765, 0x7a696e6961206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c6974207661692062656d2074616e746f20656d20616c7461732074656d70657261747572617320636f6d6f20656d20636c696d6173206d61697320616d656e6f73206465736465207175652063756c746976616461206120736f6c20706c656e6f206c69737461732064696e616d69636173207a696e6961207661692062656d2074616e746f20656d20616c7461732074656d70657261747572617320636f6d6f20656d20636c696d6173206d61697320616d656e6f73206465736465207175652063756c746976616461206120736f6c20706c656e6f20617320666c6f72657320746d20646976657273617320636f72657320636f6d6f20726f736120616d6172656c6f2065206272616e636f206f752061696e6461206170617265636520656d20766572736573206c69737472616461732065206269636f6c6f72657320706f64652073657220706c616e746164612074616e746f20656d206a617264696e7320636f6d6f20656d20666c6f726569726173206f75207661736f732032392f6a616e6569726f2f323031332030393a3538, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x5661692062656d2074616e746f20656d20616c7461732074656d7065726174757261732c20636f6d6f20656d20636c696d6173206d61697320616d656e6f732c206465736465207175652063756c746976616461206120736f6c20706c656e6f2e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, '', 0x417a616c656961202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f617a616c656961, 0x466c6f726573, 0, 0, 1, 1359467267, 1359467400, 0x70616765, 0x617a616c656961206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c6974206172627573746f7320636f6d20666c6f726573206162756e64616e74657320617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f206c69737461732064696e616d6963617320617a616c656961206172627573746f7320636f6d20666c6f726573206162756e64616e74657320617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f20617320666c6f726573207375706f7274616d2062656d206f206672696f2065206f2074656d706f207365636f20756d6120637572696f736964616465206120617a616c656961206d7569746f207573616461207061726120626f6e736169206520617320706f64617320706f64656d2073657220666569746173206465706f697320646120666c6f72616f2032392f6a616e6569726f2f323031332030393a3530, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x4172627573746f7320636f6d20666c6f726573206162756e64616e7465732c20617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f2e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 0, '', 0x43616dc3a96c6961202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f63616d656c6961, 0x466c6f726573, 0, 0, 1, 1359468070, 1359468120, 0x70616765, 0x63616d656c6961206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c69742076696e646f20646f206f7269656e7465206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d62656d20706f73737569207661726965646164657320726f73656173206272616e6361732065206269636f6c6f726573206c69737461732064696e616d696361732063616d656c69612076696e646f20646f206f7269656e7465206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d626d20706f737375692076617269656461646573207273656173206272616e6361732065206269636f6c6f7265732063756c74697661646f20656d20706c656e6f20736f6c206174696e67652036206d20646520616c747572612032392f6a616e6569726f2f323031332031303a3032, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x56696e646f20646f206f7269656e74652c206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d62c3a96d20706f7373756920766172696564616465732072c3b3736561732c206272616e6361732065206269636f6c6f7265732e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 0, '', 0x486f7274c3aa6e736961202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f686f7274656e736961, 0x466c6f726573, 0, 0, 1, 1359468192, 1359468180, 0x70616765, 0x686f7274656e736961206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c697420636f6d20666c6f72657320636f6d70616374617320726f7365617320617a756973206f75206272616e63617320612065737065636965207365206164617074612062656d2061207669646120656d207661736f73206c69737461732064696e616d6963617320686f7274656e73696120636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d207669646120656d207661736f73207072656369736120656e74726574616e746f20646520736f6c6f206d69646f2065207269636f20656d206d6174726961206f72676e696361206368656761206120322035206d20646520616c747572612032392f6a616e6569726f2f323031332031303a3033, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x436f6d20666c6f72657320636f6d7061637461732072c3b3736561732c20617a756973206f75206272616e6361732c206120657370c3a9636965207365206164617074612062656d20c3a0207669646120656d207661736f732e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 0, '', 0x526f7361202d204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c6974, 0x6c69737461732d64696e616d696361732f726f7361, 0x466c6f726573, 0, 0, 1, 1359468375, 1359468360, 0x70616765, 0x726f7361206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73656374657475722061646970697363696e6720656c6974206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f732064652074657272612066657274696c20656d20636f6e6a756e746f73206f7520656d206d616369636f732069736f6c61646f73206c69737461732064696e616d6963617320726f7361206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d206d6163696f732069736f6c61646f7320737561732068617374657320636f6d20657370696e686f20746d206372657363696d656e746f20656e747265203120353020652032206d20646520616c747572612032392f6a616e6569726f2f323031332031303a3036, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, 0x4120726f736120646576652073657220706c616e7461646120656d2063616e746569726f732064652074657272612066c3a97274696c2c20656d20636f6e6a756e746f73206f7520656d206d616369c3a76f732069736f6c61646f732e, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 39, '', 0x4c69737461732044696ec3a26d69636173, 0x6c69737461732d64696e616d69636173, '', 1, 1, 0, 1359488402, 1359488640, 0x706167652d73696d706c6573, 0x6c69737461732064696e616d69636173206c69737461732064696e616d69636173203120636f6c756e6120666c6f72657320726f7361206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d206d6163696f732069736f6c61646f7320666c6f72657320686f72746e73696120636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d207669646120656d207661736f736e627370626c6f6720726f73612032392030312032303133207320313020303620706f722061646d696e6973747261646f7220666c6f726573206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d206d6163696f732069736f6c61646f73203020636f6d656e7472696f20636f6e74696e756172206c656e646f20686f72746e7369612032392030312032303133207320313020303320706f722061646d696e6973747261646f7220666c6f72657320636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d207669646120656d207661736f73203020636f6d656e7472696f20636f6e74696e756172206c656e646f6e6273703220636f6c756e617320666c6f72657320726f7361206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d206d6163696f732069736f6c61646f7320666c6f72657320686f72746e73696120636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d207669646120656d207661736f7320666c6f7265732063616d6c69612076696e646f20646f206f7269656e7465206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d626d20706f737375692076617269656461646573207273656173206272616e6361732065206269636f6c6f72657320666c6f726573207a6e6961207661692062656d2074616e746f20656d20616c7461732074656d70657261747572617320636f6d6f20656d20636c696d6173206d61697320616d656e6f73206465736465207175652063756c746976616461206120736f6c20706c656e6f6e6273703320636f6c756e617320666c6f72657320726f7361206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d20666c6f72657320686f72746e73696120636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d2020666c6f7265732063616d6c69612076696e646f20646f206f7269656e7465206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d626d20706f7373756920666c6f726573207a6e6961207661692062656d2074616e746f20656d20616c7461732074656d70657261747572617320636f6d6f20656d20636c696d6173206d61697320616d656e6f732064657364652071756520666c6f72657320617a616c656961206172627573746f7320636f6d20666c6f726573206162756e64616e74657320617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f20666c6f72657320626f72626f6c6574696e6861206f726967696e72696120646f206368696c65206f6e64652063726573636520656d20636f6e6469657320646520706f75636120756d696461646520616e6273703320636f6c756e61732066756c6c20666c6f72657320726f7361206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d206d6163696f732069736f6c61646f7320666c6f72657320686f72746e73696120636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d207669646120656d207661736f7320666c6f7265732063616d6c69612076696e646f20646f206f7269656e7465206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d626d20706f737375692076617269656461646573207273656173206272616e6361732065206269636f6c6f72657320666c6f726573207a6e6961207661692062656d2074616e746f20656d20616c7461732074656d70657261747572617320636f6d6f20656d20636c696d6173206d61697320616d656e6f73206465736465207175652063756c746976616461206120736f6c20706c656e6f20666c6f72657320617a616c656961206172627573746f7320636f6d20666c6f726573206162756e64616e74657320617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f20666c6f72657320626f72626f6c6574696e6861206f726967696e72696120646f206368696c65206f6e64652063726573636520656d20636f6e6469657320646520706f75636120756d6964616465206120626f72626f6c6574696e686120706f6465207365722063756c74697661646120656d2063616e746569726f736e6273703420636f6c756e61732066756c6c20666c6f72657320726f7361206120726f736120646576652073657220706c616e7461646120656d2063616e746569726f7320646520746572726120667274696c20656d20636f6e6a756e746f73206f7520656d20666c6f72657320686f72746e73696120636f6d20666c6f72657320636f6d70616374617320727365617320617a756973206f75206272616e636173206120657370636965207365206164617074612062656d2020666c6f7265732063616d6c69612076696e646f20646f206f7269656e7465206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d626d20706f7373756920666c6f726573207a6e6961207661692062656d2074616e746f20656d20616c7461732074656d70657261747572617320636f6d6f20656d20636c696d6173206d61697320616d656e6f732064657364652071756520666c6f72657320617a616c656961206172627573746f7320636f6d20666c6f726573206162756e64616e74657320617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f20666c6f72657320626f72626f6c6574696e6861206f726967696e72696120646f206368696c65206f6e64652063726573636520656d20636f6e6469657320646520706f75636120756d6964616465206120666c6f7265732063726973746120706c756d6f7361206f20636f6e6a756e746f206465206d696e69666c6f72657320666f726d6120696e666c6f726573636e636961732063686569617320646520636f7220666c6f726573206d617267617269646120616d6172656c6120636f6d20616d6172656c6f20766973746f736f20617320666c6f7265732062726f74616d206e6f207665726f2065206e61207072696d61766572612032392f6a616e6569726f2f323031332031353a3434, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 40, '', 0x50c3a167696e6120506572736f6e616c697a616461, 0x706167696e612d706572736f6e616c697a616461, '', 1, 1, 0, 1359544487, 1359544560, 0x70616765, 0x706167696e6120706572736f6e616c697a61646120706167696e6120706572736f6e616c697a61646120696d7072696d69722076617220616464746869735f636f6e66696720646174615f747261636b5f636c69636b6261636b20747275652033302f6a616e6569726f2f323031332030373a3136, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 41, '', 0x4974656d2031, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d31, '', 1, 1, 0, 1359544507, 1359544560, 0x70616765, 0x6974656d203120706167696e6120706572736f6e616c697a616461206974656d2031202033302f6a616e6569726f2f323031332030373a3136, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 42, '', 0x4974656d2032, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d32, '', 1, 1, 0, 1359544520, 1359544560, 0x70616765, 0x6974656d203220706167696e6120706572736f6e616c697a616461206974656d2032202033302f6a616e6569726f2f323031332030373a3136, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 43, '', 0x4974656d2033, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d33, '', 1, 1, 0, 1359544524, 1359544620, 0x70616765, 0x6974656d203320706167696e6120706572736f6e616c697a616461206974656d2033202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 44, '', 0x4974656d2034, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d34, '', 1, 1, 0, 1359544528, 1359544620, 0x70616765, 0x6974656d203420706167696e6120706572736f6e616c697a616461206974656d2034202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 45, '', 0x4974656d20342e31, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d342f6974656d2d342d31, '', 1, 1, 0, 1359544542, 1359544620, 0x70616765, 0x6974656d2034203120706167696e6120706572736f6e616c697a616461206974656d2034206974656d20342031202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 46, '', 0x4974656d20342e32, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d342f6974656d2d342d32, '', 1, 1, 0, 1359544547, 1359544620, 0x70616765, 0x6974656d2034203220706167696e6120706572736f6e616c697a616461206974656d2034206974656d20342032202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 47, '', 0x4974656d20332e31, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d332f6974656d2d332d31, '', 1, 1, 0, 1359544559, 1359544620, 0x70616765, 0x6974656d2033203120706167696e6120706572736f6e616c697a616461206974656d2033206974656d20332031202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 48, '', 0x4974656d20332e32, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d332f6974656d2d332d32, '', 1, 1, 0, 1359544565, 1359544620, 0x70616765, 0x6974656d2033203220706167696e6120706572736f6e616c697a616461206974656d2033206974656d20332032202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 49, '', 0x4974656d20322e31, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d322f6974656d2d322d31, '', 1, 1, 0, 1359544571, 1359544620, 0x70616765, 0x6974656d2032203120706167696e6120706572736f6e616c697a616461206974656d2032206974656d20322031202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 50, '', 0x4974656d20322e32, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d322f6974656d2d322d32, '', 1, 1, 0, 1359544576, 1359544620, 0x70616765, 0x6974656d2032203220706167696e6120706572736f6e616c697a616461206974656d2032206974656d20322032202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 51, '', 0x4974656d20312e31, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d312f6974656d2d312d31, '', 1, 1, 0, 1359544585, 1359544620, 0x70616765, 0x6974656d2031203120706167696e6120706572736f6e616c697a616461206974656d2031206974656d20312031202033302f6a616e6569726f2f323031332030373a3137, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 52, '', 0x4974656d20312e32, 0x706167696e612d706572736f6e616c697a6164612f6974656d2d312f6974656d2d312d32, '', 1, 1, 0, 1359544591, 1359544680, 0x70616765, 0x6974656d2031203220706167696e6120706572736f6e616c697a616461206974656d2031206974656d20312032202033302f6a616e6569726f2f323031332030373a3138, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 53, '', 0x4578747261, 0x6578747261, '', 1, 1, 0, 1359554133, 1359555300, 0x70616765, 0x6578747261206578747261202033302f6a616e6569726f2f323031332031303a3135, 0x7765626d61737465724062696d626f6f2e636f6d2e6272, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_related_data`
--

CREATE TABLE IF NOT EXISTS `content_related_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `titulo_caixa` text,
  `alignment` bigint(20) DEFAULT NULL,
  `relacionadas` text,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `content_related_data`
--

INSERT INTO `content_related_data` (`ROWID`, `component_id`, `titulo_caixa`, `alignment`, `relacionadas`) VALUES
(3, 315, 'Saiba Mais', 0, 'a:3:{i:0;a:2:{i:0;s:25:"/listas-dinamicas/camelia";i:1;s:9:"Cam%E9lia";}i:1;a:2:{i:0;s:23:"/listas-dinamicas/zinia";i:1;s:7:"Z%EDnia";}i:2;a:2:{i:0;s:25:"/listas-dinamicas/azaleia";i:1;s:7:"Azaleia";}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_search_data`
--

CREATE TABLE IF NOT EXISTS `content_search_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `content_search_data`
--

INSERT INTO `content_search_data` (`ROWID`, `component_id`) VALUES
(6, 295);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_section`
--

CREATE TABLE IF NOT EXISTS `content_section` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` bigint(20) DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `keywords` text COLLATE utf8_bin,
  `reference_id` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `height` bigint(20) DEFAULT NULL,
  `padding_left` text COLLATE utf8_bin,
  `padding_right` text COLLATE utf8_bin,
  `border_left` text COLLATE utf8_bin,
  `border_right` text COLLATE utf8_bin,
  `border_top` text COLLATE utf8_bin,
  `border_bottom` text COLLATE utf8_bin,
  `padding` text COLLATE utf8_bin,
  `color_border` text COLLATE utf8_bin,
  `color_background` text COLLATE utf8_bin,
  `pos_hor` text COLLATE utf8_bin,
  `pos_ver` text COLLATE utf8_bin,
  `dis_blur` text COLLATE utf8_bin,
  `tam_sombra` text COLLATE utf8_bin,
  `color_shadow` text COLLATE utf8_bin,
  `inset` text COLLATE utf8_bin,
  `color_font` text COLLATE utf8_bin,
  `radius_top_left` text COLLATE utf8_bin,
  `radius_top_right` text COLLATE utf8_bin,
  `radius_bottom_right` text COLLATE utf8_bin,
  `radius_bottom_left` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_reference_id` (`reference_id`),
  KEY `idx_name_and_ref` (`name`(255),`reference_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=382 ;

--
-- Extraindo dados da tabela `content_section`
--

INSERT INTO `content_section` (`ROWID`, `type`, `name`, `description`, `keywords`, `reference_id`, `width`, `height`, `padding_left`, `padding_right`, `border_left`, `border_right`, `border_top`, `border_bottom`, `padding`, `color_border`, `color_background`, `pos_hor`, `pos_ver`, `dis_blur`, `tam_sombra`, `color_shadow`, `inset`, `color_font`, `radius_top_left`, `radius_top_right`, `radius_bottom_right`, `radius_bottom_left`) VALUES
(1, 0, 0x636f6e74656e74, '', '', 1, 960, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 1, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 1, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 2, 0x6c6f676f, 0x4c6f676f6d61726361, '', -1, 240, 60, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 2, 0x66726173655f746f706f, 0x467261736520546f706f, '', -1, 350, 40, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 2, 0x726f64617065, 0x526f646170c3a9, '', -1, 960, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 0, '', '', '', 2, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 2, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 2, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 2, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 0, '', '', '', 3, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 0, '', '', '', 4, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 0, '', '', '', 5, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 0, '', '', '', 6, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 0, '', '', '', 7, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 0, '', '', '', 8, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 0, '', '', '', 9, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 0, '', '', '', 10, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 0, '', '', '', 11, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 0, '', '', '', 12, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 0, '', '', '', 13, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 0, '', '', '', 14, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 0, '', '', '', 15, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 0, '', '', '', 16, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 0, '', '', '', 17, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 0, '', '', '', 18, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 0, '', '', '', 19, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 0, '', '', '', 20, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 0, '', '', '', 21, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 0, '', '', '', 22, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 0, '', '', '', 23, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 0, '', '', '', 24, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 0, '', '', '', 25, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 0, '', '', '', 26, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 0, '', '', '', 27, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 0, '', '', '', 28, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 0, '', '', '', 29, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 0, '', '', '', 30, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 0, '', '', '', 31, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 0, '', '', '', 32, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 0, '', '', '', 33, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 0, '', '', '', 34, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 0, '', '', '', 35, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 3, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 3, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 3, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 4, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 4, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 4, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 5, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 5, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 5, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 6, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 6, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 6, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 7, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 7, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(77, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 7, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 8, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 8, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 8, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 9, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(84, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 9, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 9, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 10, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 10, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 10, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 11, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 11, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 11, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 12, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 12, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(99, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 12, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 13, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 13, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 13, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(107, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 14, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 14, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(109, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 14, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(111, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 15, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(112, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 15, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(113, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 15, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(115, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 16, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(116, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 16, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(117, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 16, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(119, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 17, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 17, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(121, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 17, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 18, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(124, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 18, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(125, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 18, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(127, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 19, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 19, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 19, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(131, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 20, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(132, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 20, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(133, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 20, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(135, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 21, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(136, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 21, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(137, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 21, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(139, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 22, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(140, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 22, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(141, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 22, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(143, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 23, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(144, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 23, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(145, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 23, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(146, 0, '', '', '', 36, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(148, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 24, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(149, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 24, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(150, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 24, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(152, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 25, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(153, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 25, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(154, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 25, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(156, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 36, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(157, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 36, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(158, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 36, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(160, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 26, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(161, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 26, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(162, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 26, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(164, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 27, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(165, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 27, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(166, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 27, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(168, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 28, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(169, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 28, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(170, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 28, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(172, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 30, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(173, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 30, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(174, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 30, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(176, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 31, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(177, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 31, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(178, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 31, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(180, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 32, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(181, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 32, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(182, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 32, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(184, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 33, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(185, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 33, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(186, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 33, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(188, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 34, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(189, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 34, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(190, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 34, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(192, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 35, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(193, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 35, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(194, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 35, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(196, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 37, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(197, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 37, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(198, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 37, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(200, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 38, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(201, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 38, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(202, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 38, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(204, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 39, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(205, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 39, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(206, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 39, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(208, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 40, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(209, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 40, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(210, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 40, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(212, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 41, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(213, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 41, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(214, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 41, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(216, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 42, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(217, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 42, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(218, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 42, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(220, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 43, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(221, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 43, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(222, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 43, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(224, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 44, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(225, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 44, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(226, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 44, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(228, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 45, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(229, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 45, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(230, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 45, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(232, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 46, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(233, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 46, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(234, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 46, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(235, 0, '', '', '', 47, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(236, 0, 0x636f6e74656e74, '', '', 47, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(237, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 47, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(238, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 47, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(239, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 47, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(240, 1, 0x65787465726e616c, 0x68697065726c696e6b73, '', 236, 300, 0, 0x30, 0x3430, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(241, 1, 0x65787465726e616c, 0x626f746f6573, '', 236, 300, 0, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(242, 1, 0x65787465726e616c, 0x54616231, '', 236, 620, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 1, 0x65787465726e616c, 0x54616232, '', 236, 620, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(244, 1, 0x65787465726e616c, 0x54616233, '', 236, 620, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(245, 1, 0x65787465726e616c, 0x54616231, '', 236, 410, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 1, 0x65787465726e616c, 0x54616232, '', 236, 410, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 1, 0x65787465726e616c, 0x54616233, '', 236, 410, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(248, 1, 0x65787465726e616c, 0x70616472616f20636f6d20626f726461, '', 236, 300, 0, 0x30, 0x3430, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(249, 1, 0x65787465726e616c, 0x70616472616f2073656d20626f726461, '', 236, 300, 0, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(250, 1, 0x65787465726e616c, 0x54c3ad74756c6f206461204361697861, '', 248, 310, 200, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 1, 0x65787465726e616c, 0x54c3ad74756c6f206461204361697861, '', 249, 290, 200, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 0, '', '', '', 48, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(253, 0, 0x636f6e74656e74, '', '', 48, 960, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(254, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 48, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 48, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(256, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 48, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 1, 0x65787465726e616c, 0x4461746120652054c3ad74756c6f, '', 253, 300, 0, 0x30, 0x3330, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(258, 1, 0x65787465726e616c, 0x43617465676f726961206520546974756c6f, '', 253, 300, 0, 0x30, 0x3330, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(259, 1, 0x65787465726e616c, 0x4d61726361646f7220652054c3ad74756c6f, '', 253, 300, 0, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(260, 1, 0x65787465726e616c, 0x566572746963616c, '', 253, 300, 0, 0x30, 0x3330, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(261, 1, 0x65787465726e616c, 0x486f72697a6f6e74616c, '', 253, 300, 0, 0x30, 0x3330, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(262, 1, 0x65787465726e616c, 0x4d696e69205175616472616461, '', 253, 300, 0, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(263, 1, 0x65787465726e616c, 0x50616472c3a36f, '', 253, 320, 0, 0x30, 0x3230, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(264, 1, 0x65787465726e616c, 0x486f72697a6f6e74616c, '', 253, 620, 0, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(265, 0, 0x636f6e74656e74, '', '', 49, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(266, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 49, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(267, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 49, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(268, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 49, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(269, 0, 0x636f6e74656e74, '', '', 50, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(270, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 50, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(271, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 50, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(272, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 50, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(273, 0, 0x636f6e74656e74, '', '', 51, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(274, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 51, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(275, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 51, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(276, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 51, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(277, 0, 0x636f6e74656e74, '', '', 52, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(278, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 52, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(279, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 52, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(280, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 52, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(281, 0, 0x636f6e74656e74, '', '', 53, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(282, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 53, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(283, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 53, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(284, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 53, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(285, 0, 0x636f6e74656e74, '', '', 54, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(286, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 54, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 54, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(288, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 54, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(289, 0, 0x636f6e74656e74, '', '', 55, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(290, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 55, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(291, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 55, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(292, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 55, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(293, 0, 0x636f6e74656e74, '', '', 56, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(294, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 56, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(295, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 56, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(296, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 56, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(297, 0, '', '', '', 57, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(298, 0, 0x636f6e74656e74, '', '', 57, 960, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(299, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 57, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(300, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 57, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(301, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 57, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(302, 0, '', '', '', 58, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 0, '', '', '', 59, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(304, 0, '', '', '', 60, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(305, 0, '', '', '', 61, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(306, 0, '', '', '', 62, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(307, 0, '', '', '', 63, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(308, 0, '', '', '', 64, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 0, '', '', '', 65, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 0, '', '', '', 66, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 0, '', '', '', 67, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(312, 0, '', '', '', 68, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(313, 0, '', '', '', 69, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(314, 0, '', '', '', 70, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(315, 0, 0x636f6e74656e74, '', '', 58, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 58, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(317, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 58, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(318, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 58, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(319, 0, 0x636f6e74656e74, '', '', 59, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(320, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 59, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(321, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 59, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(322, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 59, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(323, 0, 0x636f6e74656e74, '', '', 60, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 60, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(325, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 60, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(326, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 60, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(327, 0, 0x636f6e74656e74, '', '', 61, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(328, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 61, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 61, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(330, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 61, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(331, 0, 0x636f6e74656e74, '', '', 62, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(332, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 62, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(333, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 62, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 62, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 0, 0x636f6e74656e74, '', '', 63, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(336, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 63, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(337, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 63, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(338, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 63, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(339, 0, 0x636f6e74656e74, '', '', 64, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(340, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 64, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(341, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 64, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(342, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 64, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(343, 0, 0x636f6e74656e74, '', '', 65, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(344, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 65, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 65, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(346, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 65, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(347, 0, 0x636f6e74656e74, '', '', 66, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 66, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 66, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(350, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 66, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(351, 0, 0x636f6e74656e74, '', '', 67, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(352, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 67, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 67, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(354, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 67, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(355, 0, 0x636f6e74656e74, '', '', 68, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 68, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(357, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 68, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `content_section` (`ROWID`, `type`, `name`, `description`, `keywords`, `reference_id`, `width`, `height`, `padding_left`, `padding_right`, `border_left`, `border_right`, `border_top`, `border_bottom`, `padding`, `color_border`, `color_background`, `pos_hor`, `pos_ver`, `dis_blur`, `tam_sombra`, `color_shadow`, `inset`, `color_font`, `radius_top_left`, `radius_top_right`, `radius_bottom_right`, `radius_bottom_left`) VALUES
(358, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 68, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(359, 0, 0x636f6e74656e74, '', '', 69, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(360, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 69, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(361, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 69, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(362, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 69, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(363, 0, 0x636f6e74656e74, '', '', 70, 680, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(364, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 70, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(365, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 70, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(366, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 70, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(367, 0, '', '', '', 71, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(368, 0, 0x636f6e74656e74, '', '', 71, 640, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(369, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 71, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(370, 0, 0x736964656261725f61726561, 0x426c6f636f204c61746572616c, '', 71, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(371, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 71, 300, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(372, 1, 0x65787465726e616c, 0x426c6f67, '', 298, 640, 0, 0x30, 0x333230, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(373, 0, 0x636f6e74656e74, '', '', 72, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(374, 0, 0x7372615f62617272615f6c61746572616c, 0x426c6f636f204c61746572616c, '', 72, 240, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(375, 0, 0x7372615f68746d6c5f61726561, 0x48544d4c206f7520435353, '', 72, 0, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(376, 0, 0x6865616465725f6c696e6b73, 0x486561646572204c696e6b73, '', 1, 680, 40, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(377, 2, 0x627573636172, 0x427573636172, '', -1, 240, 35, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', ''),
(378, 1, 0x65787465726e616c, 0x43616978612072656c6163696f6e61646173, '', 236, 300, 0, 0x30, 0x3430, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(379, 1, 0x65787465726e616c, 0x4d616973204c69646173, '', 236, 300, 0, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(380, 1, 0x65787465726e616c, 0x54c3ad74756c6f, '', 298, 640, 0, 0x30, 0x333230, 0x30, 0x30, 0x30, 0x30, 0x30, 0x23303030, '', 0x30, 0x30, 0x30, 0x30, '', 0x30, '', 0x30, 0x30, 0x30, 0x30),
(381, 1, 0x65787465726e616c, 0x4d616973204c69646173, '', 379, 280, 0, 0x30, 0x30, 0x30, 0x30, '', '', '', 0x23303030, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_section_and_content_tab_data_relations`
--

CREATE TABLE IF NOT EXISTS `content_section_and_content_tab_data_relations` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `content_section_ROWID` bigint(20) DEFAULT NULL,
  `content_tab_data_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_content_section_ROWID` (`content_section_ROWID`),
  KEY `idx_content_tab_data_ROWID` (`content_tab_data_ROWID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `content_section_and_content_tab_data_relations`
--

INSERT INTO `content_section_and_content_tab_data_relations` (`ROWID`, `content_section_ROWID`, `content_tab_data_ROWID`) VALUES
(7, 242, 3),
(8, 243, 3),
(11, 245, 4),
(12, 246, 4),
(20, 244, 3),
(22, 247, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_section_component`
--

CREATE TABLE IF NOT EXISTS `content_section_component` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_bin,
  `position` bigint(20) DEFAULT NULL,
  `content_section_ROWID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_content_section_ROWID` (`content_section_ROWID`),
  KEY `idx_position` (`content_section_ROWID`,`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=328 ;

--
-- Extraindo dados da tabela `content_section_component`
--

INSERT INTO `content_section_component` (`ROWID`, `type`, `position`, `content_section_ROWID`) VALUES
(188, 0x73656374696f6e5f696d616765, 1, 140),
(189, 0x73656374696f6e5f696d616765, 1, 141),
(191, 0x74657874, 1, 5),
(192, 0x73656374696f6e5f696d616765, 1, 4),
(194, 0x74657874, 1, 236),
(195, 0x636f6c756d6e, 2, 236),
(196, 0x74657874, 1, 240),
(197, 0x68746d6c, 2, 240),
(198, 0x74657874, 1, 241),
(199, 0x68746d6c, 2, 241),
(200, 0x74657874, 5, 236),
(201, 0x70616464696e67, 3, 236),
(202, 0x70616464696e67, 4, 236),
(203, 0x70616464696e67, 6, 236),
(204, 0x74657874, 7, 236),
(205, 0x746162, 8, 236),
(206, 0x746162, 10, 236),
(207, 0x74657874, 9, 236),
(208, 0x70616464696e67, 11, 236),
(209, 0x74657874, 12, 236),
(210, 0x636f6c756d6e, 13, 236),
(211, 0x74657874, 1, 248),
(212, 0x626f78, 2, 248),
(213, 0x74657874, 1, 249),
(214, 0x626f78, 2, 249),
(215, 0x70616464696e67, 14, 236),
(216, 0x74657874, 17, 236),
(217, 0x6872, 19, 236),
(218, 0x70616464696e67, 18, 236),
(219, 0x74657874, 20, 236),
(220, 0x657965, 21, 236),
(221, 0x70616464696e67, 22, 236),
(222, 0x74657874, 23, 236),
(223, 0x636f6d6d656e7473, 24, 236),
(225, 0x636f6c756d6e, 2, 253),
(226, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 257),
(227, 0x74657874, 1, 253),
(228, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 258),
(229, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 259),
(230, 0x70616464696e67, 3, 253),
(231, 0x74657874, 4, 253),
(232, 0x636f6c756d6e, 5, 253),
(233, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 260),
(234, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 261),
(235, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 262),
(236, 0x70616464696e67, 6, 253),
(237, 0x73656374696f6e5f6f7267616e697a61646f72, 9, 253),
(238, 0x74657874, 7, 253),
(239, 0x70616464696e67, 10, 253),
(240, 0x73656374696f6e5f6f7267616e697a61646f72, 11, 253),
(241, 0x70616464696e67, 12, 253),
(243, 0x636f6c756d6e, 14, 253),
(244, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 263),
(245, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 264),
(246, 0x73656374696f6e5f696d616765, 1, 265),
(247, 0x74657874, 2, 265),
(248, 0x73656374696f6e5f696d616765, 1, 269),
(249, 0x74657874, 2, 269),
(250, 0x73656374696f6e5f696d616765, 1, 273),
(251, 0x74657874, 2, 273),
(252, 0x73656374696f6e5f696d616765, 1, 281),
(253, 0x74657874, 2, 281),
(254, 0x73656374696f6e5f696d616765, 1, 277),
(255, 0x74657874, 2, 277),
(256, 0x73656374696f6e5f696d616765, 1, 285),
(257, 0x74657874, 2, 285),
(258, 0x73656374696f6e5f696d616765, 1, 289),
(259, 0x74657874, 2, 289),
(260, 0x73656374696f6e5f696d616765, 1, 293),
(261, 0x74657874, 2, 293),
(262, 0x6872, 8, 253),
(264, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 298),
(265, 0x70616464696e67, 2, 298),
(267, 0x73656374696f6e5f6f7267616e697a61646f72, 5, 298),
(268, 0x70616464696e67, 6, 298),
(269, 0x73656374696f6e5f6f7267616e697a61646f72, 7, 298),
(270, 0x70616464696e67, 8, 298),
(272, 0x70616464696e67, 4, 298),
(273, 0x73656374696f6e5f6f7267616e697a61646f72, 9, 298),
(274, 0x70616464696e67, 10, 298),
(275, 0x73656374696f6e5f6f7267616e697a61646f72, 11, 298),
(286, 0x61646474686973, 2, 315),
(289, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 368),
(290, 0x636f6c756d6e, 3, 298),
(291, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 372),
(295, 0x736561726368, 1, 377),
(296, 0x636f6c756d6e, 15, 236),
(297, 0x70616464696e67, 16, 236),
(299, 0x74657874, 1, 378),
(300, 0x636f6c756d6e, 12, 298),
(301, 0x73656374696f6e5f6f7267616e697a61646f72, 1, 380),
(302, 0x73656374696f6e5f6f7267616e697a61646f72, 3, 380),
(303, 0x70616464696e67, 2, 380),
(304, 0x70616464696e67, 4, 380),
(305, 0x73656374696f6e5f6f7267616e697a61646f72, 5, 380),
(306, 0x70616464696e67, 6, 380),
(307, 0x73656374696f6e5f6f7267616e697a61646f72, 7, 380),
(308, 0x74657874, 1, 315),
(309, 0x74657874, 3, 315),
(312, 0x626f78, 3, 379),
(315, 0x73656374696f6e5f72656c61746564, 3, 378),
(316, 0x74657874, 1, 379),
(317, 0x70616464696e67, 2, 379),
(318, 0x74657874, 1, 1),
(319, 0x74657874, 1, 242),
(320, 0x73656374696f6e5f696d616765, 1, 243),
(321, 0x74657874, 1, 244),
(325, 0x74657874, 1, 245),
(326, 0x73656374696f6e5f696d616765, 1, 246),
(327, 0x74657874, 1, 247);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_tab_data`
--

CREATE TABLE IF NOT EXISTS `content_tab_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  `width` bigint(20) DEFAULT NULL,
  `tab_order` text COLLATE utf8_bin,
  `tab_type` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`),
  KEY `idx_page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `content_tab_data`
--

INSERT INTO `content_tab_data` (`ROWID`, `component_id`, `page_id`, `width`, `tab_order`, `tab_type`) VALUES
(3, 205, 236, 640, 0x3234322c3234332c323434, 0x7461625f64656661756c74),
(4, 206, 236, 640, 0x3234352c3234362c323437, 0x7461625f64656661756c745f766572746963616c);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_text_data`
--

CREATE TABLE IF NOT EXISTS `content_text_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `alignment` bigint(20) DEFAULT NULL,
  `margin_bottom` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=84 ;

--
-- Extraindo dados da tabela `content_text_data`
--

INSERT INTO `content_text_data` (`ROWID`, `component_id`, `text`, `alignment`, `margin_bottom`) VALUES
(45, 191, 0x4c6f72656d20697073756d20646f6c6f722073697420616d6574, 0, NULL),
(47, 194, 0x2354c3ad74756c6f2048310a0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e20200a0a232354c3ad74756c6f20483220200a0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e20200a0a23232354c3ad74756c6f20483320200a0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e20200a0a2323232354c3ad74756c6f2048340a0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e200a0a232323232354c3ad74756c6f2048350a0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e200a0a23232323232354c3ad74756c6f2048360a0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e20, 0, NULL),
(48, 196, 0x232348697065726c696e6b73, 0, NULL),
(49, 198, 0x2323426f74c3b56573, 0, NULL),
(50, 200, 0x2323546162656c610a0a7c436f6c756e6120317c436f6c756e6120327c436f6c756e6120337c436f6c756e6120347c0a7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c0a7c546578746f2041317c546578746f2041327c546578746f2041337c546578746f2041347c0a7c546578746f2042317c546578746f2042327c546578746f2042337c546578746f2042347c0a7c546578746f2043317c546578746f2043327c546578746f2043337c546578746f2043347c, 0, 0),
(51, 204, 0x232346657272616d656e746120546162730a0a2323232354616220486f72697a6f6e74616c, 0, NULL),
(52, 207, 0x2323232354616220566572746963616c, 0, NULL),
(53, 209, 0x232346657272616d656e7461204361697861, 0, NULL),
(54, 211, 0x2323232343616978612050616472c3a36f20636f6d20626f726461, 0, NULL),
(55, 213, 0x2323232343616978612050616472c3a36f2073656d20626f726461, 0, NULL),
(56, 216, 0x23234c696e686120736570617261646f7261, 0, NULL),
(57, 219, 0x232346657272616d656e7461204f6c686f206461204d6174c3a9726961, 0, NULL),
(58, 222, 0x232346657272616d656e746120436f6d656e74c3a172696f73, 0, NULL),
(60, 227, 0x2323546578746f732053696d706c6573, 0, NULL),
(61, 231, 0x2323496d6167656e73206669786173, 0, NULL),
(62, 238, 0x2323526f74617469766f73, 0, NULL),
(63, 247, 0x436f6d20616d6172656c6f20766973746f736f2c20617320666c6f7265732062726f74616d206e6f20766572c3a36f2065206e61207072696d61766572612e204ac3a1206120666f6c686167656d20c3a9206162756e64616e7465206f20616e6f20746f646f2c20646573646520717565206120706c616e74612073656a612063756c74697661646120656d20736f6c20706c656e6f2e20526573697374652062656d20616f2074656d706f207365636f206520676f737461206465206672696f206c6576652e20526571756572207265706c616e74696f20616e75616c2c20706f697320706572646520612062656c657a6120636f6d206f2074656d706f2e, 0, NULL),
(64, 249, 0x4f20636f6e6a756e746f206465206d696e69666c6f72657320666f726d6120696e666c6f72657363c3aa6e636961732063686569617320646520636f722e20456c617320706f64656d20736572207665726d656c6861732c20726f7361732c206272616e6361732065206d7569746173206f75747261732e204174696e67656d20343020636d20646520616c74757261207175616e646f2063756c7469766164617320656d20736f6c20706c656e6f2c20636f6d20736f6c6f2066c3a97274696c2e20546f6c6572612062656d206f206672696f2065206f2074656d706f207365636f2e, 0, NULL),
(65, 251, 0x4f726967696ec3a172696120646f204368696c652c206f6e64652063726573636520656d20636f6e6469c3a7c3b5657320646520706f75636120756d69646164652c206120426f72626f6c6574696e686120706f6465207365722063756c74697661646120656d2063616e746569726f732c206a617264696e6569726173206f75207661736f732e20417320666c6f726573207061726563656d206f727175c3ad6465617320652073757267656d206e61207072696d61766572612e2042656d2061646570746120616f2074656d706f207365636f2c206120706c616e7461206ec3a36f20746f6c65726120656e6368617263616d656e746f2c20656e74c3a36f206ec3a36f206465766520666963617220656d206c6f63616c206f6e6465206120636875766120616c63616e63652e, 0, NULL),
(66, 253, 0x4172627573746f7320636f6d20666c6f726573206162756e64616e7465732c20617320617a616c6569617320646576656d207365722063756c74697661646173206120736f6c20706c656e6f2e20417320666c6f726573207375706f7274616d2062656d206f206672696f2065206f2074656d706f207365636f2e20556d6120637572696f7369646164653a206120617a616c65696120c3a9206d7569746f207573616461207061726120626f6e736169206520617320706f64617320706f64656d2073657220666569746173206465706f697320646120666c6f7261c3a7c3a36f2e, 0, NULL),
(67, 255, 0x5661692062656d2074616e746f20656d20616c7461732074656d7065726174757261732c20636f6d6f20656d20636c696d6173206d61697320616d656e6f732c206465736465207175652063756c746976616461206120736f6c20706c656e6f2e20417320666c6f7265732074c3aa6d20646976657273617320636f7265732c20636f6d6f20726f73612c20616d6172656c6f2065206272616e636f3b206f752061696e64612c206170617265636520656d2076657273c3b56573206c69737472616461732065206269636f6c6f7265732e20506f64652073657220706c616e746164612074616e746f20656d206a617264696e732c20636f6d6f20656d20666c6f726569726173206f75207661736f732e, 0, NULL),
(68, 257, 0x56696e646f20646f206f7269656e74652c206f206172627573746f206f726967696e616c6d656e746520646520666c6f726573207665726d656c6861732074616d62c3a96d20706f7373756920766172696564616465732072c3b3736561732c206272616e6361732065206269636f6c6f7265732e2043756c74697661646f20656d20706c656e6f20736f6c2c206174696e67652036206d20646520616c74757261, 0, NULL),
(69, 259, 0x436f6d20666c6f72657320636f6d7061637461732072c3b3736561732c20617a756973206f75206272616e6361732c206120657370c3a9636965207365206164617074612062656d20c3a0207669646120656d207661736f732e20507265636973612c20656e74726574616e746f2c20646520736f6c6f20c3ba6d69646f2065207269636f20656d206d6174c3a9726961206f7267c3a26e6963612e204368656761206120322c35206d20646520616c7475726120, 0, NULL),
(70, 261, 0x6120726f736120646576652073657220706c616e7461646120656d2063616e746569726f732064652074657272612066c3a97274696c2c20656d20636f6e6a756e746f73206f7520656d206d616369c3a76f732069736f6c61646f732e20737561732068617374657320636f6d20657370696e686f2074c3aa6d206372657363696d656e746f20656e74726520312c353020652032206d20646520616c74757261, 0, NULL),
(73, 299, 0x2323234361697861202252656c6163696f6e6164617322, 0, NULL),
(74, 308, 0x232323232323372f30372f32303131203037683439202d20417475616c697a61646f20656d2030372f30372f323031312030376834390a23234c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637420696e207465747565722061646970697363696e6720656c697420736564206469616d20697073756e0a23232323234c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736563207465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79, 0, NULL),
(75, 309, 0x506f723a2046756c616e6f2064652074616c, 0, NULL),
(77, 316, 0x232323436169786120224d616973204c6964617322, 0, NULL),
(78, 318, 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e756c6c61206575207072657469756d2065726f732e20446f6e656320736564206f64696f206e756c6c612c20616320666163696c697369732065726f732e2053757370656e646973736520736f6c6c696369747564696e207361676974746973206d61676e612e20436c61737320617074656e742074616369746920736f63696f737175206164206c69746f726120746f727175656e742070657220636f6e75626961206e6f737472612c2070657220696e636570746f732068696d656e61656f732e2053757370656e646973736520706f74656e74692e2046757363652072757472756d2066617563696275732070757275732071756973207363656c657269737175652e2053656420706f7375657265206d616c657375616461206c65637475732c20617420747269737469717565206e69736c2073656d7065722076656c2e2051756973717565206575206475692069642065726f7320656765737461732066617563696275732075742076656c206573742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2046757363652071756973206c696265726f206e65632074757270697320617563746f72206d616c6573756164612e205072616573656e7420717569732066656c6973206567657420697073756d206d61747469732074656d7075732065742065752075726e612e2053757370656e64697373652074656d706f722064617069627573206e756c6c6120736564206c6163696e69612e20446f6e6563206d6f6c6c6973206c6163757320696163756c6973206572617420696163756c697320657569736d6f642074656d706f72206c6967756c612076656e656e617469732e0a0a4e756c6c616d2065752066656c6973206c6967756c612e20437572616269747572206c6163696e696120666175636962757320666575676961742e2053656420766974616520616e74652061206a7573746f2074656d70757320636f6e64696d656e74756d2e20446f6e656320616c697175616d2066656c6973206163207175616d20656c656d656e74756d207661726975732067726176696461206e69736920766f6c75747061742e204372617320617567756520656e696d2c2076617269757320616320706c61636572617420717569732c20766573746962756c756d206574206c696265726f2e204e756c6c61206964206d6175726973206174206c6f72656d206f726e6172652070656c6c656e74657371756520696e20656765742072697375732e204e756c6c616d206e6f6e20747572706973206e657175652e20446f6e6563207669746165206c61637573207365642061756775652067726176696461207363656c65726973717565206174207175697320646f6c6f722e204e756e63206e656320616c697175616d206e6962682e204d6175726973206575206f64696f20696e206f72636920736f6c6c696369747564696e207665686963756c6120612076697665727261206d692e20446f6e656320616320657374206e6f6e206c656374757320766976657272612072757472756d206575207175697320656e696d2e20436c61737320617074656e742074616369746920736f63696f737175206164206c69746f726120746f727175656e742070657220636f6e75626961206e6f737472612c2070657220696e636570746f732068696d656e61656f732e20446f6e656320756c7472696369657320636f6e67756520636f6e73656374657475722e20416c697175616d20616320616363756d73616e206c616375732e20437572616269747572206672696e67696c6c612c206e657175652076697461652074726973746971756520766976657272612c207175616d2075726e61207068617265747261206d657475732c2065676574207363656c65726973717565206469616d206c65637475732076656c206e6962682e0a0a53656420656765737461732c2074656c6c75732065752072686f6e63757320706f7274612c206c696265726f206572617420756c6c616d636f72706572206c65637475732c207574206c616f72656574206c656f20617567756520696420656c69742e204d617572697320696e206c6f72656d206d61757269732e20566573746962756c756d207363656c657269737175652065726f732071756973206c61637573206665726d656e74756d2074696e636964756e742e204e756c6c6120636f6e736563746574757220697073756d20766f6c7574706174206d69206d617474697320616363756d73616e206f726e617265206e69736c206665726d656e74756d2e2053656420757420616e74652073697420616d65742075726e6120636f6e7365637465747572206d6f6c6c6973207363656c657269737175652065676574206c65637475732e20517569737175652076656c206f726369206964206c696265726f20636f6e7365637465747572206772617669646120736564207669746165206c696265726f2e2043757261626974757220637572737573206d6f6c6573746965206f726369206574207665686963756c612e2050686173656c6c757320636f6e76616c6c6973206f64696f206e6f6e2073656d207661726975732073656d7065722e0a0a496e20706f7274612c206e65717565206e656320636f6e73657175617420677261766964612c20616e746520746f72746f722068656e6472657269742066656c69732c206d616c65737561646120636f6e64696d656e74756d2073617069656e206f7263692061632075726e612e20496e7465676572206575206c61637573206d616c65737561646120746f72746f72207665686963756c61207363656c657269737175652e2046757363652061646970697363696e6720697073756d206e6f6e206c6563747573207472697374697175652074696e636964756e742e20566573746962756c756d206c6163696e6961206661756369627573206d61676e612076656c20616c697175616d2e20446f6e6563206575206d6175726973206e6f6e206d617572697320656c656966656e6420646170696275732e2046757363652071756973206c696265726f2061206d61676e6120636f6d6d6f646f20696163756c697320636f6e76616c6c697320766f6c7574706174206d692e204475697320706c616365726174206d6920766976657272612073617069656e2073757363697069742064696374756d2e204d616563656e6173207175697320656c69742065742073656d2072686f6e63757320656c656d656e74756d2e20446f6e656320636f6e6775652c206d6920617420666175636962757320636f6e6775652c2066656c69732072697375732074656d70757320657261742c20626962656e64756d20616c697175616d206572617420697073756d2061206c696265726f2e204e756c6c616d2074696e636964756e74206e65717565206174207175616d2076656e656e617469732065742070656c6c656e746573717565206469616d207665686963756c612e204e756e63207075727573206e69736c2c2073656d7065722076656c206c75637475732061632c206469676e697373696d2069642065726f732e2046757363652076656c206573742075726e612e20467573636520656c656d656e74756d20706f737565726520656765737461732e204d6f7262692061206c656f207574206c6967756c61206461706962757320766f6c75747061742e0a0a50726f696e2065726f732073656d2c20656c656966656e6420657420706f73756572652076697461652c207363656c657269737175652076656c206a7573746f2e20457469616d20636f6e67756520636f6d6d6f646f20696163756c69732e20437572616269747572207363656c65726973717565207669766572726120656765737461732e204e756c6c616d206c756374757320736f64616c657320656765737461732e20446f6e65632076656e656e617469732061646970697363696e672068656e6472657269742e2043726173206e756c6c61206f7263692c20617563746f722076656c206f726e6172652069642c207363656c6572697371756520756c74726963696573206e756c6c612e20416c697175616d207175697320656c69742061206f72636920766976657272612076656e656e617469732e2051756973717565207365642073656d20656765742061756775652061646970697363696e672070656c6c656e746573717565207365642061206a7573746f2e20416c697175616d2061742066656c6973206e6f6e206e696268206772617669646120636f6e736563746574757220636f6e76616c6c69732076656c206c65637475732e2053757370656e6469737365206120656c656966656e6420697073756d2e2050656c6c656e746573717565206375727375732c206c6f72656d206567657420656c656966656e642073656d7065722c207075727573206d61737361207669766572726120746f72746f722c20706f737565726520736f64616c6573206c696265726f20657374207175697320746f72746f722e20496e20696d7065726469657420617263752068656e647265726974206e756e63207363656c65726973717565206d616c6573756164612e0a0a5574206c696265726f206573742c20677261766964612076697461652066617563696275732065752c2073656d7065722069642065726f732e204e756c6c6120696e2076656c69742072697375732c2076656c20706f72747469746f722070757275732e2053757370656e646973736520656c656966656e64206c61637573206c616f72656574206e69736920696163756c697320766974616520636f6e677565206c656f2066617563696275732e2050726f696e20617563746f72207175616d20717569732066656c6973206375727375732070686172657472612e204e756c6c616d20696e20646170696275732070757275732e2050656c6c656e7465737175652073697420616d6574206172637520617263752e20457469616d2073656420747572706973206e6f6e206c696265726f20616c6971756574206f726e6172652e2053757370656e646973736520657569736d6f6420636f6e67756520696d706572646965742e20566573746962756c756d2076656c206c6967756c6120616320656e696d20636f6e6775652074656d706f722e2051756973717565206469676e697373696d20756c74726963657320617563746f722e205072616573656e74206c656f20656c69742c207361676974746973206575206d616c6573756164612076656c2c2070656c6c656e74657371756520736564206f7263692e2050656c6c656e746573717565206861626974616e74206d6f726269207472697374697175652073656e6563747573206574206e65747573206574206d616c6573756164612066616d65732061632074757270697320656765737461732e20457469616d206c756374757320636f6e76616c6c697320736f64616c65732e2041656e65616e206e6973692074656c6c75732c2070756c76696e617220766573746962756c756d20616c697175616d2076656c2c2076756c7075746174652076656c206d657475732e0a0a5365642061646970697363696e67206469616d206c6163696e696120647569207068617265747261206d6f6c65737469652e204d6f726269206e6563206c6f626f72746973206d61757269732e20437261732061206e756c6c61206575206573742070656c6c656e7465737175652073656d7065722e205072616573656e742072757472756d206d6174746973206e6973692c207175697320706f727461206172637520706c6163657261742076697461652e204e756c6c612076656c2061726375207574207175616d20766f6c75747061742076756c7075746174652e20566573746962756c756d20706f7274612075726e61206e65632061726375206c756374757320616363756d73616e2e20437572616269747572206e6f6e20656e696d2065726f732e2050726f696e2073617069656e206e6973692c20696163756c697320657420616c697175616d2073697420616d65742c2063757273757320656765742070757275732e204d6f72626920706c6163657261742c207075727573206f726e61726520636f6e64696d656e74756d2061646970697363696e672c206c696265726f20616e7465206469676e697373696d207475727069732c20766974616520626c616e646974206c6563747573206d6920657520656c69742e2050726f696e206e657175652065726f732c206c6f626f7274697320766974616520706861726574726120706f7274612c207665686963756c612076656c20656c69742e204e756e632074696e636964756e742076756c707574617465206e6571756520657520696e74657264756d2e205574206375727375732c206d6574757320616320636f6e7365717561742072686f6e6375732c206c6f72656d20656e696d20616c69717565742070757275732c206e65632070686172657472612074656c6c75732066656c6973206575207475727069732e205574207068617265747261206172637520766974616520646f6c6f722068656e64726572697420736f6c6c696369747564696e2e2041656e65616e20647569207175616d2c207072657469756d207574206f726e617265206e65632c20656c656966656e6420757420746f72746f722e0a0a44756973206e6f6e20657374206d617373612e20467573636520756c7472696369657320697073756d207574206c65637475732064696374756d206d6f6c6c69732e20566573746962756c756d20616e746520697073756d207072696d697320696e206661756369627573206f726369206c756374757320657420756c74726963657320706f737565726520637562696c69612043757261653b20496e7465676572206e656320656c656966656e64206d617373612e2053757370656e6469737365206e69736c206573742c2073656d706572206120626962656e64756d2061742c2064696374756d206575206c656f2e204d616563656e61732070757275732075726e612c20696e74657264756d20696e206665756769617420696e2c206c6f626f72746973206567657420697073756d2e20416c697175616d2074656d7075732064696374756d20766f6c75747061742e204d616563656e6173206f726e617265206d61747469732076656c69742c20766974616520657569736d6f64206d617373612067726176696461206e6f6e2e204e756e63206e6f6e206e69626820657520656e696d2074696e636964756e74206d6174746973206174206e6f6e206e756e632e2053757370656e64697373652076756c707574617465206d6f6c65737469652075726e612c206e656320766f6c757470617420656c69742063757273757320612e204475697320636f6d6d6f646f20636f6e73656374657475722070656c6c656e7465737175652e204e616d20717569732076617269757320616e74652e204d6f726269206574206c6f72656d206e6f6e207475727069732070756c76696e617220636f6e76616c6c69732061632073697420616d65742066656c69732e0a0a4e756c6c616d207072657469756d207175616d206574206d692073656d70657220766976657272612e20496e7465676572206c6f72656d206e6962682c20646170696275732076656c20696d7065726469657420612c2070756c76696e617220616320746f72746f722e20457469616d2076656c207175616d2073697420616d657420656e696d20636f6e67756520696163756c6973206567657420706f72746120746f72746f722e20446f6e656320696e74657264756d206f64696f206e6f6e206c6f72656d2072757472756d206375727375732e20496e2065676574206f726369206e6f6e206c6967756c61206567657374617320616c697175616d2e20457469616d2073617069656e207175616d2c20616c697175616d2065676574206d6f6c6c6973206e65632c20617563746f72206174206e6973692e2053757370656e646973736520706f74656e74692e204e756e6320696420766172697573207175616d2e20457469616d2065676574206c656f20657261742e20496e206861632068616269746173736520706c617465612064696374756d73742e2050726f696e20626962656e64756d206c6967756c61206574207075727573207072657469756d2074696e636964756e742e2051756973717565206575206469616d2061756775652c20696420626c616e646974206c616375732e0a0a457469616d2066617563696275732c206c61637573206e6f6e2076756c70757461746520636f6d6d6f646f2c206e657175652073617069656e206d6174746973206d617373612c2076656c206d616c657375616461206f726369206c6967756c612073697420616d6574206e756c6c612e2053757370656e64697373652061632073617069656e2073656420746f72746f7220616363756d73616e20636f6e73656374657475722e20447569732076656c20756c747269636573206d692e2050656c6c656e7465737175652065726174206c65637475732c207375736369706974206e6f6e20636f6e76616c6c69732075742c206d6f6c6c69732061206c65637475732e2041656e65616e20636f6e7365637465747572207075727573206e6563206d692068656e647265726974206d6f6c6573746965207365642061206a7573746f2e20457469616d2073656420696d70657264696574206d617373612e20536564206d6174746973206c7563747573206c656374757320736564206c75637475732e20496e206375727375732c20657261742061742073656d70657220616c69717565742c20616e7465206f726369206c6163696e696120656e696d2c20757420736f6c6c696369747564696e206f72636920616e74652073697420616d657420617263752e20566573746962756c756d20616e746520697073756d207072696d697320696e206661756369627573206f726369206c756374757320657420756c74726963657320706f737565726520637562696c69612043757261653b204d617572697320656765737461732074656c6c75732073697420616d65742065726f7320706f72746120617420696e74657264756d20656e696d2076656e656e617469732e204475697320657374206a7573746f2c2076656e656e617469732076656c20736f64616c657320612c2061646970697363696e6720717569732076656c69742e20446f6e65632072686f6e6375732c206469616d2076656c207068617265747261206c6163696e69612c206c656f206c656f20706f72747469746f72206f64696f2c20696420666175636962757320647569206d6920757420617263752e2053656420737573636970697420636f6e736563746574757220706f7274612e20416c697175616d206e6f6e207175616d2076656c69742e, 3, 0),
(79, 319, 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e, 0, 1),
(80, 321, 0x2323546162656c610a0a7c436f6c756e6120317c436f6c756e6120327c436f6c756e6120337c436f6c756e6120347c0a7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c0a7c546578746f2041317c546578746f2041327c546578746f2041337c546578746f2041347c0a7c546578746f2042317c546578746f2042327c546578746f2042337c546578746f2042347c0a7c546578746f2043317c546578746f2043327c546578746f2043337c546578746f2043347c, 0, 1),
(82, 325, 0x4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e, 0, 1),
(83, 327, 0x2323546162656c610a0a7c436f6c756e6120317c436f6c756e6120327c436f6c756e6120337c436f6c756e6120347c0a7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c2d2d2d2d2d2d2d2d7c0a7c546578746f2041317c546578746f2041327c546578746f2041337c546578746f2041347c0a7c546578746f2042317c546578746f2042327c546578746f2042337c546578746f2042347c0a7c546578746f2043317c546578746f2043327c546578746f2043337c546578746f2043347c, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_topstories_data`
--

CREATE TABLE IF NOT EXISTS `content_topstories_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_id` bigint(20) DEFAULT NULL,
  `qtd` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `content_youtube_data`
--

CREATE TABLE IF NOT EXISTS `content_youtube_data` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8_bin,
  `component_id` bigint(20) DEFAULT NULL,
  `include_related` bigint(20) DEFAULT NULL,
  `show_border` bigint(20) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `email` text COLLATE utf8_bin,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina_inicial`
--

CREATE TABLE IF NOT EXISTS `pagina_inicial` (
  `content_node_ROWID` bigint(20) NOT NULL,
  `content_page_ROWID` bigint(20) NOT NULL,
  KEY `idx_node` (`content_node_ROWID`),
  KEY `idx_page` (`content_page_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagina_inicial`
--

INSERT INTO `pagina_inicial` (`content_node_ROWID`, `content_page_ROWID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_bin,
  `priority` bigint(20) DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `active` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ROWID`),
  KEY `idx_name` (`name`(255))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tag`
--

INSERT INTO `tag` (`ROWID`, `name`, `priority`, `url`, `active`) VALUES
(1, 0x6c6f72656d2d697073756d, 1, 0x6c69737461732d64696e616d69636173, 1);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `pagina_inicial`
--
ALTER TABLE `pagina_inicial`
  ADD CONSTRAINT `fk_node` FOREIGN KEY (`content_node_ROWID`) REFERENCES `content_node` (`ROWID`),
  ADD CONSTRAINT `fk_page` FOREIGN KEY (`content_page_ROWID`) REFERENCES `content_page` (`ROWID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
