.class public Lcn/jpush/android/api/JPushInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/api/JPushInterface$ErrorCode;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_CHANGE:Ljava/lang/String; = "cn.jpush.android.intent.CONNECTION"

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "cn.jpush.android.intent.MESSAGE_RECEIVED"

.field public static final ACTION_NOTIFICATION_CLICK_ACTION:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION"

.field public static final ACTION_NOTIFICATION_CLICK_ACTION_PROXY:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION_PROXY"

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_OPENED"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_RECEIVED"

.field public static final ACTION_NOTIFICATION_RECEIVED_PROXY:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY"

.field public static final ACTION_REGISTRATION_ID:Ljava/lang/String; = "cn.jpush.android.intent.REGISTRATION"

.field public static final ACTION_RICHPUSH_CALLBACK:Ljava/lang/String; = "cn.jpush.android.intent.ACTION_RICHPUSH_CALLBACK"

.field public static final EXTRA_ACTIVITY_PARAM:Ljava/lang/String; = "cn.jpush.android.ACTIVITY_PARAM"

.field public static final EXTRA_ALERT:Ljava/lang/String; = "cn.jpush.android.ALERT"

.field public static final EXTRA_ALERT_TYPE:Ljava/lang/String; = "cn.jpush.android.ALERT_TYPE"

.field public static final EXTRA_APP_KEY:Ljava/lang/String; = "cn.jpush.android.APPKEY"

.field public static final EXTRA_BIG_PIC_PATH:Ljava/lang/String; = "cn.jpush.android.BIG_PIC_PATH"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "cn.jpush.android.BIG_TEXT"

.field public static final EXTRA_CONNECTION_CHANGE:Ljava/lang/String; = "cn.jpush.android.CONNECTION_CHANGE"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "cn.jpush.android.CONTENT_TYPE"

.field public static final EXTRA_EXTRA:Ljava/lang/String; = "cn.jpush.android.EXTRA"

.field public static final EXTRA_INBOX:Ljava/lang/String; = "cn.jpush.android.INBOX"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "cn.jpush.android.MESSAGE"

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "cn.jpush.android.MSG_ID"

.field public static final EXTRA_NOTIFICATION_ACTION_EXTRA:Ljava/lang/String; = "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

.field public static final EXTRA_NOTIFICATION_DEVELOPER_ARG0:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_DEVELOPER_ARG0"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_ID"

.field public static final EXTRA_NOTIFICATION_LARGET_ICON:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_LARGE_ICON"

.field public static final EXTRA_NOTIFICATION_SMALL_ICON:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_SMALL_ICON"

.field public static final EXTRA_NOTIFICATION_TITLE:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

.field public static final EXTRA_NOTIFICATION_URL:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_URL"

.field public static final EXTRA_NOTI_CATEGORY:Ljava/lang/String; = "cn.jpush.android.NOTI_CATEGORY"

.field public static final EXTRA_NOTI_PRIORITY:Ljava/lang/String; = "cn.jpush.android.NOTI_PRIORITY"

.field public static final EXTRA_NOTI_TYPE:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_TYPE"

.field public static final EXTRA_PUSH_ID:Ljava/lang/String; = "cn.jpush.android.PUSH_ID"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "cn.jpush.android.REGISTRATION_ID"

.field public static final EXTRA_RICHPUSH_FILE_PATH:Ljava/lang/String; = "cn.jpush.android.FILE_PATH"

.field public static final EXTRA_RICHPUSH_FILE_TYPE:Ljava/lang/String; = "cn.jpush.android.FILE_TYPE"

.field public static final EXTRA_RICHPUSH_HTML_PATH:Ljava/lang/String; = "cn.jpush.android.HTML_PATH"

.field public static final EXTRA_RICHPUSH_HTML_RES:Ljava/lang/String; = "cn.jpush.android.HTML_RES"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "cn.jpush.android.STATUS"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "cn.jpush.android.TITLE"

.field public static final PUSH_MESSAGE_PERMISSION_POSTFIX:Ljava/lang/String; = ".permission.JPUSH_MESSAGE"

.field public static a:I = 0x5

.field private static final b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/lang/Integer;

    const-class v0, Lcn/jpush/android/helper/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPUSH"

    invoke-static {v1, v0}, Lcn/jiguang/api/JCoreManager;->addDispatchAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)V
    .registers 2

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcn/jpush/android/c/d;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)V

    return-void
.end method

.method public static addTags(Landroid/content/Context;ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;II)V

    return-void
.end method

