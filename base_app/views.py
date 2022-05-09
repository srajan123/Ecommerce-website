from django.shortcuts import render
from django.http import JsonResponse
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth.models import User


from .models import Product
from .products import products
from .serialize_data import SerializeProduct, SerializeUser, UserSerializerWithToken

from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView

from django.contrib.auth.hashers import make_password
from rest_framework import status


class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)

        serializer = UserSerializerWithToken(self.user).data
        for k, v in serializer.items():
            data[k] = v

        return data


class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer


@api_view(["GET"])
def fetchProducts(request):
    products = Product.objects.all()
    SerialisedData = SerializeProduct(products, many=True)
    return Response(SerialisedData.data)


@api_view(["GET"])
def fetchProduct(request, pk):
    product = Product.objects.get(_id=pk)
    SerialisedData = SerializeProduct(product, many=False)
    return Response(SerialisedData.data)


@api_view(["POST"])
def registerUser(request):
    data = request.data
    try:
        user = User.objects.create(
            first_name=data["name"],
            username=data["email"],
            email=data["email"],
            password=make_password(data["password"]),
        )

        serializer = UserSerializerWithToken(user, many=False)
        return Response(serializer.data)

    except:
        message = {"detail": "User with this email already exists"}
        return Response(message, status=status.HTTP_400_BAD_REQUEST)


@api_view(["GET"])
@permission_classes(IsAuthenticated)
def fetchUser(request, pk):
    user = request.user
    SerialisedData = SerializeUser(user, many=False)
    return Response(SerialisedData.data)
