from django.urls import path
from .views import (
    TodoDetailApiView
)

urlpatterns = [
    path('api/<int:uebung_id>/<int:user_id>/', TodoDetailApiView.as_view())
]