.method private static checkContext(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcn/jpush/android/a;->a:Landroid/content/Context;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NULL context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkLengthOfTags(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/2addr p0, v1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tags length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JPushInterface"

    invoke-static {v2, v0}, Lcn/jpush/android/helper/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1b58

    if-gt p0, v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public static checkTagBindState(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 p2, 0x1

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, p2, v1}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;II)V

    return-void
.end method

.method public static cleanTags(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;II)V

    return-void
.end method

.method public static clearAllNotifications(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const-string v0, "JPUSH"

    const-string v1, "clear_all_notify"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static clearLocalNotifications(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/c/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static clearNotificationById(Landroid/content/Context;I)V
    .registers 3

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    if-gtz p1, :cond_d

    const-string p0, "JPushInterface"

    const-string p1, "Invalid notificationId, Give up action.."

    invoke-static {p0, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static deleteAlias(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method public static deleteGeofence(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "JPUSH"

    const-string v1, "delete_geo_fence"

    invoke-static {p0, p1, v1, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static deleteTags(Landroid/content/Context;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;II)V

    return-void
.end method

.method public static filterValidTags(Ljava/util/Set;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/h/a;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getAlias(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method public static getAllTags(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;II)V

    return-void
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->getConnectionState(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/helper/JCoreHelper;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringTags(Ljava/util/Set;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/h/a;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/helper/JCoreHelper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4

    const-string v0, "JPushInterface"

    const-string v1, "action:init - sdkVersion:3.4.0, buildId:56"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/j/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {p0}, Lcn/jpush/android/a;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "JPUSH"

    const-string v2, "init"

    invoke-static {p0, v1, v2, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcn/jpush/android/i/c;->a()Lcn/jpush/android/i/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/i/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->initCrashHandler(Landroid/content/Context;)V

    return-void
.end method

.method public static isPushStopped(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/cache/a;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "f_pause"

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helper/JCoreHelper;->saEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "f_resume"

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helper/JCoreHelper;->saEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .registers 3

    const-string v0, "kill"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helper/JCoreHelper;->saEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 3

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helper/JCoreHelper;->saEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 3

    const-string v0, "resume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helper/JCoreHelper;->saEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeLocalNotification(Landroid/content/Context;J)V
    .registers 3

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/c/d;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The msgId is not valid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPushInterface"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/16 v0, 0x404

    invoke-static {p1, v0, p0}, Lcn/jpush/android/helper/g;->a(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;B)V
    .registers 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The msgId is not valid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPushInterface"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/16 v0, 0x3e8

    const-string v1, ""

    invoke-static {p1, v1, p2, v0, p0}, Lcn/jpush/android/helper/g;->a(Ljava/lang/String;Ljava/lang/String;BILandroid/content/Context;)V

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_a

    const-string p0, "JPushInterface"

    const-string v0, "[requestPermission] unexcepted - context was null"

    invoke-static {p0, v0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->requestPermission(Landroid/content/Context;)V

    return-void
.end method

.method public static resumePush(Landroid/content/Context;)V
    .registers 4

    const-string v0, "JPushInterface"

    const-string v1, "action:resumePush"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const-string v0, "JPUSH"

    const-string v1, "resume"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcn/jpush/android/i/c;->a()Lcn/jpush/android/i/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/i/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static setAlias(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, v0}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Lcn/jpush/android/api/TagAliasCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    return-void
.end method

.method public static setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V

    return-void
.end method

.method public static setBadgeNumber(Landroid/content/Context;I)V
    .registers 6

    invoke-static {p0}, Lcn/jpush/android/a;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Lcn/jpush/android/cache/Key;

    invoke-static {}, Lcn/jpush/android/cache/Key;->BadgeCurNum()Lcn/jpush/android/cache/Key;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p0, v1}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p1}, Lcn/jpush/android/f/b;->a(Landroid/content/Context;Landroid/app/Notification;II)Z

    return-void
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/jpush/android/helper/JCoreHelper;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setDaemonAction(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->setDebugMode(Z)V

    return-void
.end method

.method private static setDefaultNotifactionNumber(Landroid/content/Context;)V
    .registers 2

    sget v0, Lcn/jpush/android/api/JPushInterface;->a:I

    invoke-static {p0, v0}, Lcn/jpush/android/api/JPushInterface;->setLatestNotificationNumber(Landroid/content/Context;I)V

    return-void
.end method

.method public static setDefaultPushNotificationBuilder(Lcn/jpush/android/api/PushNotificationBuilder;)V
    .registers 4

    if-eqz p0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "buidler_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "buidler_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcn/jpush/android/a;->a:Landroid/content/Context;

    const-string v1, "JPUSH"

    const-string v2, "set_custom_notify"

    invoke-static {p0, v1, v2, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NULL notification"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setGeofenceInterval(Landroid/content/Context;J)V
    .registers 6

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const-wide/32 v0, 0x2bf20

    cmp-long v2, p1, v0

    if-ltz v2, :cond_24

    const-wide/32 v0, 0x5265c00

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    goto :goto_24

    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "interval"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "JPUSH"

    const-string p2, "geo_interval"

    invoke-static {p0, p1, p2, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_24
    :goto_24
    const-string p0, "JPushInterface"

    const-string p1, "Invalid interval, it should be a ms number between 3 mins and 1 day!"

    invoke-static {p0, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLatestNotificationNumber(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:setLatestNotificationNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPushInterface"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_21

    const-string p0, "maxNum should > 0, Give up action.."

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "num"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "JPUSH"

    const-string v1, "max_num"

    invoke-static {p0, p1, v1, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setMaxGeofenceNumber(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1d

    const/16 v0, 0x64

    if-le p1, v0, :cond_b

    goto :goto_1d

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "num"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "JPUSH"

    const-string v1, "geo_fence_max_num"

    invoke-static {p0, p1, v1, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1d
    :goto_1d
    const-string p0, "JPushInterface"

    const-string p1, "Invalid maxNumber,it should be a number between 1 and 100!"

    invoke-static {p0, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMobileNumber(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/helper/h;->a()Lcn/jpush/android/helper/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setPowerSaveMode(Landroid/content/Context;Z)V
    .registers 2

    return-void
.end method

.method public static setPushNotificationBuilder(Ljava/lang/Integer;Lcn/jpush/android/api/PushNotificationBuilder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:setPushNotificationBuilder - id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPushInterface"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->vv(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_25

    const-string p0, "id should be larger than 0"

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "buidler_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "buidler_string"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcn/jpush/android/a;->a:Landroid/content/Context;

    const-string p1, "JPUSH"

    const-string v1, "set_custom_notify"

    invoke-static {p0, p1, v1, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL pushNotificationBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPushTime(Landroid/content/Context;Ljava/util/Set;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/j/a;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "JPushInterface"

    if-nez v0, :cond_10

    const-string v0, "\u68c0\u6d4b\u5230\u5f53\u524d\u6ca1\u6709\u7f51\u7edc\u3002\u6b64\u52a8\u4f5c\u5c06\u5728\u6709\u7f51\u7edc\u65f6\u81ea\u52a8\u7ee7\u7eed\u6267\u884c\u3002"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v0, "pushtime"

    const-string v2, "time"

    const-string v3, "JPUSH"

    if-nez p1, :cond_26

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "0123456_0^23"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, v0, p1}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_26
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_97

    :cond_33
    if-le p2, p3, :cond_3b

    const-string p0, "Invalid time format - startHour should less than endHour"

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-gt v6, v7, :cond_62

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_62
    :goto_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid day format - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_77
    const-string p1, "_"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "^"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, v0, p1}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_97
    :goto_97
    const/4 p1, 0x0

    const-string p2, "disable_push"

    invoke-static {p0, v3, p2, p1}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setSilenceTime(Landroid/content/Context;IIII)V
    .registers 10

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const-string v0, "JPushInterface"

    if-ltz p1, :cond_64

    if-ltz p2, :cond_64

    if-ltz p3, :cond_64

    if-ltz p4, :cond_64

    const/16 v1, 0x3b

    if-gt p2, v1, :cond_64

    if-gt p4, v1, :cond_64

    const/16 v1, 0x17

    if-gt p3, v1, :cond_64

    if-le p1, v1, :cond_1a

    goto :goto_64

    :cond_1a
    const-string v1, "silenceTime"

    const-string v2, "JPUSH"

    const-string v3, "time"

    if-nez p1, :cond_3b

    if-nez p2, :cond_3b

    if-nez p3, :cond_3b

    if-nez p4, :cond_3b

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v1, p1}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "Remove the silence time!"

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_40
    const-string v4, "startHour"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "startMins"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endHour"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endtMins"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v1, p1}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_63} :catch_63

    :catch_63
    return-void

    :cond_64
    :goto_64
    const-string p0, "Invalid parameter format, startHour and endHour should between 0 ~ 23, startMins and endMins should between 0 ~ 59. "

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setStatisticsEnable(Z)V
    .registers 1

    return-void
.end method

.method public static setStatisticsSessionTimeout(J)V
    .registers 2

    return-void
.end method

.method public static setTags(Landroid/content/Context;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;II)V

    return-void
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    return-void
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->stopCrashHandler(Landroid/content/Context;)V

    return-void
.end method

.method public static stopPush(Landroid/content/Context;)V
    .registers 4

    const-string v0, "JPushInterface"

    const-string v1, "action:stopPush"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const-string v0, "JPUSH"

    const-string v1, "stop"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcn/jpush/android/i/c;->a()Lcn/jpush/android/i/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/i/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static taq()V
    .registers 0

    invoke-static {}, Lcn/jpush/android/a;->b()V

    return-void
.end method


# virtual methods
.method public setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcn/jpush/android/api/JPushInterface;->checkContext(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V

    return-void
.end method
