from django.db import models
from django.contrib.auth.models import User
from datetime import datetime

# Create your models here.
class CosutumUser(models.Model):
    CosutumUserId=models.BigAutoField(primary_key=True)
    UserId = models.ForeignKey(User,on_delete=models.CASCADE)
    Prenom = models.CharField(max_length=45)
    Nom = models.CharField(max_length=45)
    Type = models.CharField(max_length=10)
    
class Employee(models.Model):
    CosutumUserId = models.ForeignKey(CosutumUser,on_delete=models.CASCADE)
    numero_employe =models.CharField(max_length=45)
    jours_travailles  =models.IntegerField(default=None)
    date_embauche =models.DateField()
    Cin =models.CharField(max_length=10)
    date_demission =models.DateField()
    def json(self):
        return {
            "numero_employe":self.numero_employe,
            "jours_travailles":self.jours_travailles,
            "date_embauche":self.date_embauche,
            "date_demission":self.date_demission,
            "Cin":self.Cin,
        }
    
class File(models.Model):
    uploadé_par=models.ForeignKey(Employee,on_delete=models.CASCADE)
    file_csv=models.FileField(upload_to="App")
    traité =models.BooleanField(default=False)
    created=models.DateTimeField(auto_now_add=True)
    updated=models.DateTimeField(auto_now_add=True)
    def __str__(self) :
        return f"file id is : {self.id}"