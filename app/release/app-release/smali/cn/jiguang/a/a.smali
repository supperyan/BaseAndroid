.class public final Lcn/jiguang/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "2.2.2"

.field public static b:I = 0xde

.field public static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/jiguang/a/b;

    invoke-direct {v0}, Lcn/jiguang/a/b;-><init>()V

    sput-object v0, Lcn/jiguang/a/a;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Lcn/jiguang/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/jiguang/a/c;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "SDK_INIT"

    invoke-static {p0, v0}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZJ)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "delay_time"

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "tcp_a2"

    invoke-static {p0, p1, v0}, Lcn/jiguang/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendHeartBeat error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JCoreGobal"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcn/jiguang/a/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/jiguang/a/a;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    sget-object p0, Lcn/jiguang/a/a;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_104

    monitor-exit v0

    return p0

    :cond_f
    const/4 v1, 0x0

    if-nez p0, :cond_1b

    :try_start_12
    const-string p0, "JCoreGobal"

    const-string v2, "init failed,context is null"

    invoke-static {p0, v2}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_104

    monitor-exit v0

    return v1

    :cond_1b
    :try_start_1b
    const-string v2, "JCoreGobal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action:init jcore,version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/jiguang/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",build id:59"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/an/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "JCoreGobal"

    const-string v3, "build type:release"

    invoke-static {v2, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcn/jiguang/internal/JConstants;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcn/jiguang/am/b;->a()Lcn/jiguang/am/b;

    invoke-static {p0}, Lcn/jiguang/am/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/jiguang/am/b;->a()Lcn/jiguang/am/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/am/b;->c()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-static {}, Lcn/jiguang/am/b;->a()Lcn/jiguang/am/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/am/b;->b()Z

    move-result v3

    if-eqz v3, :cond_8d

    :cond_61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcn/jiguang/a/a;->d:Ljava/lang/Boolean;

    const-string p0, "JCoreGobal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AndroidManifest.xml missing required service:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcn/jpush/android/service/JCommonService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",please custom one service and extends JCommonService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_1b .. :try_end_8b} :catchall_104

    monitor-exit v0

    return v1

    :cond_8d
    :try_start_8d
    invoke-static {}, Lcn/jiguang/b/a;->a()Lcn/jiguang/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/b/a;->b()V

    invoke-static {p0}, Lcn/jiguang/am/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a7

    const-string p0, "JCoreGobal"

    const-string v1, "not found commonServiceClass\uff08JCommonService\uff09"

    invoke-static {p0, v1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    :cond_a7
    invoke-static {}, Lcn/jpush/android/service/DataShare;->isBinding()Z

    move-result v2

    if-eqz v2, :cond_b5

    const-string p0, "JCoreGobal"

    const-string v1, "is binding service"

    invoke-static {p0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_8d .. :try_end_b4} :catchall_104

    goto :goto_f8

    :cond_b5
    :try_start_b5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcn/jiguang/a/a;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_d4

    const-string p0, "JCoreGobal"

    const-string v1, "Remote Service on binding..."

    invoke-static {p0, v1}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/DataShare;->setBinding()V

    goto :goto_f8

    :cond_d4
    const-string p0, "JCoreGobal"

    const-string v1, "Remote Service bind failed"

    invoke-static {p0, v1}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_b5 .. :try_end_db} :catchall_dc
    .catch Ljava/lang/SecurityException; {:try_start_b5 .. :try_end_db} :catch_f1

    goto :goto_f8

    :catchall_dc
    move-exception p0

    :try_start_dd
    const-string v1, "JCoreGobal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Remote Service bind failed :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    :catch_f1
    const-string p0, "JCoreGobal"

    const-string v1, "Remote Service bind failed caused by SecurityException!"

    invoke-static {p0, v1}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcn/jiguang/a/a;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_102
    .catchall {:try_start_dd .. :try_end_102} :catchall_104

    monitor-exit v0

    return p0

    :catchall_104
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Lcn/jiguang/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/jiguang/a/c;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "SDK_SERVICE_INIT"

    invoke-static {p0, v0}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .registers 12

    const-class v0, Lcn/jiguang/a/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/jiguang/a/a;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    sget-object p0, Lcn/jiguang/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_cc

    monitor-exit v0

    return p0

    :cond_f
    const/4 v1, 0x0

    if-nez p0, :cond_1b

    :try_start_12
    const-string p0, "JCoreGobal"

    const-string v2, "init failed,context is null"

    invoke-static {p0, v2}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_cc

    monitor-exit v0

    return v1

    :cond_1b
    :try_start_1b
    const-string v2, "JCoreGobal"

    const-string v3, "serviceInit..."

    invoke-static {v2, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcn/jiguang/internal/JConstants;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/am/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcn/jiguang/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_cc

    monitor-exit v0

    return p0

    :cond_3e
    const/4 v2, 0x1

    :try_start_3f
    invoke-static {}, Lcn/jiguang/internal/JCoreInternalHelper;->getInstance()Lcn/jiguang/internal/JCoreInternalHelper;

    move-result-object v3

    const-string v5, "JCore"

    const/16 v6, 0x41

    const/4 v7, 0x1

    const-string v8, ""

    const/4 v9, 0x0

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lcn/jiguang/internal/JCoreInternalHelper;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_58

    goto :goto_5f

    :catchall_58
    :try_start_58
    const-string v1, "JCoreGobal"

    const-string v3, "u p call failed"

    invoke-static {v1, v3}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    invoke-static {}, Lcn/jiguang/am/b;->a()Lcn/jiguang/am/b;
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_cc

    :try_start_62
    sget-object v1, Lcn/jiguang/internal/JConstants;->isCallInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_67

    :catchall_67
    :try_start_67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    new-instance v3, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v3}, Lcn/jpush/android/service/PushReceiver;-><init>()V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushReceiver;

    invoke-static {p0, v1}, Lcn/jiguang/f/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_9d
    .catchall {:try_start_67 .. :try_end_9d} :catchall_9e

    goto :goto_b2

    :catchall_9e
    move-exception v1

    :try_start_9f
    const-string v3, "JCoreGobal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registerPushReceiver fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcn/jiguang/a/a;->e:Ljava/lang/Boolean;

    invoke-static {}, Lcn/jiguang/b/a;->a()Lcn/jiguang/b/a;

    invoke-static {p0}, Lcn/jiguang/b/a;->c(Landroid/content/Context;)V

    const-string v1, "service_create"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcn/jiguang/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_ca
    .catchall {:try_start_9f .. :try_end_ca} :catchall_cc

    monitor-exit v0

    return p0

    :catchall_cc
    move-exception p0

    monitor-exit v0

    throw p0
.end method
