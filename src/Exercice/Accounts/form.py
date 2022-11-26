from django import forms  
from App.models import Employee
class StudentForm(forms.Form):
    csv_file      = forms.FileField() 
    
    
""" class EmployeeForm(forms.ModelForm):
    class Meta:
        model = Employee
        fields="__all__" """