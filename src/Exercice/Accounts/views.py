from django.shortcuts import render,redirect

from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from App.models import CosutumUser,File
from django.http import HttpResponse  
from Accounts.functions import handle_uploaded_file  ,CsvTojson,CallMicroservice
from Accounts.form import StudentForm
from django.http import HttpResponse,JsonResponse
from django.urls import reverse
from pathlib import Path
from App.models import Employee
""" from App.serializers import EmployeeSerializer """
from django.core import serializers
from django.forms.models import model_to_dict
import json
import datetime
from django.core.serializers.json import DjangoJSONEncoder
import csv

def login_user(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        #return user
        if user is not None:
            login(request, user)
            return redirect("Home")
        else:
            return redirect("login_user")
    else:
        return render(request,"Auth/login.html",{})
        
    
def Home(request):
    costumusers = CosutumUser.objects.filter(UserId_id = request.user.id)[0]
    return render(request,"Home/Home.html",{"costumusers":costumusers})
""" def default(o):
    if isinstance(o, (datetime.date, datetime.datetime)):
        return o.isoformat() """
def UploadCsv(request):
    data = {}
    if "GET" == request.method:
        return render(request, "UploadCsv/UploadCsv.html", data)
    try:
        csv_file = request.FILES["csv_file"]
        print(csv_file)
        if not csv_file.name.endswith('.csv'):        
            return HttpResponse("File is not CSV type")
        if csv_file.multiple_chunks():         
            return HttpResponse("Uploaded file is too big (%.2f MB).")
        
        
        handle_uploaded_file(request.FILES['csv_file'])
        CsvTojson(r'name.csv',r'media.json') 
       
        emp_db = Employee.objects.filter(CosutumUserId_id=request.user.id).first()
        file_db = File(uploadé_par=emp_db,file_csv=csv_file,traité=1)
        file_db.save()
        lines = []         
        emp_list_dict = []
        emp_list_json = []
        cins = []
        with open("name.csv", 'r') as file:
            csvreader = csv.reader(file)
            header = next(csvreader)
            for row in csvreader:
                lines.append(row)
      
        for line in range(len(lines)):
            emp_dict = {}
            fields = lines[line]
         
            emp_dict["id"] = int(fields[0])
            emp_dict["numero_employe"] = fields[1]
            emp_dict["jours_travailles"] = int(fields[2])
            emp_dict["date_embauche"] = fields[3]
            emp_dict["Cin"] = fields[6]
            emp_dict["date_demission"] = fields[4]
            emp_list_dict.append(emp_dict)
            cins.append(fields[6])

        for index,c in enumerate(cins):
            """ try:
                emp = Employee.objects.filter(Cin=c).first()
                dict_obj = model_to_dict( emp )
                emp_list_json.append(dict_obj)
            except Employee.DoesNotExist:
                print("not exits") """
            if Employee.objects.filter(Cin=c).exists():
                """ emp = Employee.objects.filter(Cin=c).first() """
                pass
            else:
                emp_list_dict.remove(index)
                
      
        #emp_list_json_2 = json.dumps(list(emp_list_json), cls=DjangoJSONEncoder)
        emp_list_dict_2 = json.dumps(emp_list_dict, cls=DjangoJSONEncoder)
        response_data = CallMicroservice(emp_list_dict_2)
       
        for data_object_response in response_data:
            #emp = Employee.objects.get(id=data_object_response["id"])
            emp = Employee.objects.filter(Cin=data_object_response["Cin"]).first()
            emp.jours_travailles = data_object_response["jours_travailles"]
            emp.save()
           
        return JsonResponse(response_data,safe=False)
      
          
    except Exception as e:
        return HttpResponse("Unable to upload file" + str(e))
    return HttpResponse("back to home") 


