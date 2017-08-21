# docker-qtmine

Docker image to execute qtminer. 

To build 
```
docker build . -t <your image name>
```

To execute
dd
```
docker run <your image name>
```
You can change the default parameters to choose the pool server to mine 
* SERVER_NAME: The <server name:port> where to mine: Example eu1.ethermine.org:4444
* MINER_ADDRESS: The miner's address.
  
Example:
```
docker run docker-qtminer -d -e SERVER_NAME=eu1.ethermine.org:4444 -e MINER_ADDRESS=0x386ac47dA3A08B7e79fD28d0710AEb331728772bI
```
