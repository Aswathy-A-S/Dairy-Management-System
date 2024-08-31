from asyncio.windows_events import NULL
from distutils.log import Log
from http.client import HTTPResponse
from django.http import HttpResponseRedirect
from django.shortcuts import render, HttpResponse
from .models import *
from django.db.models import Q

# Create your views here.
Login


def index(request):
    return render(request, "common/index.html")


def login(request):
    msg = ""
    if request.POST:
        email = request.POST.get("email")
        password = request.POST.get("password")
        data = Login.objects.filter(uname=email, password=password)
        if data:
            data = Login.objects.get(uname=email, password=password)
            if data.usertype == "admin":
                return HttpResponseRedirect("/adminhome")
            elif data.usertype == "customer":
                usrdata = Customer.objects.get(cemail=email)
                uid = usrdata.id
                request.session["uid"] = uid
                return HttpResponseRedirect("/userhome")
            elif data.usertype == "farmer":
                data1 = Farmer.objects.get(femail=email)
                fid = data1.id
                request.session["fid"] = fid
                return HttpResponseRedirect("/farmerhome")
            elif data.usertype == "distributor":
                state = Distributor.objects.get(demail=email)
                # print(state)
                if state.status == "approved":
                    return HttpResponseRedirect("/distributorhome")
                else:
                    msg = "Sorry you are not approved yet"
        else:
            msg = "Invalid Username/Password"
    return render(request, "common/login.html", {"msg": msg})


def cregister(request):
    msg=""
    if request.POST:
        name = request.POST.get("name")
        phone = request.POST.get("phone")
        email = request.POST.get("email")
        address = request.POST.get("address")
        password = request.POST.get("password")
        cnfpassword = request.POST.get("cnfpassword")
        if password == cnfpassword:
            abc = Customer.objects.create(
                cname=name, cphone=phone, cemail=email, caddress=address
            )
            abc.save()
            reg = Login.objects.create(
                uname=email, password=password, usertype="customer"
            )
            reg.save()
            msg="Registered Successfully"
            return HttpResponseRedirect("/login")
    return render(request, "common/customer_registration.html",{"msg":msg})


def distributorreg(request):
    msg=""
    if request.POST:
        name = request.POST.get("name")
        phone = request.POST.get("phone")
        email = request.POST.get("email")
        address = request.POST.get("address")
        password = request.POST.get("password")
        cnfpassword = request.POST.get("cnfpassword")
        if password == cnfpassword:
            dreg = Distributor.objects.create(
                dname=name,
                dphone=phone,
                demail=email,
                daddress=address,
                status="requested",
            )
            dreg.save()
            dist = Login.objects.create(
                uname=email, password=password, usertype="distributor"
            )
            dist.save()
            msg="Registered Successfully"
            return HttpResponseRedirect("/login")

    return render(request, "common/distributor_registration.html",{"msg":msg})




def distributionarea(request):
    if request.POST:
        aname = request.POST.get("name")
        shopno = request.POST.get("shopno")
        darea = Distributionarea.objects.create(darea=aname, dshopno=shopno)
        darea.save()
    return render(request, "admin/distribution_area.html")

def addsubplan(request):
    if request.POST:
        pname = request.POST.get("subname")
        pprice = request.POST.get("planprice")
        quantity = request.POST.get("qty")
        time = request.POST.get("days")
        subplan = Subscriptionplan.objects.create(
            subname=pname, quantity=quantity, time=time, planprice=pprice)
        subplan.save()
    return render(request, "admin/add_sub_plan.html")


def adminaddcategory(request):
    msg=""
    if request.POST:
        categoryname = request.POST.get("name")
        stock = request.POST.get("stock")
        cimg = request.FILES["cimg"]
        fcategory = Farmeraddcategory.objects.create(
            fcategoryname=categoryname, image=cimg,stock=stock)
        fcategory.save()
        msg="Category Added Successfully"
    return render(request,"admin/adminaddcategory.html",{"msg":msg})


def updatecategory(request):
    if request.POST:
        categoryname = request.POST.get("name")
        cimg = request.FILES["cimg"]
        updatecate = Farmeraddcategory.objects.update(
            fcategoryname=categoryname, image=cimg)


