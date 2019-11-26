.class public Lcn/jiguang/api/JCoreInterface;
.super Ljava/lang/Object;


# annotations


# static fields
.field public static DAEMON_ACTION:Ljava/lang/String; = "cn.jpush.android.intent.DaemonService"

.field private static final TAG:Ljava/lang/String; = "JCoreInterface"

.field private static mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asyncExecute(Ljava/lang/Runnable;[I)V
    .registers 8

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object p0, v5, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static canCallDirect()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static varargs execute(Ljava/lang/String;Ljava/lang/Runnable;[I)V
    .registers 9

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v6, v0

    const/4 p0, 0x1

    aput-object p1, v6, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONObject;

    if-eqz p1, :cond_1a

    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAccountId()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_13
    const-string v0, ""

    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method public static getCommonConfigAppkey()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .registers 1

    sget-object p0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->getConnectionState(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getDaemonAction()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->DAEMON_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static getDebugMode()Z
    .registers 1

    invoke-static {}, Lcn/jiguang/api/JCoreManager;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method public static getHttpConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, ""

    return-object p0
.end method

.method public static getJCoreSDKVersionInt()I
    .registers 7

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_17

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_17
    return v0
.end method

.method public static getNextRid()J
    .registers 2

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/az/e;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_13
    const-string p0, ""

    return-object p0
.end method

.method public static getReportTime()J
    .registers 6

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRuningFlag()Z
    .registers 2

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "nubia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :catchall_c
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static getSid()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getUid()J
    .registers 6

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static init(Landroid/content/Context;Z)Z
    .registers 2

    if-eqz p0, :cond_4

    sput-object p0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    :cond_4
    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->init(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static initAction(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/jiguang/api/JAction;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcn/jiguang/az/a;->a()Lcn/jiguang/az/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/az/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initActionExtra(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/jiguang/api/JActionExtra;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcn/jiguang/az/a;->a()Lcn/jiguang/az/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/az/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->initCrashHandler(Landroid/content/Context;)V

    return-void
.end method

.method public static isTcpConnected()Z
    .registers 1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/api/JCoreManager;->getConnectionState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isValidRegistered()Z
    .registers 7

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    return v6
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/16 v3, 0x38

    const-string v4, "f_pause"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/16 v3, 0x38

    const-string v4, "f_resume"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .registers 8

    sget-object v0, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/16 v3, 0x38

    const-string v4, "kill"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 8

    sget-object v0, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/16 v3, 0x38

    const-string v4, "pause"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 8

    sget-object v0, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/16 v3, 0x38

    const-string v4, "resume"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static processCtrlReport(I)V
    .registers 8

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v6, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putSingleExecutor(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .registers 3

    const-string v0, "JCoreInterface"

    const-string v1, "Action - init registerOnly:"

    invoke-static {v0, v1}, Lcn/jiguang/az/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_b

    sput-object p0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    :cond_b
    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static report(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .registers 9

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const-string v1, "JSupport"

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static reportHttpData(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->requestPermission(Landroid/content/Context;)V

    return-void
.end method

.method public static restart(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 10

    const/4 p2, 0x0

    new-array v5, p2, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static send(Landroid/content/Context;Ljava/lang/String;I[BIZ)V
    .registers 15

    if-eqz p3, :cond_77

    :try_start_2
    array-length p2, p3

    const/16 v0, 0x18

    if-le p2, v0, :cond_77

    new-array p2, v0, [B

    array-length v1, p3

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {p3, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p3

    sub-int/2addr v3, v0

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p3, Lcn/jiguang/az/c;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p2}, Lcn/jiguang/az/c;-><init>(Z[B)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p2, "cmd"

    invoke-virtual {p3}, Lcn/jiguang/az/c;->a()I

    move-result v0

    invoke-virtual {v7, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ver"

    invoke-virtual {p3}, Lcn/jiguang/az/c;->e()I

    move-result v0

    invoke-virtual {v7, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "rid"

    invoke-virtual {p3}, Lcn/jiguang/az/c;->b()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v7, p2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "timeout"

    int-to-long p3, p4

    invoke-virtual {v7, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "body"

    invoke-virtual {v7, p2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    if-eqz p5, :cond_52

    const/16 p2, 0x11

    const/16 v5, 0x11

    goto :goto_56

    :cond_52
    const/16 p2, 0x32

    const/16 v5, 0x32

    :goto_56
    const/4 v6, 0x0

    new-array v8, v2, [Ljava/lang/Object;

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_5f

    goto :goto_77

    :catchall_5f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "send failed:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JCoreInterface"

    invoke-static {p1, p0}, Lcn/jiguang/az/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    return-void
.end method

.method public static sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    if-eqz p2, :cond_27

    :try_start_2
    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_27

    :catchall_13
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendAction failed:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JCoreInterface"

    invoke-static {p1, p0}, Lcn/jiguang/az/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;I[B)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreInterface;->send(Landroid/content/Context;Ljava/lang/String;I[BIZ)V

    return-void
.end method

.method public static sendRequestData(Landroid/content/Context;Ljava/lang/String;I[B)V
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreInterface;->send(Landroid/content/Context;Ljava/lang/String;I[BIZ)V

    return-void
.end method

.method public static setAccountId(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x16

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setAnalysisAction(Lcn/jiguang/api/JAnalyticsAction;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->setAnalysisAction(Lcn/jiguang/api/JAnalyticsAction;)V

    :cond_5
    return-void
.end method

.method public static setCanLaunchedStoppedService(Z)V
    .registers 1

    return-void
.end method

.method public static setDaemonAction(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcn/jiguang/api/JCoreInterface;->DAEMON_ACTION:Ljava/lang/String;

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->setDebugMode(Z)V

    return-void
.end method

.method public static setImLBSEnable(Landroid/content/Context;Z)V
    .registers 9

    const-string v0, "JCoreInterface"

    const-string v1, "action - setImLBSEnable-control"

    invoke-static {v0, v1}, Lcn/jiguang/az/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v2, 0x0

    const/16 v3, 0x1b

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setLocationReportDelay(Landroid/content/Context;J)V
    .registers 10

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v6, p2

    const/4 v2, 0x0

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setPowerSaveMode(Landroid/content/Context;Z)V
    .registers 2

    return-void
.end method

.method public static setTestConn(Z)V
    .registers 1

    return-void
.end method

.method public static setTestConnIPPort(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action - setTestConnIPPort ip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " port:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JCoreInterface"

    invoke-static {p1, p0}, Lcn/jiguang/az/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static si(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/jiguang/api/JCoreInterface;->mApplicationContext:Landroid/content/Context;

    :cond_8
    invoke-static {p0, p1, p2}, Lcn/jiguang/az/b;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static stop(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const/4 p2, 0x0

    new-array v5, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->stopCrashHandler(Landroid/content/Context;)V

    return-void
.end method

.method public static testCountryCode(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x17

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static triggerSceneCheck(Landroid/content/Context;I)V
    .registers 9

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v2, 0x0

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
