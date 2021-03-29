echo "Starting up discovery server ..."
nohup java -jar ../target/discovery-server-0.0.1-SNAPSHOT.jar </dev/null &>/dev/null &
sleep 2s;
PROCESS_ID=$(ps -eaf | grep discovery-server-0.0.1-SNAPSHOT.jar | grep -v "grep" | awk '{print $2}')
echo "Running discovery server : $PROCESS_ID"
echo "............................................"
echo "............................................"
echo "Discovery Server started up"