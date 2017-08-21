#!/bin/bash

set -e

echo "Mining setup"

if [ -z "${SERVER_NAME}" ]; then
	SERVER_NAME="eu1.ethermine.org:4444"
fi

if [ -z "${MINER_ADDRESS}" ]; then
	MINER_ADDRESS="0x386ac47dA3A08B7e79fD28d0710AEb331728772b"
fi

echo " USING server ${SERVER_NAME} for miner ${MINER_ADDRESS}.${HOSTNAME}"

/bin/ls -la /opt/qtminer
cd /opt/qtminer
./qtminer.sh -s ${SERVER_NAME} -u ${MINER_ADDRESS}.${HOSTNAME}
cat /var/log/messages
