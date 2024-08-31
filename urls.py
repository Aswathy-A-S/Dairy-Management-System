"""diaryproject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from textwrap import indent
from django.contrib import admin
from django.urls import path
from diaryapp import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', views.login),
    path('customerregister/', views.cregister),
    path('distributorregister/', views.distributorreg),
    path('index/', views.index),
    path('', views.index),
    path('dreg/', views.distributorreg),
    path('darea/', views.distributionarea),
    path('adminaddcategory/', views.adminaddcategory),
    path('adminaddproducts/', views.adminaddproduct),
    path('payment/',views.paymentform),
    path('adminviewdistributer/',views.adminviewdistributer),
    path('adminviewpendingdistributer/',views.adminviewpendingdistributer),
    path('deletedistributer/',views.deletedistributer),
    path('adminviewuser/',views.adminviewuser),
    path('adminviewdistributionarea/',views.adminviewdistributionarea),
    path('adminhome/',views.adminhome),
    path('userhome/',views.userhome),
    path('distributorhome/',views.distributorhome),
    path('distributorviewcustomer/',views.distributorviewcustomer),
    path('distributorviewarea/',views.distributorviewarea),
    path('distributorviewproducts/',views.distributorviewproducts),
    path('distributorviewcategory/',views.distributorviewcategory),
    path('customerviewproducts/',views.customerviewproducts),
    path('customerviewcategory/',views.customerviewcategory),
    path('approvedistributer/',views.approvedistributer),
    path('rejectdistributer/',views.rejectdistributer),
    path('pay2/',views.productpayment),
    path('orderproduct/',views.orderproduct),
    path('productpayment/',views.productpayment),
    path('delcat/',views.admdeletecategory),
    path('updatecate/',views.updatecategories),
    path('upcategory/',views.updatecategory),
    path('uproducts/',views.updateproducts),
    path('admdeluproducts/',views.admindeleteproducts),
    path('updateproduct/',views.dist_updateproduct),
    path('userviewmyorder/',views.uservieworder),
    path('productpay/',views.productpay),
    path('Distupdatecategory/',views.Distupdatecategory),
    path('Distdeletecategory/',views.Distdeletecategory),
    path('adminvieworders/',views.adminvieworders),

   
    
    

]
