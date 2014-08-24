#!/bin/bash
cd ~/cassandra_configuration/

for k in $(seq 1 6)
	do cp cassandra.yaml_$k ~/cassandra_training/us-east-1/node$k/conf/cassandra.yaml
	cp cassandra-topology.properties ~/cassandra_training/us-east-1/node$k/conf/cassandra-topology.properties
done
