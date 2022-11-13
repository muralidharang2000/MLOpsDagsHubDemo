# MLOpsDagsHubDemo
Step 1:
    Create Git repo
    create DagsHub repo: https://dagshub.com

Step 2:
    install DVC
    dvc init
    configure dvc:
        #dvc remote add origin https://dagshub.com/sashicds/MLOpsDagsHubDemo.dvc
        dvc remote add origin https://dagshub.com/muralidharang2000/MLOpsDagsHubDemo.dvc
        dvc remote modify origin --local auth basic
        dvc remote modify origin --local user muralidharang2000
        dvc remote modify origin --local password $DAGSHUB_TOKEN

        dvc add data/raw
        git add data/raw.dvc data/.gitignore
        dvc config core.autostage true
        
        dvc pull -r origin
        dvc add data/raw
        dvc push -r origin    

Step 3:
    install mlflow

    # add the following in the python code!
    mlflow.set_tracking_uri("https://dagshub.com/sashicds/MLOPS-Dagshub.mlflow")
    tracking_uri = mlflow.get_tracking_uri()
    print("Current tracking uri: {}".format(tracking_uri))

    export MLFLOW_TRACKING_USERNAME=sashicds
    export MLFLOW_TRACKING_PASSWORD=$DAGSHUB_TOKEN

