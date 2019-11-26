.class public Lcn/jpush/android/helper/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/helper/c$a;
    }
.end annotation


# static fields
.field private static a:Lcn/jpush/android/helper/c;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jpush/android/helper/c;->b:Landroid/os/Handler;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_37

    :catchall_19
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create handler failed,error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMessageReceiverHelper"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/helper/c;->b:Landroid/os/Handler;

    :goto_37
    return-void
.end method

.method public static a()Lcn/jpush/android/helper/c;
    .registers 2

    sget-object v0, Lcn/jpush/android/helper/c;->a:Lcn/jpush/android/helper/c;

    if-nez v0, :cond_17

    const-class v0, Lcn/jpush/android/helper/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jpush/android/helper/c;->a:Lcn/jpush/android/helper/c;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/helper/c;

    invoke-direct {v1}, Lcn/jpush/android/helper/c;-><init>()V

    sput-object v1, Lcn/jpush/android/helper/c;->a:Lcn/jpush/android/helper/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcn/jpush/android/helper/c;->a:Lcn/jpush/android/helper/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click notification action with extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMessageReceiverHelper"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_20
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".permission.JPUSH_MESSAGE"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_55

    goto :goto_6e

    :catchall_55
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Click notification sendBroadcast :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V
    .registers 9

    const-string v0, "JMessageReceiverHelper"

    if-eqz p0, :cond_7d

    if-nez p1, :cond_7

    goto :goto_7d

    :cond_7
    const-string v1, "not found user push message,use old action to user"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.jpush.android.intent.MESSAGE_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->senderId:Ljava/lang/String;

    const-string v3, "cn.jpush.android.APPKEY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->message:Ljava/lang/String;

    const-string v3, "cn.jpush.android.MESSAGE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->contentType:Ljava/lang/String;

    const-string v3, "cn.jpush.android.CONTENT_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->title:Ljava/lang/String;

    const-string v3, "cn.jpush.android.TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->extra:Ljava/lang/String;

    const-string v3, "cn.jpush.android.EXTRA"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->messageId:Ljava/lang/String;

    const-string v3, "cn.jpush.android.MSG_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcn/jpush/android/api/CustomMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcn/jpush/android/api/CustomMessage;->appId:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%s.permission.JPUSH_MESSAGE"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send broadcast to app: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcn/jpush/android/api/CustomMessage;->appId:Ljava/lang/String;

    aput-object p1, v2, v6

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7d
    :goto_7d
    const-string p0, "Send custom message to app failed, param is invalid!"

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;Ljava/lang/String;)V
    .registers 11

    const-string v0, "file://"

    const-string v1, ".permission.JPUSH_MESSAGE"

    const-string v2, ""

    const-string v3, "JMessageReceiverHelper"

    if-eqz p0, :cond_1cd

    if-eqz p1, :cond_1cd

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto/16 :goto_1cd

    :cond_14
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_19
    const-string p2, "Send push received broadcast to developer defined receiver"

    invoke-static {v3, p2}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "cn.jpush.android.MSG_ID"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->msgId:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cn.jpush.android.NOTIFICATION_ID"

    iget v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationId:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "cn.jpush.android.ALERT"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationContent:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cn.jpush.android.ALERT_TYPE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcn/jpush/android/api/NotificationMessage;->notificationAlertType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    const-string v5, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationTitle:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationExtras:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "cn.jpush.android.EXTRA"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationExtras:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    iget v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_81

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationBigText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    const-string v5, "cn.jpush.android.BIG_TEXT"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationBigText:Ljava/lang/String;

    :goto_7d
    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_81
    iget v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_93

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationInbox:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, "cn.jpush.android.INBOX"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationInbox:Ljava/lang/String;

    goto :goto_7d

    :cond_93
    iget v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationStyle:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a5

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a5

    const-string v5, "cn.jpush.android.BIG_PIC_PATH"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    goto :goto_7d

    :cond_a5
    :goto_a5
    iget v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationPriority:I

    if-eqz v5, :cond_bf

    const-string v5, "cn.jpush.android.NOTI_PRIORITY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcn/jpush/android/api/NotificationMessage;->notificationPriority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationCategory:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ce

    const-string v5, "cn.jpush.android.NOTI_CATEGORY"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationCategory:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationSmallIcon:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_dd

    const-string v5, "cn.jpush.android.NOTIFICATION_SMALL_ICON"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationSmallIcon:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd
    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->notificationLargeIcon:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ec

    const-string v5, "cn.jpush.android.NOTIFICATION_LARGE_ICON"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->notificationLargeIcon:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec
    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->developerArg0:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fb

    const-string v5, "cn.jpush.android.NOTIFICATION_DEVELOPER_ARG0"

    iget-object v6, p1, Lcn/jpush/android/api/NotificationMessage;->developerArg0:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_fb
    iget-boolean v5, p1, Lcn/jpush/android/api/NotificationMessage;->isRichPush:Z

    if-eqz v5, :cond_17b

    iget v5, p1, Lcn/jpush/android/api/NotificationMessage;->richType:I

    if-eqz v5, :cond_123

    iget v5, p1, Lcn/jpush/android/api/NotificationMessage;->richType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_123

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->_webPagePath:Ljava/lang/String;

    if-eqz v5, :cond_123

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->_webPagePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_123

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->_webPagePath:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/jpush/android/api/NotificationMessage;->_webPagePath:Ljava/lang/String;

    const-string v0, "cn.jpush.android.HTML_PATH"

    iget-object v2, p1, Lcn/jpush/android/api/NotificationMessage;->_webPagePath:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_123
    iget-object v0, p1, Lcn/jpush/android/api/NotificationMessage;->showResourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17b

    iget-object v0, p1, Lcn/jpush/android/api/NotificationMessage;->showResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcn/jpush/android/api/NotificationMessage;->msgId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcn/jpush/android/j/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcn/jpush/android/api/NotificationMessage;->showResourceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_140
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_172

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_158

    invoke-static {v6}, Lcn/jpush/android/j/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_169

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_165
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_140

    :cond_169
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_165

    :cond_172
    const-string v2, "cn.jpush.android.HTML_RES"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17b
    invoke-virtual {v4, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p2, p1, Lcn/jpush/android/api/NotificationMessage;->appId:Ljava/lang/String;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcn/jpush/android/api/NotificationMessage;->appId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_19e
    .catchall {:try_start_19 .. :try_end_19e} :catchall_19f

    goto :goto_1cc

    :catchall_19f
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNotificationReceivedBroadcast error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcn/jpush/android/api/NotificationMessage;->appId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v4, p1}, Lcn/jpush/android/j/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :goto_1cc
    return-void

    :cond_1cd
    :goto_1cd
    const-string p0, "Send broad cast to app failed,the params are incorrect!"

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    :try_start_0
    const-string v0, "code"

    const/4 v1, -0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "cmd"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1f

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onConnected(Landroid/content/Context;Z)V

    goto :goto_5c

    :cond_1f
    if-nez v1, :cond_30

    if-nez v0, :cond_27

    invoke-virtual {p0, p1, v2}, Lcn/jpush/android/service/JPushMessageReceiver;->onRegister(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5c

    :cond_27
    new-instance v3, Lcn/jpush/android/api/CmdMessage;

    invoke-direct {v3, v1, v0, v2, p2}, Lcn/jpush/android/api/CmdMessage;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    :goto_2c
    invoke-virtual {p0, p1, v3}, Lcn/jpush/android/service/JPushMessageReceiver;->onCommandResult(Landroid/content/Context;Lcn/jpush/android/api/CmdMessage;)V

    goto :goto_5c

    :cond_30
    const/4 v3, 0x1

    if-ne v1, v3, :cond_37

    invoke-virtual {p0, p1, v3}, Lcn/jpush/android/service/JPushMessageReceiver;->onConnected(Landroid/content/Context;Z)V

    goto :goto_5c

    :cond_37
    const/16 v3, 0x2710

    if-ne v1, v3, :cond_5c

    new-instance v3, Lcn/jpush/android/api/CmdMessage;

    invoke-direct {v3, v1, v0, v2, p2}, Lcn/jpush/android/api/CmdMessage;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    goto :goto_2c

    :catchall_41
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callCmdMessage failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JMessageReceiverHelper"

    invoke-static {p1, p0}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcn/jpush/android/helper/c;->b:Landroid/os/Handler;

    new-instance v1, Lcn/jpush/android/helper/c$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/jpush/android/helper/c$a;-><init>(Lcn/jpush/android/helper/c;Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
