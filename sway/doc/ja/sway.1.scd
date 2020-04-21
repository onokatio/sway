sway(1)

# 名前

sway - i3 互換のある Wayland コンポジッター

# 書式

*sway* [options...] [command]

# オプション

*-h, --help*
	help を表示し終了する.

*-c, --config* <config>
	設定ファイルを指定する.

*-C, --validate*
	設定ファイルの文法を確認し終了する.

*-d, --debug*
	デバッグ情報を含めた完全なログを出力する.

*-v, --version*
	バージョンを表示して終了する.

*-V, --verbose*
	より冗長にログを出力する.

*--get-socketpath*
	IPC ソケットのパスを表示し終了する.

# 説明

Swayは、Waylandで i3 のようなウィンドウマネージャが欲しいいという需要に答えるために作られまし
た。 上流の i3 開発者達は i3 を Wayland へ 移植する意向がなく、 他の者たちによって提案されて
も実現されずに終わっていました。 素晴らしい機能を提供する沢山の i3 のフォークがおかげでユーザー
は他のウィンドウマネージャを使おうとするよりかは、 むしろ i3 のように振る舞う新しいウィンドウマ
ネージャを書こうとしました。

sway は、 tty か Wayland に互換性のあるログインマネージャから起動できます。

# 設定

sway searches for a config file in the following locations, in this order:
sway は、以下の順番で設定ファイルの場所を探索します。

. ~/.sway/config
. $XDG_CONFIG_HOME/sway/config (suggested location)
. ~/.i3/config
. $XDG_CONFIG_HOME/i3/config
. /etc/sway/config
. /etc/i3/config

設定されていない場合 $XDG_CONFIG_HOME はデフォルトで *~/.config* となります。

設定ファイルが存在しない場合エラーが発生します。 推奨されるデフォルトの設定は
*/etc/sway/config*です。 *~/.config/sway/config* へコピーして編集してください。

設定ファイルに関するより詳しい説明は *sway*(5) を見てください。

# IPC コマンド

Though *swaymsg*(1) is generally preferred, you may run *sway* _command_ to
send _command_ to the running instance of sway. You can also issue commands
with *i3-msg*(1) or even with *i3*(1).

主に *swaymsg*(1) を通して、 *sway* _コマンド_ の _コマンド_ を起動している sway の
インスタンスへ送ることができます。 また *i3-msg*(1) や *i3*(1) でもコマンドが使えます。

# 環境変数

以下の環境変数が sway に影響します。

_SWAYSOCK_
	sway IPC ソケットのパスを指定します。

_XKB\_DEFAULT\_RULES_, _XKB\_DEFAULT\_MODEL_, _XKB\_DEFAULT\_LAYOUT_,
_XKB\_DEFAULT\_VARIANT_, _XKB\_DEFAULT\_OPTIONS_
	Configures the xkb keyboard settings. See *xkeyboard-config*(7). The
	preferred way to configure the keyboard is via the configuration file, see
	*sway-input*(5).

The following environment variables are set by sway:

_DISPLAY_
	If compiled with Xwayland support and Xwayland is not disabled by the
	config, this will be set to the name of the X display used for Xwayland.

_I3SOCK_
	For compatibility with i3, specifies the path to the sway IPC socket.

_SWAYSOCK_
	Specifies the path to the sway IPC socket.

_WAYLAND_DISPLAY_
	Specifies the name of the Wayland display that sway is running on.

_XCURSOR_SIZE_
	Specifies the configured cursor size.

_XCURSOR_THEME_
	Specifies the configured cursor theme.

# AUTHORS

Maintained by Drew DeVault <sir@cmpwn.com>, who is assisted by other open
source contributors. For more information about sway development, see
<https://github.com/swaywm/sway>.

# SEE ALSO

*sway*(5) *swaymsg*(1) *sway-input*(5) *sway-output*(5) *sway-bar*(5)
*sway-ipc*(7)
