## Compute Engine Instance

 - [CodeLabs (2a) Compute Engine](https://codelabs.developers.google.com/codelabs/cpb100-compute-engine/#2)
 - Step 1: Browse [Google Cloud](https://cloud.google.com/)
 - Step 2: Select Products/Compute Engine.
 - Step 3: Click Create Instance and wait for a form to load.
 - Step 4: Select: Zone: us-central1-c, Compute Engine default, Allow full access to all Cloud API.
 - Step 5: Once Instance is created, open SSH console
 - Step 6: Install GIT on SSH console:
 - Setp 7: sudo apt-get update
 - Setp 8: sudo apt-get -y -qq install git
 - Setp 9: git --version

## Cloud Storage
 - [CodeLabs (2b) Cloud Storage] (https://codelabs.developers.google.com/codelabs/cpb100-cloud-storage/#0)
 - SSH into your Compute Engine instance (createrd above)
 - git clone https://github.com/GoogleCloudPlatform/training-data-analyst
 - cd training-data-analyst/CPB100/lab2b
 - bash ingest.sh
 - bash install_missing.sh
 - [Geographic data in Datalab](https://github.com/GoogleCloudPlatform/datalab-samples/blob/master/basemap/earthquakes.ipynb)

## Create Bucket
 - [Google Storage](https://console.cloud.google.com/storage/browser?project=innate-setup-174004)
 - Select: Create Bucket / Name & MMulti-Regiona
 - In the SSH window of the Compute Engine instance (above)
 - gsutil cp earthquakes.* gs://<BUCKET-NAME>/
 - Files will be transfer to <Bucket-Name> folder

## Resources

 - [Compute Engine](https://cloud.google.com/compute/)
 - [Storage](https://cloud.google.com/storage/)
 - [Pricing](https://cloud.google.com/pricing/)
 - [Cloud Launcher](https://cloud.google.com/launcher/)
 - [Pricing Philosophy](https://cloud.google.com/pricing/philosophy/)