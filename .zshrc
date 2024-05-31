export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(command-not-found)
command_not_found_handler () 
{
bash ~/exit.sh
return 127
}
source $ZSH/oh-my-zsh.sh
function c.echo {
echo -e '\e['$1'm'$2'\e[0m'
}
function vol
{
amixer -D pulse sset Master unmute > /dev/null
amixer -D pulse sset Master $1% > /dev/null
echo 'vol set to '$1'%'
}
alias ydl='f() { youtube-dl -x --audio-format mp3 "$1"; }; f'
function lstype
{
find . -type f -regex ".*$1"
}
function zip
{
zip -r $1.zip $1
}
source ~/.aliases
