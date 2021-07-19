# _______| |__  _ __ ___ 
#|_  / __| '_ \| '__/ __|
# / /\__ \ | | | | | (__ 
#/___|___/_| |_|_|  \___|
#
# Author: github@66RING
source ~/.config/zsh/shell_env.zsh
source ~/.config/zsh/plugin.zsh
source ~/.config/zsh/aliases.zsh

# if type "fortune" &> /dev/null; then
#     fortune -s
# fi


PATH="/home/death/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/death/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/death/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/death/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/death/perl5"; export PERL_MM_OPT;
