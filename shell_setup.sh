# Have to unset this as our env has this set to old MR1 not yarn and it was messing up the spark classpath
unset HADOOP_MAPRED_HOME
# make sure we have other platform vars set
source /etc/spark/conf/spark-env.sh
# get the location of spark assembly.  NOTE: I think it was easiest to deploy via HDFS
export SPARK_JAR=hdfs://bdauat-ns:8020/user/spark/share/lib/spark-assembly.jar
# set as yarn client to run in yarn and still get syout resuts live
export MASTER=yarn-client
# number of cores per node
export SPARK_WORKER_CORES=8
#number of instances/nodes to do work
export SPARK_WORKER_INSTANCES=12
# Now we can run spark-shell  /  pyspark

