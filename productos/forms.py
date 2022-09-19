from dataclasses import fields
from django import forms

from productos.models import  Color, Talla, Marca, Color, Producto


class TallaForm(forms.ModelForm):
    class Meta:
        model = Talla
        fields= ['nombre']

class MarcaForm(forms.ModelForm):
    class Meta:
        model = Marca
        fields= ['nombre']

class ColorForm(forms.ModelForm):
    class Meta:
        model = Color
        fields= ['nombre']
        
class ProductoForm(forms.ModelForm):
    
    def __init__(self, *args, **kwargs):
        super(ProductoForm, self).__init__(*args, **kwargs)
        self.fields['precio'].widget.attrs['min'] = 1
        self.fields['stock'].widget.attrs['min'] = 1
        self.fields['color'].widget.attrs['min'] = 1
        self.fields['marca'].widget.attrs['min'] = 1
        self.fields['talla'].widget.attrs['min'] = 1
        self.fields['porcentaje'].widget.attrs['max'] = 99
    def clean(self):
        nombre = self.cleaned_data['nombre']
        marca = self.cleaned_data['marca']
        talla = self.cleaned_data['talla']
        color = self.cleaned_data['color']
        if Producto.objects.filter(nombre=nombre, marca=marca, talla=talla, color=color).exists():
            pass
    class Meta:
        model= Producto
        fields= ['categoria','nombre','precio', 'stock','porcentaje','color','talla','marca'] 
