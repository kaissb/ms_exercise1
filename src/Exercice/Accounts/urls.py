from django.urls import path
from . import views
urlpatterns = [
    #path('admin/', admin.site.urls),
    path("login_user",views.login_user,name="login_user"),
    path("Home",views.Home,name="Home"),
    path("UploadCsv",views.UploadCsv,name="UploadCsv"),
    path("logout_view",views.logout_view,name="logout_view")
]

from django.conf.urls.static import static
from django.conf import settings
urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)