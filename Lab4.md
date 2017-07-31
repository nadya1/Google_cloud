## Launch Cloud DataLab

 - [CodeLabs (4a) DataLab] (https://codelabs.developers.google.com/codelabs/cpb100-datalab/index.html#0)
 - Using Cloud Shell:  gcloud components install datalab
 - gcloud config set compute/zone <ZONE> # e.g us-central1-a
 - datalab create datalabvm-<USER>       # e.g nadyaortiza
 - datalab connect datalabvm-<USER>
 - (OR) cd training-data-analyst/datalab/gcloud
 - ./create_vm.sh
 - ./start_tunnel.sh
 - Click on the *Web Preview* , select *port 808x, and start using Datalab.


## ML dataset with BigQuery and TensorFlow

 - [CodeLabs BigQuery] (https://codelabs.developers.google.com/codelabs/cpb100-bigquery-dataset/#0)
 - [CodeLabs TensorFlow] (https://codelabs.developers.google.com/codelabs/cpb100-tensorflow/#0)
 - [BigQuery and TensorFlow](https://github.com/GoogleCloudPlatform/training-data-analyst/blob/master/CPB100/lab4a/demandforecast.ipynb)
 - Python notebook to develop a machine learning model to predict the demand for taxi cabs in New York.


## Machine Learning APIs

 - [CodeLabs (4b) APIs](https://codelabs.developers.google.com/codelabs/cpb100-translate-api/#0)
 - Get API key: From the GCP console menu, select API Manager then select ENABLE API
 - In the API Manager search for: Google Cloud Vision API.
 - Click Enable if necessary, and Go to Credentials
 - Follow the same process to enable Translate, Speech, and Natural Language APIs


## Invoke ML APIs from Datalab

 - On the DataLab web browser (created above)
 - [Machine Learning APIs](https://github.com/GoogleCloudPlatform/training-data-analyst/blob/master/CPB100/lab4c/mlapis.ipynb)
 - Python notebook to invoke APIs (Vision, Translate, Speech, NL)


## Resources

 - [Cloud Datastore](https://cloud.google.com/datastore/)
 - [Cloud Bigtable] (https://cloud.google.com/bigtable/)
 - [Google BigQuery] (https://cloud.google.com/bigquery/)
 - [Cloud Datalab] (https://cloud.google.com/datalab/)
 - [TensorFlow] (https://www.tensorflow.org/)
 - [Cloud Machine Learning] (https://cloud.google.com/ml/)
 - [Vision API] (https://cloud.google.com/vision/)
 - [Translate API] (https://cloud.google.com/translate/)
 - [Speech API] (https://cloud.google.com/speech/)