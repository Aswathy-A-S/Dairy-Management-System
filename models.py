import email
from pyexpat import model
from statistics import mode
from django.db import models

# Create your models here.


class Customer(models.Model):
    cname = models.CharField(null=True, max_length=100)
    cphone = models.IntegerField(null=True)
    cemail = models.EmailField(null=True, max_length=100)
    caddress = models.CharField(null=True, max_length=100)


class Distributor(models.Model):
    dname = models.CharField(null=True, max_length=100)
    dphone = models.IntegerField(null=True)
    demail = models.EmailField(null=True, max_length=100)
    daddress = models.CharField(null=True, max_length=100)
    status = models.CharField(null=True, max_length=100)



class Login(models.Model):
    uname = models.CharField(null=True, max_length=100)
    password = models.CharField(null=True, max_length=100)
    usertype = models.CharField(null=True, max_length=100)


class Distributionarea(models.Model):
    darea = models.CharField(null=True, max_length=100)
    dshopno = models.IntegerField(null=True)


class Adminaddproduct(models.Model):
    fpdtname = models.CharField(null=True, max_length=100)
    fpdtdesc = models.CharField(null=True, max_length=100)
    productprice = models.CharField(null=True, max_length=100)
    fpdtqty = models.CharField(null=True, max_length=100)

class Farmeraddcategory(models.Model):
    fcategoryname = models.CharField(null=True, max_length=100)
    image = models.FileField(max_length=100, null=True)
    stock = models.CharField(max_length=100, null=True)


class Paymentform(models.Model):
    pname = models.CharField(null=True, max_length=100)
    pcardnumber = models.IntegerField(null=True)
    pbillingaddress = models.CharField(null=True, max_length=100)
    pcvv = models.IntegerField(null=True)
    pmonth = models.IntegerField(null=True)
    pyear = models.IntegerField(null=True)

class Subscriptionplan(models.Model):
    subname = models.CharField(null=True, max_length=100)
    quantity = models.CharField(null=True, max_length=100)
    time = models.CharField(null=True, max_length=100)
    planprice = models.IntegerField(null=True, max_length=100)


class Booksubcription(models.Model):
    Customerid=models.ForeignKey(Customer,on_delete=models.CASCADE,null=True)
    planid=models.CharField(null=True, max_length=100)
    subplan = models.CharField(null=True, max_length=100)
    duration = models.CharField(null=True, max_length=100)
    amount = models.CharField(null=True, max_length=100)
    payment = models.CharField(null=True, max_length=100, default='pending')

class Productorder(models.Model):
    pname=models.CharField(null=True, max_length=100)
    pid=models.CharField(null=True, max_length=100)
    username=models.CharField(null=True, max_length=100)
    uid=models.CharField(null=True, max_length=100)
    qty=models.CharField(null=True, max_length=100)
    amount=models.CharField(null=True, max_length=100)
    payment = models.CharField(null=True, max_length=100, default='pending')

