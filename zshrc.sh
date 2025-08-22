# Determine where Java is and set env var
export JAVA_HOME=$(/usr/libexec/java_home -v 21)

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
java17() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 17 -F)
    java -version
}
java21() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 21 -F)
    java -version
}
javaList() {
    /usr/libexec/java_home -V
}

# Give Maven more heap memory
export MAVEN_OPTS="-Xmx2048m"

# I make this typo a lot
alias opne='open'

# untar a file
alias untar='tar -zxvf'

# Use lsd instead of ls (`brew install lsd`)
alias ls='lsd'

# Runs a command until it fails or ctrl+c
runUntilFailure() {
    count=1;
    echo "=======\nRUN $count\n======="
    while "$@" && sleep 1; do
        count=$((count+1))
        echo "=======\nRUN $count\n======="
    done
}
