# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-08-29 21:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_auto_20170827_0121'),
    ]

    operations = [
        migrations.AlterField(
            model_name='students',
            name='roll_no',
            field=models.CharField(max_length=200),
        ),
    ]
