def handle_uploaded_file(f):
    with open('name.csv', 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)
            
            
import csv
import json
import http.client
import requests

        
def CsvTojson(csvFilePath, jsonFilePath):
    jsonArray = []
      
    #read csv file
    with open(csvFilePath, encoding='utf-8') as csvf: 
        #load csv file data using csv library's dictionary reader
        csvReader = csv.DictReader(csvf) 

        #convert each csv row into python dict
        for row in csvReader: 
            #add this python dict to json array
            jsonArray.append(row)
  
    #convert python jsonArray to JSON String and write to file
    with open(jsonFilePath, 'w', encoding='utf-8') as jsonf: 
        jsonString = json.dumps(jsonArray, indent=4)
        jsonf.write(jsonString)
        

def CallMicroservice(dataList):
    #print(dataList)
  

    url = "http://127.0.0.1:8086/DataProcessing"

    payload = json.dumps({
    "data": json.loads(dataList) 
    })
    headers = {
    'Content-Type': 'application/json',
    'Cookie': 'csrftoken=FQ1ic1WkqIRUeFAdx3rFy2yw0fdUX0Ed'
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    return response.json()
