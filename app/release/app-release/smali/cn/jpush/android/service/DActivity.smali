.class public Lcn/jpush/android/service/DActivity;
.super Landroid/app/Activity;


# static fields
.field private static final TAG:Ljava/lang/String; = "DActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleStart()V
    .registers 5

    const-string v0, "DActivity"

    :try_start_2
    sget-boolean v1, Lcn/jiguang/internal/JConstants;->AT_I:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcn/jpush/android/service/DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/api/JCoreManager;->init(Landroid/content/Context;)V

    :cond_d
    invoke-virtual {p0}, Lcn/jpush/android/service/DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcn/jiguang/ag/a;->a(Landroid/content/Context;I)V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_17

    goto :goto_29

    :catchall_17
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle start error#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    :try_start_29
    invoke-virtual {p0}, Lcn/jpush/android/service/DActivity;->finish()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish error#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DActivity"

    const-string v0, "DActivity oncreate"

    invoke-static {p1, v0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/DActivity;->handleStart()V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "DActivity"

    const-string v0, "DActivity onNewIntent"

    invoke-static {p1, v0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/DActivity;->handleStart()V

    return-void
.end method
