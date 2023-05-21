from django.shortcuts import render

# Create your views here.
def view_homepage(request):
    return render(request, 'home.html')