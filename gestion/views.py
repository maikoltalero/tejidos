from itertools import product
from math import prod
from pathlib import Path
from django.shortcuts import redirect,render
from django.apps import apps
import sys
from django.core import management
from facturas.models import Detalle
from pago.models import Detalle, Detalle_pago
from facturas.views import factura
from gestion.forms import UploadFileForm
from django.conf import settings
from django.core.mail import send_mail
from django.db.models.functions import TruncMonth
from gestion.models import Backup
from gestion.forms import BackupForm
from django.http import FileResponse
import os
import zipfile
from datetime import date, datetime
from django.db.models import Count
from django.db.models import Max, Sum
from django.db import models
from django.contrib.auth.decorators import login_required


def exportar_datos():
    fecha=date.today()
    os.system(f"mysqldump --add-drop-table --column-statistics=0 -u root --password=admin jueves> static/backup/BKP_{fecha}.sql")
   

def importar_datos(archivo):
    try:
        os.system(f"mysql -u root --password=admin jueves < {archivo[1:]}")
    except:
        print("Problemas al importar")

    
@login_required(login_url="usuario-login")
def backup(request,tipo):
   
    ejemplo_dir = 'static/backup/'
    with os.scandir(ejemplo_dir) as ficheros:
        ficheros = [fichero.name for fichero in ficheros if fichero.is_file()]
    print(ficheros)
    filtrado=[]
    backups = Backup.objects.all()
    if request.method == 'POST' and tipo== "U":
        # Fetching the form data
        
        form = BackupForm(request.POST, request.FILES)
        if form.is_valid():
            nombre= request.POST['nombre']
            archivo = request.FILES['archivo']
            
            insert = Backup(nombre=nombre, archivo=archivo)
            insert.save()
            
            importar_datos(insert.archivo.url)
            
            insert = Backup(nombre=nombre, archivo=archivo)
            insert.save()
            
            return redirect('backup','A')
        else:
            print( "Error al procesar el formulario")
              
    elif request.method == 'POST' and tipo== "D":
        exportar_datos()
        return redirect('backup','A')
    
    else:
        form = BackupForm()
      
        
    context ={
        "ficheros":ficheros,
        "form":form,
        "backups":backups
    }
    return render(request, 'backup.html',context) 


def index(request):
    
    titulo_pagina="Index"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request,'index.html',context)

@login_required(login_url="usuario-login")
def inicio(request):

        # pagoAsociada= Detalle_pago.objects.filter(factura__estado="Cerrada",factura__tipofactura="Venta").values('cantidad_detalle','producto','producto__categoria','pago__fecha')
    # pagos={"Tejidos":list()}

    # for mes in range(12):
    #     pagos=["Tejidos"].append(pagoAsociada.filter(producto__categoria="Tejidos",pago__fecha__month=mes+1,pago__fecha__year=datetime.now().year).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum'])
        
    venta= Detalle.objects.filter(factura__estado="Cerrada",factura__tipofactura="Venta").values('cantidad_detalle','producto','producto__categoria', 'total','factura__fecha')
    ventas={"Calzado":list(),"Tejidos":list(),"Ropa":list(),"Suma_ventas":list(),"Suma_total":list()}
    # cantidadA= Detalle.objects.filter(factura__estado="Cerrada",factura__tipofactura="Venta").values('cantidad_detalle','producto','producto__categoria','factura__fecha')
    # cant={"Tejidos":list()}
# 'codigo_asociada',
    for mes in range(12):
        ventas["Calzado"].append(venta.filter(producto__categoria="Calzado",factura__fecha__month=mes+1,factura__fecha__year=datetime.now().year).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum'])
        ventas["Tejidos"].append(venta.filter(producto__categoria="Tejidos",factura__fecha__month=mes+1,factura__fecha__year=datetime.now().year).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum'])
        ventas["Ropa"].append(venta.filter(producto__categoria="Ropa",factura__fecha__month=mes+1,factura__fecha__year=2022).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum'])
       
        ventas["Suma_ventas"].append(venta.filter(factura__fecha__month=mes+1,factura__fecha__year=datetime.now().year).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum'])
        ventas["Suma_total"].append(venta.filter(factura__fecha__month=mes+1,factura__fecha__year=datetime.now().year).aggregate(Sum('total'))['total__sum'])
        # cant["Tejidos"].append(cantidadA.filter(producto__categoria="Tejidos",factura__usuario_id=1,factura__fecha__month=mes+1,factura__fecha__year=datetime.now().year).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum'])
        
        # print(cant)
        for i,item in enumerate(ventas["Calzado"]):
            if item==None:
                ventas["Calzado"][i]=0
            if ventas["Tejidos"][i]== None:
                ventas["Tejidos"][i]=0
            if ventas["Ropa"][i]== None:
                ventas["Ropa"][i]=0
            if ventas["Suma_ventas"][i]== None:
                 ventas["Suma_ventas"][i]=0
            if ventas["Suma_total"][i]== None:
                ventas["Suma_total"][i]=0  

                
    # for mes in meses:
    #     calzado[mes]=[venta.filter(producto__categoria="Calzado",factura__fecha__month=contador,factura__fecha__year=2022).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum']]
    #     tejidos[mes]=[venta.filter(producto__categoria="tejidos",factura__fecha__month=contador,factura__fecha__year=2022).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum']]
    #     ropa[mes]=[venta.filter(producto__categoria="ropa",factura__fecha__month=contador,factura__fecha__year=2022).aggregate(Sum('cantidad_detalle'))['cantidad_detalle__sum']]
    #     contador+=1

    print(ventas)
    titulo_pagina="Inicio"
    context={
        'titulo_pagina':titulo_pagina,
        'ventas':ventas,
        # 'pagos':pagos,
    }
    return render(request,'inicio.html',context)


def ayudaindex(request):
    
    titulo_pagina="Ayuda"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request, 'ayuda/ayudaindex.html', context)

def ayudausuario(request):
    
    titulo_pagina="Ayuda"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request, 'ayuda/ayudausuario.html', context)

def ayudainicio(request):
    
    titulo_pagina="Ayuda"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request, 'ayuda/ayudainicio.html', context)

def ayudaproducto(request):
    
    titulo_pagina="Ayuda"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request, 'ayuda/ayudaproducto.html', context)

def ayudapago(request):
    
    titulo_pagina="Ayuda"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request, 'ayuda/ayudapago.html', context)

def ayudafactura(request):
    
    titulo_pagina="Ayuda"
    context={
        'titulo_pagina':titulo_pagina
    }
    return render(request, 'ayuda/ayudafactura.html', context)