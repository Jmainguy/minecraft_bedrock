# minecraft_bedrock
A minecraft bedrock deployment
## Build docker image
```/bin/bash
./build.sh
```

## Run docker image in persistent manner
```/bin/bash
./run.sh
```

### Persistent data
This saves worlds to /opt/minecraft_bedrock/worlds

### Ports
The script uses ports 19133, and 19132, both TCP and UDP (TCP might not be required, possibly remove after further testing)
