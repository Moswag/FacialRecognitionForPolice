from django.conf.urls import url
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from main.views import FileView
from . import views

urlpatterns = [
    url(r'^$', views.index),
    url(r'^add_user', views.addUser),
    url(r'^save_user', views.saveUser),
    url(r'^view_users', views.viewUsers),
    url(r'^success$', views.success),

    url(r'^add_citizen', views.addCitizen),
    url(r'^save_citizen', views.saveCitizen),
    url(r'^view_citizens', views.viewCitizens),

    path('wanted_citizen/<int:citizen_id>/',views.wantedCitizen,name='wanted_citizen'),
    path('free_citizen/<int:citizen_id>/',views.freeCitizen,name='free_citizen'),




    url(r'^login$', views.login),
    url(r'^logout', views.logout_view),
    url(r'^detectImage', views.detectImage),
    url(r'^detectWithWebcam', views.detectWithWebcam),
    url(r'^upload', FileView.as_view(), name='file-upload'),

    url(r'^spotted_criminals', views.spottedCriminals),
    path('thief_location/<int:thief_id>/',views.viewThiefLocation,name='thief_location'),
    path('found_thief/<int:thief_id>/', views.foundThief, name='found_thief'),

    url(r'^reports', views.viewReports),





]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
