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

        dvc pull -r origin
        dvc add data/raw
        dvc push -r origin    