def adminaddproduct(request):
    # uid = request.session["uid"]
    msg=""
    if request.POST:
        pdtname = request.POST.get("pname")
        pdtdesc = request.POST.get("pdescription")
        price = request.POST.get("price")
        pdtqty = request.POST.get("pquantity")
        uid = request.session["uid"]
        print(uid)

        fproduct = Adminaddproduct.objects.create(
            fpdtname=pdtname,
            fpdtdesc=pdtdesc,
            productprice=price,
            fpdtqty=pdtqty,

            # fid=data,
        )
        fproduct.save()
        msg="Product Added Successfully"
        return HttpResponseRedirect("/adminaddproducts")
    return render(request, "admin/adminaddproduct.html",{"msg":msg})


def paymentform(request):
    if request.POST:
        cardname = request.POST.get("cardname")
        cardno = request.POST.get("cardnumber")
        cardaddress = request.POST.get("cardaddress")
        cvv = request.POST.get("cvv")
        expirymonth = request.POST.get("expirymonth")
        expiryyear = request.POST.get("expiryyear")
        carddata = Paymentform.objects.create(
            pname=cardname,
            pcardnumber=cardno,
            pbillingaddress=cardaddress,
            pcvv=cvv,
            pmonth=expirymonth,
            pyear=expiryyear,
        )
        carddata.save()
    return render(request, "user/payment_form.html")



def adminhome(request):
    return render(request, "admin/adminhome.html")


def userhome(request):
    return render(request, "user/userhome.html")


def distributorhome(request):
    return render(request, "distributor/distributorhome.html")





########## -Admin ViewData-##########


def adminviewdistributer(request):
    data = Distributor.objects.filter(status="approved")
    return render(request, "admin/adminviewdistributer.html", {"data": data})


def adminviewpendingdistributer(request):
    data = Distributor.objects.filter(status="requested")
    return render(request, "admin/adminviewpendingdistributer.html", {"data": data})


def approvedistributer(request):
    msg=""
    if request.GET:
        id = request.GET.get("id")
        data = Distributor.objects.filter(id=id).update(status="approved")
        msg="Distributor Approved"
    return HttpResponseRedirect("/adminviewpendingdistributer?msg="+msg)


def rejectdistributer(request):
    msg=""
    if request.GET:
        id = request.GET.get("id")
        data = Distributor.objects.filter(id=id).update(status="rejected")
        msg="Rejected Distributor"
    return HttpResponseRedirect("/adminviewpendingdistributer?msg="+msg)


def deletedistributer(request):
    msg=""
    if request.GET:
        id = request.GET.get("id")
        data = Distributor.objects.filter(id=id).delete()
        msg="Rejected Distributor"
    return HttpResponseRedirect("/adminviewdistributer?msg="+msg)


def adminviewuser(request):
    udata = Customer.objects.all()
    return render(request, "admin/adminviewuser.html", {"udata": udata})


def adminviewdistributionarea(request):
    ddata = Distributionarea.objects.all()
    return render(request, "admin/adminviewdistributionarea.html", {"ddata": ddata})



########## -Distributor ViewData-##########


def distributorviewcustomer(request):
    duser = Customer.objects.all()
    return render(request, "distributor/distributorviewcustomer.html", {"duser": duser})


def distributorviewarea(request):
    distarea = Distributionarea.objects.all()
    return render(
        request, "distributor/distributorviewarea.html", {"distarea": distarea}
    )


def distributorviewproducts(request):
    distpdt = Adminaddproduct.objects.all()
    return render(request, "distributor/distributorviewproducts.html", {"distpdt": distpdt})


def distributorviewcategory(request):
    viewcate = Farmeraddcategory.objects.all()
    return render(
        request,
        "distributor/distributorviewcategory.html",
        {"viewcate": viewcate},
    )

    ########## -Farmer ViewData-##########

def customerviewproducts(request):
    usrpdt = Adminaddproduct.objects.all()

    zero = 0

    return render(request, "user/userviewproducts.html", {"usrpdt": usrpdt})


def orderproduct(request):
    uid = request.session["uid"]
    abc = Customer.objects.filter(id=uid)
    cname = abc[0].cname

    if request.POST:
        name = request.POST.get("pname")
        pid = request.POST.get("pid")
        price = request.POST.get("productprice")
        # desc = request.POST.get("desc")
        qty = request.POST.get("qty")
        uid = request.session["uid"]
        total = int(qty)*float(price)
        # print("\n\n\n\n\n\n\n\n\nn\n\n")
        # print(total)

        insertqry = Productorder.objects.create(
            pname=name, pid=pid, username=cname, qty=qty, amount=total, uid=uid)
        insertqry.save()
    return HttpResponseRedirect("/pay2?id="+pid)
   


