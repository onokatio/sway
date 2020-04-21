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
. $XDG_CONFIG_HOME/sway/config (推奨)
. ~/.i3/config
. $XDG_CONFIG_HOME/i3/config
. /etc/sway/config
. /etc/i3/config

設定されていない場合 $XDG_CONFIG_HOME はデフォルトで *~/.config* となります。

設定ファイルが存在しない場合エラーが発生します。 推奨されるデフォルトの設定は
*/etc/sway/config*です。 *~/.config/sway/config* へコピーして編集してください。

設定ファイルに関するより詳しい説明は *sway*(5) を確認してください。

# IPC コマンド

主に *swaymsg*(1) を通して、 *sway* _コマンド_ の _コマンド_ を起動している sway の
インスタンスへ送ることができます。 また *i3-msg*(1) や *i3*(1) でも可能です。

# 環境変数

以下の環境変数が sway に影響します。

_SWAYSOCK_
	sway IPC ソケットのパスを指定します。

_XKB\_DEFAULT\_RULES_, _XKB\_DEFAULT\_MODEL_, _XKB\_DEFAULT\_LAYOUT_,
_XKB\_DEFAULT\_VARIANT_, _XKB\_DEFAULT\_OPTIONS_
	xkb キーボード設定を指定します。 *xkeyboard-config*(7) を確認してください。
	好まれるキーボード設定方法は設定ファイルによる設定です。 *sway-input*(5) を
	確認してください。

以下の環境変数は sway によって設定されるものです。

_DISPLAY_
	Xwayland サポートを有効にして sway をコンパイルした場合、設定で無効にしない限り
	Xwaylandを使用するための X ディスプレイの名前がセットされます。

_I3SOCK_
	i3 との互換性を保つため、 sway IPC ソケットのパスがセットされます。

_SWAYSOCK_
	sway IPC ソケットのパスが指定されます。

_WAYLAND_DISPLAY_
	sway が動作している Wayland ディスプレイの名前がセットされます。

_XCURSOR_SIZE_
	カーソルのサイズを指定します。

_XCURSOR_THEME_
	カーソルのテーマを指定します。

# 著者

Maintained by Drew DeVault <sir@cmpwn.com>, who is assisted by other open
source contributors. For more information about sway development, see
<https://github.com/swaywm/sway>.

# 関連項目

*sway*(5) *swaymsg*(1) *sway-input*(5) *sway-output*(5) *sway-bar*(5)
*sway-ipc*(7)
