# Generated by Django 4.0.6 on 2022-08-21 03:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facturas', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='detalle',
            name='precioX',
            field=models.IntegerField(default=0),
        ),
    ]
