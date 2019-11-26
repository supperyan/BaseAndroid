.class public Lcn/jpush/android/service/JNotifyActivity;
.super Landroid/app/Activity;


# static fields
.field private static final TAG:Ljava/lang/String; = "JNotifyActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcn/jpush/android/service/JNotifyActivity;->finish()V

    return-void

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcn/jpush/android/service/JNotifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jpush/android/f/b;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    :goto_d
    invoke-virtual {p0}, Lcn/jpush/android/service/JNotifyActivity;->finish()V

    goto :goto_2d

    :catchall_11
    move-exception p1

    :try_start_12
    const-string v0, "JNotifyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle intent failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2e

    goto :goto_d

    :goto_2d
    return-void

    :catchall_2e
    move-exception p1

    invoke-virtual {p0}, Lcn/jpush/android/service/JNotifyActivity;->finish()V

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/JNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jpush/android/service/JNotifyActivity;->handleIntent(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcn/jpush/android/service/JNotifyActivity;->handleIntent(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method
