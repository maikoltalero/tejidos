from django.shortcuts import render, redirect
from .forms import UserRegisterForm
from django.contrib import messages
from .models import User


def registrar(request):
	real=User.objects.all()
	if request.method == 'POST':
		if len(real) == 1:
			form = UserRegisterForm(request.POST)	
			if form.is_valid() :	
				form.save()
				username = form.cleaned_data['username']
				messages.success(request, f'Usuario {username} registrado correctamente')
				return redirect('index')
			else:
				print(real,"XDDDDDDDDDDDDDDDDD")
				messages.warning(request,'Error solo se puede crear una cuenta')
		else:
			print(real,"XDDDDDDDDDDDDDDDDD")
			messages.warning(request,'Error solo se puede crear una cuenta')
			return redirect('index')
	else:
		form = UserRegisterForm()
	context = { 
		"realy":real,
		'form' : form,
		
	}	
	return render(request, 'user/registrar.html', context)
	
def termicondicion(request):
		return render(request, 'user/terminos.html')














