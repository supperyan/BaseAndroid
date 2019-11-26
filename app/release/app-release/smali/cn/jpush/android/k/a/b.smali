.class public Lcn/jpush/android/k/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HostJsScope"

.field private static mWebViewHelper:Lcn/jpush/android/k/a/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static click(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcn/jpush/android/k/a/f;->click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static close(Landroid/webkit/WebView;)V
    .registers 1

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcn/jpush/android/k/a/f;->close()V

    return-void
.end method

.method public static createShortcut(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcn/jpush/android/k/a/f;->createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static download(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcn/jpush/android/k/a/f;->download(Ljava/lang/String;)V

    return-void
.end method

.method public static download(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcn/jpush/android/k/a/f;->download(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static download(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcn/jpush/android/k/a/f;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static executeMsgMessage(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcn/jpush/android/k/a/f;->executeMsgMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static setWebViewHelper(Lcn/jpush/android/k/a/f;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    sput-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    return-void
.end method

.method public static showTitleBar(Landroid/webkit/WebView;)V
    .registers 1

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcn/jpush/android/k/a/f;->showTitleBar()V

    :cond_7
    return-void
.end method

.method public static showToast(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcn/jpush/android/k/a/f;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static startActivityByIntent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcn/jpush/android/k/a/f;->startActivityByIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startActivityByName(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcn/jpush/android/k/a/f;->startActivityByName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startActivityByNameWithSystemAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object p0, Lcn/jpush/android/api/SystemAlertHelper;->a:Lcn/jpush/android/k/a/e;

    if-nez p0, :cond_5

    return-void

    :cond_5
    sget-object p0, Lcn/jpush/android/api/SystemAlertHelper;->a:Lcn/jpush/android/k/a/e;

    invoke-virtual {p0, p1, p2}, Lcn/jpush/android/k/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startMainActivity(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcn/jpush/android/k/a/f;->startMainActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static startPushActivity(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcn/jpush/android/k/a/f;->startPushActivity(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static triggerNativeAction(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcn/jpush/android/k/a/b;->mWebViewHelper:Lcn/jpush/android/k/a/f;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcn/jpush/android/k/a/f;->triggerNativeAction(Ljava/lang/String;)V

    return-void
.end method
