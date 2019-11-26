.class public Lcn/jpush/android/k/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/d/d;Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcn/jpush/android/k/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/k/a/e;->b:Landroid/view/WindowManager;

    iput-object p2, p0, Lcn/jpush/android/k/a/e;->c:Landroid/webkit/WebView;

    iput-object p2, p0, Lcn/jpush/android/k/a/e;->d:Landroid/widget/ImageButton;

    const-string p2, "SystemAlertWebViewCallback"

    invoke-static {p2, p2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/jpush/android/k/a/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/jpush/android/k/a/e;->b:Landroid/view/WindowManager;

    iput-object p4, p0, Lcn/jpush/android/k/a/e;->c:Landroid/webkit/WebView;

    iput-object p5, p0, Lcn/jpush/android/k/a/e;->d:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "SystemAlertWebViewCallback"

    const-string v1, "action --- close"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/k/a/e;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jpush/android/k/a/e;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/k/a/e;->d:Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/api/SystemAlertHelper;->close(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action --- startActivityByName--------activityName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----- params : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemAlertWebViewCallback"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "The activity name is null or empty, Give up.."

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcn/jpush/android/k/a/e;->a:Landroid/content/Context;

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    :try_start_2e
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_4e

    if-eqz p1, :cond_4d

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/jpush/android/k/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "cn.jpush.android.ACTIVITY_PARAM"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x1000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcn/jpush/android/k/a/e;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/jpush/android/k/a/e;->a()V

    :cond_4d
    return-void

    :catch_4e
    const-string p1, "The activity name is invalid, Give up.."

    invoke-static {v1, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
