# Fix for stupid Java bug that was causing all java processes to make a dock icon and steal focus
# (the second answer)
# http://stackoverflow.com/questions/10627405/how-to-set-java-system-properties-globally-on-os-x
export _JAVA_OPTIONS=-Djava.awt.headless=true


# Determine where Java is and set env var
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Switch between Java versions
# /usr/libexec/java_home -v X will always point to the latest X version
java8() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8 -F)
    java -version
}
java11() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 11 -F)
    java -version
}
javaList() {
    /usr/libexec/java_home -V
}

# Give Maven more heap and permgen memory so it won't run out
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=1024m"

# I make this typo a lot
alias opne='open'

# untar a file
alias untar='tar -zxvf'

# Use lsd instead of ls (`brew install lsd`)
alias ls='lsd'

# For pyenv to work properly
# (i.e. `python` uses the version managed by pyenv instead of the system one)
eval "$(pyenv init --path)"
eval "$(pyenv init --path)"
