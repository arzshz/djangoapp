from django.shortcuts import render
'''
from django.http import HttpResponse

def hello_world(request):
    return HttpResponse({"text": "Hello World!"})

# Create your views here.
'''
from django.shortcuts import render

def index(request):
    return render(request, 'base.html')
'''
from django.http import JsonResponse

def hello_world(request):
    response_data = {"text":"Hello World!"}
    return JsonResponse(response_data)
'''