def productpayment(request):
    uid = request.session["uid"]
    pid=request.GET.get('id')
    vie=Productorder.objects.filter(pid=pid,uid=uid)
    abc = Customer.objects.filter(id=uid)
    cname = abc[0].cname
    print("-----------------")
    if request.POST:
        abc = Customer.objects.filter(id=uid)
        cname = abc[0].cname
        uid = request.session["uid"]
        pid = request.POST.get("pid")
        print(pid)
        print(uid)
        # pro=Productorder.objects.filter(uid=uid,pid=pid).update(payment="paid")

        # productpay = Productorder.objects.filter(Q(pid=pid) & Q(
        #     payment='pending') & Q(uid=uid) & Q(username=cname)).update(payment="paid")
        
    return render (request,"user/payment2.html",{"vie":vie})

def productpay (request):
    msg=""
    if request.POST:
        uid = request.session["uid"]
        pid = request.POST.get("pid")
        print("inside payment POST function")
        payqry = Productorder.objects.filter(Q(pid=pid) & Q(
            uid=uid) & Q(payment='pending')).update(payment='paid')
        msg="Payment Successfully"
    return HttpResponseRedirect("/userhome?msg"+msg)


def customerviewcategory(request):
    usrcategory = Farmeraddcategory.objects.all()
    return render(request, "user/userviewcategory.html", {"usrcategory": usrcategory})



def delet(request):
    for i in range(35, 36):
        abcd = Productorder.objects.filter(id=i).delete()
    return HttpResponse("Successfully deleted")

def subpayment(request):
    uid = request.session["uid"]
    planid = request.POST.get("pid")
    subplan = request.POST.get("name")
    time = request.POST.get("time")
    price = request.POST.get("price")

    inpqry = Booksubcription.objects.create(
        subplan=subplan, duration=time, amount=price, Customerid_id=uid, planid=planid, payment='pending')
    inpqry.save()
    #
    return render(request, "user/payment.html", {"uid": uid, "planid": planid})

def viewsub(request):
    msg = ""
    uid = request.session["uid"]
    if "sub" in request.POST:
        Booksubcription.objects.filter(Customerid=uid).exists()
        msg = "Already Subscribed"
    viewsub = Subscriptionplan.objects.all()
    return render(request, "user/viewsubscription.html", {"viewsub": viewsub, "msg": msg})


def distviewsub(request):
    viewsub = Subscriptionplan.objects.all()

    return render(request, "distributor/viewsubscriptionplan.html", {"viewsub": viewsub})


def udp(request):
    for i in range(45, 94):
        abcd = Booksubcription.objects.filter(id=i).delete()
    return HttpResponse("Successfully deleted")


def adminviewsubuser(request):
    subusers = Booksubcription.objects.all()

    return render(request, "admin/viewsubscribedusers.html", {"subusers": subusers})




def admdeletecategory(request):
    id=request.GET.get("id")
    if Farmeraddcategory.objects.filter(id=id).delete():
        return HttpResponseRedirect("/adminviewcategory")
    
def updatecategory(request):
    id=request.GET.get("id")
    get=Farmeraddcategory.objects.filter(id=id)
    if request.POST:
        categoryname = request.POST.get("name")
        stock = request.POST.get("stock")
        cimg = request.FILES["cimg"]
        fcategory = Farmeraddcategory.objects.filter(id=id).update(
            fcategoryname=categoryname, image=cimg,stock=stock)
    return render (request,"admin/updatecategory.html",{"get":get})

def updatecategories(request):
    return render(request,"admin/updatecategory.html")
    

def admindeleteproducts(request):
    id=request.GET.get("id")
    if Adminaddproduct.objects.filter(id=id).delete():
        return HttpResponseRedirect("/adminviewproduct")
    
