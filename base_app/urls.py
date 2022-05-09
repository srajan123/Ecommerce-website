from django.urls import path
from . import views


urlpatterns = [
    path(
        "user/token/", views.MyTokenObtainPairView.as_view(), name="token_obtain_pair"
    ),
    path("user/register/", views.registerUser, name="register"),
    path("products/", views.fetchProducts, name="products"),
    path("products/<int:pk>", views.fetchProduct, name="product"),
    path("user/profile", views.fetchUser, name="user"),
]
