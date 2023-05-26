from django.shortcuts import render

# Create your views here.
def run_home_agent(request):
    return render(request, 'home.html')

def playground(request):
    return render(request, 'playground.html')




def playground_(request):
    return render(request, 'playground.html')