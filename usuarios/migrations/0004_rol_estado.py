# Generated by Django 4.0.6 on 2022-09-16 00:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usuarios', '0003_alter_usuario_documento'),
    ]

    operations = [
        migrations.AddField(
            model_name='rol',
            name='estado',
            field=models.CharField(choices=[('Activo', 'Activo'), ('Inactivo', 'Inactivo'), ('Anulado', 'Anulado')], default='Activo', max_length=10, verbose_name='Estado'),
        ),
    ]
