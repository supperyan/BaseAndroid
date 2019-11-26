.class public Lcn/jiguang/api/JCoreManager;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static final TAG:Ljava/lang/String; = "JCoreManager"

.field private static final isInited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcn/jiguang/api/JCoreManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDispatchAction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcn/jiguang/internal/ActionManager;->getInstance()Lcn/jiguang/internal/ActionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/internal/ActionManager;->addAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static changeLiveStatus(Z)V
    .registers 1

    return-void
.end method

.method public static getAppContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcn/jiguang/internal/JCoreInternalHelper;->getInstance()Lcn/jiguang/internal/JCoreInternalHelper;

    move-result-object v0

    const/4 v8, 0x0

    new-array v7, v8, [Ljava/lang/Object;

    const-string v2, "JCore"

    const/16 v3, 0x43

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcn/jiguang/internal/JCoreInternalHelper;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v8
.end method

.method public static getDebugMode()Z
    .registers 1

    sget-boolean v0, Lcn/jiguang/internal/JConstants;->DEBUG_MODE:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 9

    invoke-static {p0}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    sget-object p0, Lcn/jiguang/internal/JConstants;->isCallInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcn/jiguang/api/JCoreManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_2f

    sget-object p0, Lcn/jiguang/api/JCoreManager;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v1}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/internal/JCoreInternalHelper;->getInstance()Lcn/jiguang/internal/JCoreInternalHelper;

    move-result-object v0

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 p0, 0x0

    new-array v7, p0, [Ljava/lang/Object;

    const-string v2, "JCore"

    const-string v5, "tcp_a1"

    invoke-virtual/range {v0 .. v7}, Lcn/jiguang/internal/JCoreInternalHelper;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    const-string v2, "JCore"

    const/16 v3, 0x46

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isInternal()Z
    .registers 1

    sget-boolean v0, Lcn/jiguang/internal/JConstants;->INTERNAL_USE:Z

    return v0
.end method

.method public static isTestEnv()Z
    .registers 1

    invoke-static {}, Lcn/jiguang/internal/JConstants;->isTestEnv()Z

    move-result v0

    return v0
.end method

.method public static varargs onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const/16 v0, 0xd

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x31

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x35

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x19

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x2a

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x2b

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x3f

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x40

    if-eq p2, v0, :cond_3e

    packed-switch p2, :pswitch_data_4c

    packed-switch p2, :pswitch_data_5a

    packed-switch p2, :pswitch_data_66

    packed-switch p2, :pswitch_data_70

    packed-switch p2, :pswitch_data_7a

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_40

    :cond_3e
    :pswitch_3e
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_40
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4c
    .packed-switch 0x4
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x12
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x20
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x2d
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x43
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public static varargs onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const/16 v0, 0x12

    if-eq p2, v0, :cond_b

    const/16 v0, 0xd

    if-eq p2, v0, :cond_b

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->init(Landroid/content/Context;)V

    :cond_b
    invoke-static {}, Lcn/jiguang/internal/JCoreInternalHelper;->getInstance()Lcn/jiguang/internal/JCoreInternalHelper;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcn/jiguang/internal/JCoreInternalHelper;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .registers 10

    const-string v0, "JCoreManager"

    if-nez p0, :cond_a

    const-string p0, "[requestPermission] context was null"

    :goto_6
    invoke-static {v0, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_11

    const-string p0, "[requestPermission] context must instanceof Activity"

    goto :goto_6

    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1a

    const-string p0, "[requestPermission] android.os.Build.VERSION.SDK_INT<23"

    goto :goto_6

    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v2, :cond_25

    const-string p0, "[requestPermission] app targetSdkVersion<23"

    goto :goto_6

    :cond_25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_b8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_b8

    :try_start_31
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "will request background location permission"

    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lcn/jiguang/internal/JConstants;->isAndroidQ(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-static {p0, v1}, Lcn/jiguang/f/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_a5

    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "lackPermissions:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.app.Activity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "requestPermissions"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_a5} :catch_a6

    :cond_a5
    :goto_a5
    return-void

    :catch_a6
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#unexcepted - requestPermission e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    return-void
.end method

.method public static setAnalysisAction(Lcn/jiguang/api/JAnalyticsAction;)V
    .registers 1

    sput-object p0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    sput-boolean p0, Lcn/jiguang/internal/JConstants;->DEBUG_MODE:Z

    return-void
.end method

.method public static setSDKConfigs(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    invoke-static {}, Lcn/jiguang/internal/JCoreInternalHelper;->getInstance()Lcn/jiguang/internal/JCoreInternalHelper;

    move-result-object v0

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v2, "JCore"

    const/16 v3, 0x37

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcn/jiguang/internal/JCoreInternalHelper;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    const-string v2, "JCore"

    const/16 v3, 0x47

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
