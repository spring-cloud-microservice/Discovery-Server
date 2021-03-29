PROCESS_ID=$(ps -eaf | grep discovery-server-0.0.1-SNAPSHOT.jar | grep -v "grep" | awk '{print $2}')
if test -z "$PROCESS_ID"
then
  echo "Discovery Server not running"
else
  echo "Running discovery server: $PROCESS_ID"
  kill -9 "$PROCESS_ID"
fi
echo "Shutting down discovery server"
sleep 2s;
echo "............................................"
echo "............................................"
echo "Discovery Server shut down"
