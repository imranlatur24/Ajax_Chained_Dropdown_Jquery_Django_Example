from django.shortcuts import render
from .models import StudentModel,CollegeModel
# Create your views here.

def filterfun(request):
    college_data=CollegeModel.objects.all()
    student_data=StudentModel.objects.all()
    return render(request, "index.html", {"college_data": college_data, "student_data": student_data})

