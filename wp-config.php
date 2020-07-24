<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'projeto' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '%TF.]Uq$f+0DE=~z~7w-a#xRXUQ_grsRH}T*IsH^eaa4>:y7k|;wK<J)4E/CTXzG' );
define( 'SECURE_AUTH_KEY',  'h{8yD@3D]iCmNIl@vmOpR@JwoSw+XiRZRK dy@CY#!#!``O;Ng;9)akY0-ZmY[Y<' );
define( 'LOGGED_IN_KEY',    'PNQD@0MKpEv)J98#pV|t@5FbvUO`-zt!gdz9?nWbc 0lot~:6:[rU-[td>ZY-UMj' );
define( 'NONCE_KEY',        'M{33Nhc%8f %5fAX0q|9jZ7Qb^KRm_S^svP2aVXz*Y[x&7 d6>EY/wi;}w[j~*AW' );
define( 'AUTH_SALT',        'KtK|EqSK,jgJedwo]Sb3/qSA8]E^iE a$PVig*AnQ!HhnyD#v7J4%JVXicj.4U5h' );
define( 'SECURE_AUTH_SALT', 'kG7R*BkX^e8ZwLV^lmA)WCGI3U@D7DiSRsK=RLW+uQDmYe<l&V+cxQ$-VF[>-.cB' );
define( 'LOGGED_IN_SALT',   'XJF2?0pRhu_A0I}!gtk +sE&NESd1.Y*E4s8bx,}=Gs&Q31[5J9Q.IwlUkrEXaJg' );
define( 'NONCE_SALT',       '%!rQbX+=<oC,js_^@kI2LH{EmIZbHi+z8rKDD:?T(*SANyXFO0Px-{nnqz)_yPHo' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
