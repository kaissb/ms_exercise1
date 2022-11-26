from fastapi import FastAPI
from pydantic import BaseModel
from datetime import date
from typing import Union

app = FastAPI()
class Employee(BaseModel):
    id: int
    numero_employe: str
    Cin: str
    jours_travailles:int
    date_embauche:Union[date,None]
    date_demission:Union[date,None]
    #CosutumUserId:int

class ListEmployee(BaseModel):
    data:list[Employee]
    
class ResponseObject(BaseModel):
    numéro_employe:int
    nombre_de_jours:int
class ResponseListOfObject(BaseModel):
    data:list[ResponseObject]
@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.post("/DataProcessing")
def DataProcessing(data:ListEmployee):
    today = date.today() # 2022-11-23
    
    valid_data = []
    for emp in data.data:
        #ignore if date_demission is passed
        if today > emp.date_demission:
            #valid_data.append(emp)
            #valid_data.append("emp.date_demission")
            pass
        elif today < emp.date_embauche:
            #valid_data.append(emp)
            #valid_data.append("emp.date_embauche")
            pass
        elif emp.jours_travailles > today.day:
            #valid_data.append("emp.jours_travailles")
            pass
        else:
            valid_data.append(emp)
        
    return valid_data



