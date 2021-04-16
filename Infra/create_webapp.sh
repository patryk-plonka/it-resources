#!/bin/bash

RESOURCE_GROUP_NAME="rg-itresources-westeu-prod"
LOCATION="westeurope"
APPSERVICE_PLAN_NAME="plan-itresources-westeu-prod"
SKU="F1"
APPSERVICE_NAME="it-resources"
RUNTIME="DOTNETCORE|3.1"

az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

az appservice plan create --name $APPSERVICE_PLAN_NAME \
  --resource-group $RESOURCE_GROUP_NAME \
  --sku $SKU \
  --is-linux

az webapp create --resource-group $RESOURCE_GROUP_NAME \
  --plan $APPSERVICE_PLAN_NAME \
  --name $APPSERVICE_NAME \
  --runtime $RUNTIME