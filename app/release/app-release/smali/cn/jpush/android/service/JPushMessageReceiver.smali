.class public abstract Lcn/jpush/android/service/JPushMessageReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotification(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)Landroid/app/Notification;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .registers 3

    return-void
.end method

.method public onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .registers 3

    return-void
.end method

.method public onCommandResult(Landroid/content/Context;Lcn/jpush/android/api/CmdMessage;)V
    .registers 3

    return-void
.end method

.method public onConnected(Landroid/content/Context;Z)V
    .registers 3

    return-void
.end method

.method public onMessage(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V
    .registers 3

    invoke-static {p1, p2}, Lcn/jpush/android/helper/c;->a(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V

    return-void
.end method

.method public onMobileNumberOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .registers 3

    return-void
.end method

.method public onMultiActionClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1, p2}, Lcn/jpush/android/helper/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onNotifyMessageArrived(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .registers 4

    const-string v0, "cn.jpush.android.intent.NOTIFICATION_RECEIVED"

    invoke-static {p1, p2, v0}, Lcn/jpush/android/helper/c;->a(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyMessageDismiss(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .registers 3

    return-void
.end method

.method public onNotifyMessageOpened(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .registers 4

    const-string v0, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-static {p1, p2, v0}, Lcn/jpush/android/helper/c;->a(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Lcn/jpush/android/helper/c;->a()Lcn/jpush/android/helper/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0, p2}, Lcn/jpush/android/helper/c;->a(Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V

    return-void
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .registers 3

    return-void
.end method
