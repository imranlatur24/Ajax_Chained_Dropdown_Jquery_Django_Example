from django.db import models
from matplotlib.colors import cnames

# Create your models here.
class CollegeModel(models.Model):
    Cid=models.AutoField(primary_key=True)
    Cname=models.CharField(max_length=100)
    class Meta:
        db_table='College'
    def __str__(self) -> str:
        return self.Cname

class StudentModel(models.Model):
    Sid=models.AutoField(primary_key=True)
    Cid=models.ForeignKey(CollegeModel,on_delete=models.CASCADE)
    Sname=models.CharField(max_length=75)

    class Meta:
        db_table='Student'
    
    def __str__(self) -> str:
        return self.Sname