def updatepro(request):
    msg=""
    id=request.GET.get("id")
    get=Adminaddproduct.objects.filter(id=id)
    if request.POST:
        pdtname = request.POST.get("pname")
        pdtdesc = request.POST.get("pdescription")
        price = request.POST.get("price")
        pdtqty = request.POST.get("pquantity")
        updatepro = Adminaddproduct.objects.filter(id=id).update(
            pdtname=pdtname, pdtdesc=pdtdesc,price=price,pdtqty=pdtqty)
        msg="Product Successfully Updated"
    # return HttpResponseRedirect("/adminviewcategory")
    return render (request,"admin/updateproducts.html",{"get":get},{"msg",msg})

def updateproducts(request):
    msg=""
    id=request.GET.get("id")
    abc=Adminaddproduct.objects.filter(id=id)
    if request.POST:
        pdtname = request.POST.get("pname")
        pdtdesc = request.POST.get("pdescription")
        price = request.POST.get("price")
        pdtqty = request.POST.get("pquantity")
        updatepro = Adminaddproduct.objects.filter(id=id).update(
            fpdtname=pdtname, fpdtdesc=pdtdesc,productprice=price,fpdtqty=pdtqty)
        msg="Product Successfully Updated"
        # return HttpResponseRedirect("/adminviewproducts")
    return render (request,"admin/updateproducts.html",{"abc":abc,"msg":msg})

def uservieworder(request):
    uid=request.session["uid"]
    view=Productorder.objects.filter(uid=uid)
    return render(request,"user/viewmyorder.html",{"view":view})

def viewusersubplan(request):
   
    uid=request.session["uid"]
    
    view=Booksubcription.objects.filter(Customerid=uid)

    

    return render(request,"user/mysubplan.html",{"view":view})

def unsubscribe(request):
    msg=""
    id=request.GET.get("id")
    uid=request.session["uid"] 
    update=Booksubcription.objects.filter(id=id,Customerid_id=uid).delete()
    msg="Plan Unsubscribed"

    return HttpResponseRedirect("/userviewsubplan?msg="+msg)

def distviewsubcustomers(request):
    # uid=request.session["uid"]
    view=Booksubcription.objects.all()

    return render(request,"distributor/subscribedcustomers.html",{"view":view})


def Distupdatecategory(request):
    msg=""
    id=request.GET.get("id")
    get=Farmeraddcategory.objects.filter(id=id)
    if request.POST:
        categoryname = request.POST.get("name")
        stock = request.POST.get("stock")
        cimg = request.FILES["cimg"]
        fcategory = Farmeraddcategory.objects.filter(id=id).update(
            fcategoryname=categoryname, image=cimg,stock=stock)
        msg="Category Updated"
        return HttpResponseRedirect("/distributorviewcategory")
    return render (request,"distributor/updatecate.html",{"get":get,"msg":msg})

def Distupdatecategory(request):
    msg=""
    id=request.GET.get("id")
    get=Farmeraddcategory.objects.filter(id=id)
    if request.POST:
        categoryname = request.POST.get("name")
        stock = request.POST.get("stock")
        cimg = request.FILES["cimg"]
        fcategory = Farmeraddcategory.objects.filter(id=id).update(
            fcategoryname=categoryname, image=cimg,stock=stock)
        msg="Category Updated"
        return HttpResponseRedirect("/distributorviewcategory")
    return render (request,"distributor/updatecate.html",{"get":get,"msg":msg})

def Distdeletecategory(request):
    msg=""
    id=request.GET.get("id")
    if Farmeraddcategory.objects.filter(id=id).delete():
        msg="Category Deleted"
        return HttpResponseRedirect("/distributorviewcategory?msg"+msg)
    

def adminvieworders(request):
    abc=Productorder.objects.all()
    return render (request,"admin/adminvieworders.html",{"abc":abc})

def dist_updateproduct(request):
    msg=""
    pid=request.GET.get("pid")
    vie=Adminaddproduct.objects.filter(id=pid)
    if request.POST:
        name=request.POST.get("pname")
        price=request.POST.get("price")
        desc=request.POST.get("desc")
        qty=request.POST.get("qty")

        update=Adminaddproduct.objects.filter(id=pid).update(fpdtname=name,fpdtdesc=desc,productprice=price,fpdtqty=qty)
        msg="product updated successfuly "
    return render(request,"distributor/updateprodut.html",{"msg":msg,"vie":vie})

def admviewplan(request):
    abc=Subscriptionplan.objects.all
    return render(request,"admin/viewsubscriptionplan.html",{"abc":abc})
