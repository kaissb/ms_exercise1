from django.contrib import admin

# Register your models here.

from App.models import CosutumUser,Employee,File
admin.site.register(CosutumUser)
admin.site.register(Employee)
admin.site.register(File)
