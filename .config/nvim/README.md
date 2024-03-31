## Neovim Config

## Setup
TODO


#### Java
- export JAVA_SE_11="/Library/Java/JavaVirtualMachines/jdk-11.0.16.1.jdk/Contents/Home"
- export JAVA_SE_17="/opt/homebrew/Cellar/openjdk@17/17.0.9/libexec/openjdk.jdk/Contents/Home"

#### jdtls
- export JDTLS_PATH="/opt/homebrew/Cellar/jdtls/1.31.0/bin/jdtls"
- export JDTLS_DATA_PATH="/Users/terry/Workspaces/tempdata/"

#### Java-debug
- clone and build https://github.com/microsoft/java-debug
- set env `JAVA_DBUG` to the built jar
- Example: `export JAVA_DEBUG="/Users/terry/Workspaces/github/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.51.0.jar`

#### java-test
- clone and build: https://github.com/microsoft/vscode-java-test/
- set env `JAVA_VSCODE_TEST` to the server jars
- example: `/Users/terry/Workspaces/github/vscode-java-test/server/*.jar`

#### groovy 
- clone and build https://github.com/GroovyLanguageServer/groovy-language-server
- set env `GROOVY_LS_JAR`
- example: `/Users/terry/Workspaces/github/groovy-language-server/build/libs/groovy-language-server-all.jar`
