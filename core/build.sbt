// home directory of WCS
wcsHome in ThisBuild := "../ContentServer/11.1.1.6.0/"

// webapp directory of WCS
wcsWebapp in ThisBuild := "../App_Server/apache-tomcat-6.0.32/webapps/cs/"

// location of the csdt-client jar
wcsCsdtJar in ThisBuild := "../ContentServer/11.1.1.6.0/csdt-client-1.2.jar"

// scalacOptions += "-deprecation"

// javaOptions += "-Dlogback-access.debug=true"