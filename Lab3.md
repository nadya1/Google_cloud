## Cloud SQL

 - [CodeLabs (3a) Cloud SQL](https://codelabs.developers.google.com/codelabs/cpb100-cloud-sql/#0)
 - cd training-data-analyst/CPB100/lab3a
 - Activate Google Cloud Shell (from Compute Engine SSH shell from Lab2)
 - git clone https://github.com/GoogleCloudPlatform/training-data-analyst
 - bash find_my_ip.sh
 - [Cloud SQL](https://console.cloud.google.com/sql/instances?project=innate-setup-174004)
 - Select: MySQL -> MySQL Second Generation
 - Select: Instance ID / password (gcloud1) / us-central1/
 - ADD NETWORK: based on IP-found

## Create and Populated MySQL tables

 - Click on Cloud SQL instance created above
 - Select Import and browse to table_creation.sql
 - Files are imported from mybucket insance. All files were copied from lab2 (gsutil cp ...)
 - e.g browse to accommodation.csv and Select Database: recommendation_spark & Table:Accommodation
 - Click on Cloud SQL instance and select Connect Using Cloud Shell
 - gcloud beta sql connect mysql-lab3 --user=root
 - or mysql --host=<MySQLIP> --user=root --password
 - use recommendation_spark;
 - show tables;
 - select * from Accommodation where type = 'castle' and price < 1500;


## Recommendations ML using Dataproc

 - [CodeLabs (3b) Dataproc](https://codelabs.developers.google.com/codelabs/cpb100-dataproc/)
 - Step 1: Browse [Google Cloud](https://cloud.google.com/)
 - Step 2: Select BigData/Dataproc.
 - Step 3: Click Create Cluster and wait for a form to load.
 - Step 4: Select: Zone: us-central1-a, changed both the Master and the Worker nodes to n1-standard-2.
 - Step 5: Once Cluster is created, open Cloud Shell console


## ML using Dataproc

 - Step 1: verify Cloud SQL instance is created.
 - Step 2: verify Dataproc cluster instance is created.
 - Step 3: verify cluster has the same region as your Cloud SQL instance. (e.g us-central1-a)
 - Step 4: In Cloud Shell, cd ~/training-data-analyst/CPB100/lab3b
 - Step 5: nano authorize_dataproc.sh  # CHANGE the CLOUDSQL=<to_name_of_mysql_created> (above)
 - Step 6: bash authorize_dataproc.sh   <cluster_name>   <zone>   <num_nodes>

## Create Job & Run ML model

 - In Cloud Shell, cd ~/training-data-analyst/CPB100/lab3b
 - nano sparkml/train_and_apply.py  # CHANGE CLOUDSQL_INSTANCE_IP & Password
 - gsutil cp sparkml/tr*.py gs://<bucket-name>/
 - On the left-hand menu of the Dataproc section, click on Jobs.
 - Select cluster-name and Change the Job type to PySpark.
 - Main Python File: gs://<bucket-name>/train_and_apply.py
 - Click Submit and wait for the job Status to change from Running to Succeeded.

## Resources

 - [Cloud SQL](https://cloud.google.com/sql/)
 - [Cloud Dataproc](https://cloud.google.com/dataproc/)
 - [Cloud Solutions](https://cloud.google.com/solutions/)