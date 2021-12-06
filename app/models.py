from django.db import models

# Create your models here.
class CollegeModel(models.Model):
    Cid=models.AutoField(primary_key=True)
    Cname=models.CharField(max_length=100)
    class Meta:
        db_table='College'
class StudentModel(models.Model):
    Sid=models.AutoField(primary_key=True)
    Cid=models.ForeignKey(CollegeModel,on_delete=models.CASCADE)
    Sname=models.CharField(max_length=75)

    class Meta:
        db_table='Student'