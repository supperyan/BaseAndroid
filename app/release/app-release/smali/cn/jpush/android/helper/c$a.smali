.class Lcn/jpush/android/helper/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/helper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/helper/c;

.field private b:Landroid/content/Context;

.field private c:Lcn/jpush/android/service/JPushMessageReceiver;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcn/jpush/android/helper/c;Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V
    .registers 5

    iput-object p1, p0, Lcn/jpush/android/helper/c$a;->a:Lcn/jpush/android/helper/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iput-object p4, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "JMessageReceiverHelper"

    :try_start_2
    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    if-nez v1, :cond_c

    const-string v1, "intent was null"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do receiver action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_164

    const-string v2, "unsupport action type"

    if-nez v1, :cond_2e

    :try_start_2a
    invoke-static {v0, v2}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    const-string v3, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    const-string v2, "message_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v4, v1, :cond_46

    if-ne v3, v1, :cond_52

    :cond_46
    invoke-static {}, Lcn/jpush/android/h/c;->a()Lcn/jpush/android/h/c;

    move-result-object v2

    iget-object v5, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iget-object v6, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-virtual {v2, v5, v6}, Lcn/jpush/android/h/c;->a(Landroid/content/Context;Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;

    move-result-object v2

    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",jPushMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_76

    const-string v1, "parse tagalias message failed"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_76
    if-ne v1, v4, :cond_90

    invoke-virtual {v2}, Lcn/jpush/android/api/JPushMessage;->isTagCheckOperator()Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcn/jpush/android/service/JPushMessageReceiver;->onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto/16 :goto_17d

    :cond_87
    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcn/jpush/android/service/JPushMessageReceiver;->onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto/16 :goto_17d

    :cond_90
    if-ne v1, v3, :cond_9b

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcn/jpush/android/service/JPushMessageReceiver;->onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto/16 :goto_17d

    :cond_9b
    const-string v1, "unsupport message type"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17d

    :cond_a2
    const-string v3, "mobile_result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-static {}, Lcn/jpush/android/helper/h;->a()Lcn/jpush/android/helper/h;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onMobileNumberOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto/16 :goto_17d

    :cond_bf
    const-string v3, "custom_msg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-static {v1}, Lcn/jpush/android/d/b;->a(Landroid/content/Intent;)Lcn/jpush/android/api/CustomMessage;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onMessage(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V

    goto/16 :goto_17d

    :cond_d6
    const-string v3, "cmd_msg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-static {v1, v2, v3}, Lcn/jpush/android/helper/c;->a(Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_17d

    :cond_e9
    const-string v3, "cn.jpush.android.intent.NOTIFICATION_ARRIVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcn/jpush/android/f/b;->c(Landroid/content/Context;Landroid/content/Intent;)Lcn/jpush/android/api/NotificationMessage;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onNotifyMessageArrived(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V

    goto/16 :goto_17d

    :cond_102
    const-string v3, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcn/jpush/android/f/b;->c(Landroid/content/Context;Landroid/content/Intent;)Lcn/jpush/android/api/NotificationMessage;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onNotifyMessageOpened(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V

    goto :goto_17d

    :cond_11a
    const-string v3, "cn.jpush.android.intent.NOTIFICATION_DISMISS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    iget-object v1, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcn/jpush/android/f/b;->c(Landroid/content/Context;Landroid/content/Intent;)Lcn/jpush/android/api/NotificationMessage;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onNotifyMessageDismiss(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V

    goto :goto_17d

    :cond_132
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION_PROXY"

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_158

    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->d:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_158
    iget-object v2, p0, Lcn/jpush/android/helper/c$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v3, p0, Lcn/jpush/android/helper/c$a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onMultiActionClicked(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_17d

    :cond_160
    invoke-static {v0, v2}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_163
    .catchall {:try_start_2a .. :try_end_163} :catchall_164

    goto :goto_17d

    :catchall_164
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageReceiver run failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17d
    return-void
.end method
