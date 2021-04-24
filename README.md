# bitaddress
Command line ethereum wallet generator using a Docker image.   
Based on code from https://github.com/vkobel/ethereum-generate-wallet/

Use a container for address generation because it is easy to disable all network access using **--network none**

Getting help:  
docker container run --rm --network none martinmspedersen/ethaddress -h

Single wallet:  
docker container run --rm --network none martinmspedersen/ethaddress singlewallet
