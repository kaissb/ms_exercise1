""" from django.core import serializers
from App.models import Employee
class EmployeeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Employee
        fields="__all__" """