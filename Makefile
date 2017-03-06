BuildTools.jar:
	curl -O 'https://hub.spigotmc.org/jenkins/job/BuildTools/59/artifact/target/BuildTools.jar'

spigot-1.11.2.jar: BuildTools.jar
	java -jar BuildTools.jar
	echo 'eula=true' > eula.txt

start: spigot-1.11.2.jar
	java -server -Xms1024m -Xmx2048m -jar spigot-1.11.2.jar
