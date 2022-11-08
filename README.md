# Stock Predictor

## Objectives:
Deploy a stock prediction model as a RESTful API using FastAPI to AWS EC2, and make it available (i.e., public) to end users. Less focus is put on how well the model performs, yet the goal is to get an initial working system quickly into production.

--------------------------------------

## Model run:
To run the model, execute the following in shell:<br>
  
    python model.py

--------------------------------------

## Test the FastAPI end point:
curl \
--header "Content-Type: application/json" \
--request POST \
--data '{"ticker":"MSFT", "days":7}' \
http://13.58.171.184:8000/predict