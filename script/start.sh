echo "Starting up discovery server"
nohup java -jar /home/insight/actions-runner/_work/SC-Discovery-Server/SC-Discovery-Server/target/discovery-server-0.0.1-SNAPSHOT.jar </dev/null &>/dev/null &
sleep 10s;
PROCESS_ID=$(ps -eaf | grep discovery-server-0.0.1-SNAPSHOT.jar | grep -v "grep" | awk '{print $2}')
echo "Running discovery server: $PROCESS_ID"
echo "............................................"
echo "............................................"
echo "Discovery Server started" 
