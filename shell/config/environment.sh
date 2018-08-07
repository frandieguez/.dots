# Editor  ------------------------------------------
export EDITOR=vim

# Android ------------------------------------------
if [ -e $HOME/.android-sdk-linux ]; then
  export ANDROID_HOME=$HOME/.android-sdk-linux
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi

# Composer -----------------------------------------
if [ -e $HOME/.composer/bin ]; then
  export PATH=$PATH:~/.composer/vendor/bin
fi
if [ -d $HOME/.devtools/vendor/bin ]; then
    export PATH=$HOME/.devtools/vendor/bin:$PATH
fi

# Node.js ------------------------------------------
if [ -d $HOME/.devtools/node_modules/.bin ]; then
    export PATH=$HOME/.devtools/node_modules/.bin:$PATH
fi
if [ -f /usr/share/nvm/init-nvm.sh ]; then
    source /usr/share/nvm/init-nvm.sh
fi

# GitHooks -----------------------------------------
if [ -d $HOME/.git-hooks ]; then
    export PATH=$HOME/.git-hooks/:$PATH
fi

# Golang ------------------------------------------
if [ -e $HOME/.goenv ]; then
  export PATH="$HOME/.goenv/bin:$PATH"
  eval "$(goenv init -)"
  export GOROOT="`echo $HOME`/.goenv/versions/$(goenv version)/"
fi

export GOPATH="$HOME/Code/go"
export PATH=$GOPATH/bin:$PATH

alias gopath='cd $GOPATH'

# Java --------------------------------------------
if [ -d /usr/lib/jvm/default-runtime ]; then
  export JAVA_HOME=/usr/lib/jvm/default-runtime
fi



export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path variables
if [ -d /usr/share/bin ]; then
    export PATH=/usr/share/bin:$PATH
fi

if [ -e $HOME/bin ]; then
  export PATH=$PATH:$HOME/bin
fi

# Ruby --------------------------------------------
if [ -d $HOME/.gem/ruby/2.3.0/bin ]; then
    export PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH
fi

if [ -d $HOME/.gem/ruby/2.4.0/bin ]; then
    export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH
fi
