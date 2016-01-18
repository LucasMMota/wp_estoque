<?php
/** 
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'wp_estoque');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'eWh6vQbJi%#0UtcTfac@a>c%.<W;s!8DA`~){%c!1 flPY-tU.bjFp:?I)nr;fAY');
define('SECURE_AUTH_KEY',  'SxpnZx_p~3VW`@ J_j}>;Y3p8QUH7?7)D8>.X^q?[PPg(PT!lUCC*FQ41hs9+i0x');
define('LOGGED_IN_KEY',    'zk{it9H6cadkRE F;VoV6}9bpYf|hOhh{,$,#w&cq`A1US02j]>wbgPS4J&B<hb7');
define('NONCE_KEY',        '0A~<p&BE+qhB5!W/k;90<&--7@e;S-z(Eu$Dwg3#_` jS<9?>^m6!FC1Y>Fu=mNt');
define('AUTH_SALT',        'vLFW,spFh}UyQoi>J.x;kAL/KKz@>t-,QyKNk-1u]9S6#O*`^fqfic,{Ucat:PGD');
define('SECURE_AUTH_SALT', '|MJ?2[d`X&>r/{F-d2Dy)B7d>J7spK)yIqWa?`^R 28ALiu}7SwkG8)v,cMdyvcM');
define('LOGGED_IN_SALT',   's~KNz]$xx.aaX7;+.x7f#[cP_:Rsy9Ze?1:LRJH+#q136C_a&$pULN7]<A=717%S');
define('NONCE_SALT',       ']/:Wcae1|p}Ny5d[gRFF=BySTCA)VIP%$B62Sx1f$i6k%2s&fbF@g:%L?JE0A4[X');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';


/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');
