from django.db import models
from django.contrib.auth.models import User


class Product(models.Model):
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    name = models.CharField(max_length=190)
    image = models.ImageField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    rating = models.DecimalField(max_digits=2, decimal_places=1)
    price = models.DecimalField(max_digits=7, decimal_places=2)
    countInStock = models.IntegerField(null=True, default=0)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return self.name


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    deliveryCharge = models.DecimalField(max_digits=7, decimal_places=2)
    total = models.DecimalField(max_digits=7, decimal_places=2)
    isPaid = models.BooleanField(default=False)
    paidAt = models.DateTimeField(auto_now_add=False, null=True, blank=True)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return str(self.total)


class Address(models.Model):
    order = models.OneToOneField(Order, on_delete=models.CASCADE, null=True)
    country = models.CharField(max_length=190)
    city = models.CharField(max_length=190)
    address = models.CharField(max_length=190)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return self.address


class OrderItem(models.Model):
    order = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    price = models.DecimalField(max_digits=7, decimal_places=2)
    name = models.CharField(max_length=190)
    image = models.CharField(max_length=190, null=True, blank=True)
    quantity = models.IntegerField(null=True, default=0)
    _id = models.AutoField(primary_key=True, editable=False)

    def __str__(self):
        return str(self.name)
