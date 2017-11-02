"""
Definition of models.
"""

from django.db.models import Sum
from django.core.urlresolvers import reverse
from django.db import models
from django.utils import timezone
from django.core.urlresolvers import reverse

from django.db import migrations, models
from . import migrations


class Note(models.Model):
    note_title = models.CharField(max_length=100)
    pub_date = models.DateTimeField(auto_now_add=True)
    note_description = models.CharField(max_length=200)

    def get_absolute_url(self):
        return reverse('app:detail', kwargs={'note_id': self.note_id})

    def __str__(self):
        return self.note_id
