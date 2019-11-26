.class public abstract Lcn/jpush/android/api/JThirdPlatFormInterface;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "action_notification_arrived"

.field public static final ACTION_NOTIFICATION_CLCKED:Ljava/lang/String; = "action_notification_clicked"

.field public static final ACTION_NOTIFICATION_SHOW:Ljava/lang/String; = "action_notification_show"

.field public static final ACTION_PLUGIN_PALTFORM_ON_MESSAGING:Ljava/lang/String; = "intent.plugin.platform.ON_MESSAGING"

.field public static final ACTION_PLUGIN_PALTFORM_REFRESSH_REGID:Ljava/lang/String; = "intent.plugin.platform.REFRESSH_REGID"

.field public static final ACTION_PLUGIN_PALTFORM_REQUEST_REGID:Ljava/lang/String; = "intent.plugin.platform.REQUEST_REGID"

.field public static final ACTION_REGISTER_TOKEN:Ljava/lang/String; = "action_register_token"

.field public static final CMD_CALL_BACK:I = 0x2710

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_MSG:Ljava/lang/String; = "msg"

.field public static final KEY_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final KEY_NOTI_ID:Ljava/lang/String; = "noti_id"

.field public static final KEY_PLATFORM:Ljava/lang/String; = "platform"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcn/jpush/android/i/c;->a()Lcn/jpush/android/i/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getNofiticationID(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0}, Lcn/jpush/android/f/b;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static sendActionByJCore(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    const-string v0, "JPUSH"

    invoke-static {p0, v0, p2, p1}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setNotification(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V

    return-void
.end method

.method public static setNotificationChannel(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;II)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V

    return-void
.end method

.method public static setNotificationChannel(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V

    return-void
.end method

.method public static toMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/j/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAppId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAppkey(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getRomName()Ljava/lang/String;
.end method

.method public abstract getRomType(Landroid/content/Context;)B
.end method

.method public abstract getToken(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isNeedClearToken(Landroid/content/Context;)Z
.end method

.method public abstract isSupport(Landroid/content/Context;)Z
.end method

.method public needSendToMainProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract register(Landroid/content/Context;)V
.end method

.method public resumePush(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public stopPush(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
