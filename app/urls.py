"""
Definition of urls for polls viewing and voting.
"""

from django.conf.urls import url
from app.models import Note
from . import views

import app.views
app_name = 'notebooks'
urlpatterns = [
    url(r'^index', app.views.index, name='index'),
    url(r'^(?P<note_id>[0-9]+)/$', app.views.detail, name='detail'),
    url(r'^(?P<note_id>[0-9]+)/delete/$', app.views.NoteDelete.as_view(), name = 'delete'),
    url(r'^edit/(?P<note_id>[0-9]+)/$', app.views.NoteEdit.as_view(model=Note, success_url="/notebooks/index"), name = 'edit'),
    url(r'^create/$', app.views.NoteCreate.as_view(model=Note, success_url="/notebooks/index"), name = 'create'),
]


