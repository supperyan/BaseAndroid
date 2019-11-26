.class public Lcn/jpush/android/service/DownloadActivity;
.super Landroid/app/Activity;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DownloadActivity"

    const-string v0, "DownloadActivity onCreate"

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :try_start_e
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_15

    :catchall_15
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadActivity;->finish()V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "DownloadActivity"

    const-string v1, "DownloadActivity onNewIntent"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_11

    :catchall_11
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadActivity;->finish()V

    return-void
.end method

.method protected final onRestart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected final onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected final onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
