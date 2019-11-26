.class public Lcn/jpush/android/service/PushService;
.super Landroid/app/Service;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
