#! /bin/zsh
# Path to your oh-my-zsh installation.
export ZSH="/Users/michael/.oh-my-zsh"

export ANDROID_HOME=/Users/michael/Library/Android/sdk
export PATH="$PATH":/Users/michael/anaconda3/bin:/usr/local/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/texlive/2018basic/bin/x86_64-darwin:/usr/local/spark/bin:/usr/local/hadoop/bin:/usr/local/Cellar/scala@2.11/2.11.12/bin

# 为了学习hive 安装 hadoop0.20.2 完全参考hive编程指南操作
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export HADOOP_HOME=/usr/local/hadoop

# java 专用函数
# Java compile                                                                                                              
jc() {                                                                                                                      
    # 获取最新的脚本/如果不想处理最新的咋办，那你自己 javac                                                                                        # Spark
    new_java="$(ls -l --time-style '+%Y%m%d%H%M%S' *.java | awk '{print $6, $7}' | sort | tail -n 1 | awk '{print $2}')"    export SPARK_HOME=/usr/local/spark
    # 去除后缀                                                                                                                  
    base_java="${new_java%.*}"                                                                                              # 作笔记专用, latex
    echo compiling $new_java "..."                                                                                          alias t=~/bin/t
    javac $new_java                                                                                                         
    echo executing $new_java "..."                                                                                          # 禁用brew的自动更新
    java $base_java                                                                                                         export HOMEBREW_NO_AUTO_UPDATE=true
}                                                                                                                           

# Java vim editing                                                                                                          # 为了 mycli 的输出效果而配置：
jv() {                                                                                                                      #export LESS="-XRF"
    new_java="$(ls -l --time-style '+%Y%m%d%H%M%S' *.java | awk '{print $6, $7}' | sort | tail -n 1 | awk '{print $2}')"    
    vi $new_java                                                                                                            export ZSH=$HOME/.oh-my-zsh
}       

                                                                                                                    # PATH="$PATH":/usr/local/mysql/bin
# PATH="$PATH":/Users/michael/anaconda3/bin
#

# 机器学习
alias ml="cd ~/ml && jupyter notebook"

# bookmark
alias Movies="cd ~/Movies"
alias tmp="cd ~/tmp"

start_env() {source /Users/michael/envs/$1/bin/activate}
mg+() {g++ $1.cpp -o $1.out && ./$1.out} # C++
mg() {gcc -o $1.out $1.c && ./$1.out} # mg= my gcc 一次输入三个同名的东西太鸡儿麻烦了
alias yd="/Users/michael/pro/toolbox/yd.py"
alias s="/Users/michael/pro/toolbox/s.py"
alias fp="/Users/michael/bin/fp.py" # 复制当前目录下某个文件的全路径 
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'" # sublime text 3
alias mongo="mongo --quiet" # 一个清爽的mongo
alias code="clear && cd ~/learn/$(date '+%m%d')"
alias python="/Users/michael/anaconda3/bin/python"
alias python3="/Users/michael/anaconda3/bin/python"
alias pip="/Users/michael/anaconda3/bin/pip"
alias pip3="/Users/michael/anaconda3/bin/pip"
alias python2="/usr/bin/python"
alias python3.7="/usr/local/bin/python3.7"
alias i="clear && ipython"
alias h="clear && cd"
alias c="clear"
alias say="say -v mei-jia" # say -v kyoko 可以讲日文~
alias rent="~/bin/rent.py"
alias video_duration='~/bin/video_duration.py'

# sss 运行
# alias run='cd ~/sss && python manage.py runserver'
# alias m='cd ~/sss && python manage.py'
# alias shell='m shell_plus'
# alias mig='m makemigrations myapp && m migrate'

# 快速打开备忘
alias memo='vi ~/Documents/memo.md'


# 快速启动 sublime
alias sublime="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"

# python 版本
# alias pip='/Library/Frameworks/Python.framework/Versions/3.5/bin/pip3'

# export PATH="/Users/michael/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# 快速下载MV到Downloads,并且下载完成后提示
# get() { you-get -o ~/Downloads $1 && open ~/Downloads; }
# 无广告播放视频;注意了，只适合很短的视频！其实这个不好用！
alias play="you-get -p 'open -a mpv'"
# 视频转音频
convert() { ffmpeg -i "$1" -vn -ar 44100 -ac 2 -ab 192k -f mp3 ~/Desktop/Sample.mp3;}
# 谢天谢地 我终于找到了传入参数的方法！！！！2016年5月25日
ttt() { echo "$@" > cool; }

alias cls='printf "\033c"'

ZSH_THEME="robbyrussell"


# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=zh_CN.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# export VIRTUAL_ENV_DISABLE_PROMPT=



