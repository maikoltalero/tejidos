# Generated by Django 4.0.6 on 2022-08-11 12:22

from django.db import migrations, models
import gestion.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Backup',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(blank=True, default='Copia de Seguridad', max_length=200)),
                ('archivo', models.FileField(upload_to='backup', validators=[gestion.models.validate_file_extension])),
                ('fecha', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
