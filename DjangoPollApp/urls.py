"""
Definition of urls for DjangoPollApp.
"""

from datetime import datetime
from django.conf.urls import url, include
from django.contrib import admin
import django.contrib.auth.views
from django.contrib.auth import views as auth_views

import app.forms
import app.views

admin.autodiscover()

urlpatterns = [
    url(r'^$', app.views.root_page, name='root_page'),
    url(r'^index', app.views.index, name='index'),
    url(r'^admin/', admin.site.urls),
    url(r'^contact$', app.views.contact, name='contact'),
    url(r'^about', app.views.about, name='about'),
    url(r'^seed', app.views.seed, name='seed'),
    url(r'^notebooks/', include('app.urls')),
    url(r'^signup/$', app.views.signup, name='signup'),
    url(r'^login/$', auth_views.login, name='login'),
    #url(r'^login/$', django.contrib.auth.views.login,
    #    {
     #       'template_name': 'app/login.html',
       #     'authentication_form': app.forms.BootstrapAuthenticationForm,
        #    'extra_context':
         #   {
           #     'title': 'Log in',
           #     'year': datetime.now().year,
           # }
      #  },
       # name='login'),
    url(r'^logout/$', auth_views.logout, {'next_page': '/'}, name='logout'),
    #url(r'^logout$',
    #    django.contrib.auth.views.logout,
     #   {
     #       'next_page': '/',
      #  },
      #  name='logout')

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

]
