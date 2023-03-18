apt update & apt upgrade -y

# Java 8 installieren
apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y

wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/

apt update

apt install adoptopenjdk-8-hotspot -y

java -version



# Minecraft installieren

# Spigot 1.8.8
wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar

# Spigot 1.16.4
wget https://cdn.getbukkit.org/spigot/spigot-1.16.4.jar

# Craftbukkit 1.8.8
wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.8-R0.1-SNAPSHOT-latest.jar

# Craftbukkit 1.16.4
wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.16.4.jar

nano start.sh

# Folgendes einfügen (-Xms und -Xmx für gewünsche Rammenge)
screen -AmdS minecraft java -Xms1024M -Xmx1024M -jar spigot-1.8.8-R0.1-SNAPSHOT-latest.jar

apt-get install screen -y

chmod +x start.sh

echo "eula = true" > eula.txt

./start.sh

screen -r minecraft
