# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-09 17:38
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-31 17:48


from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Note',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('note_title', models.CharField(max_length=100)),
                ('pub_date', models.DateTimeField(verbose_name='date published')),
                ('note_description', models.CharField(max_length=200)),
            ],
        ),
    ]
