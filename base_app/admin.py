from django.contrib import admin
from .models import Product, Order, OrderItem, Address

# Register your models here.

admin.site.register(Product)
admin.site.register(Order)
admin.site.register(Address)
admin.site.register(OrderItem)
