.class public Lcn/jiguang/ba/a;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jiguang/ba/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 6

    sget-object v0, Lcn/jiguang/ba/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_a3

    :cond_10
    const-class v0, Lcn/jiguang/ba/a;

    monitor-enter v0

    :try_start_13
    sget-object v1, Lcn/jiguang/ba/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_a1

    :cond_23
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_a8

    goto :goto_88

    :sswitch_2e
    const-string v2, "ACTION"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x5

    goto :goto_88

    :sswitch_38
    const-string v2, "SDK_SERVICE_INIT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x3

    goto :goto_88

    :sswitch_42
    const-string v2, "SDK_MAIN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x4

    goto :goto_88

    :sswitch_4c
    const-string v2, "SDK_INIT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x2

    goto :goto_88

    :sswitch_56
    const-string v2, "ASYNC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x0

    goto :goto_88

    :sswitch_60
    const-string v2, "BUILD_REPORT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x6

    goto :goto_88

    :sswitch_6a
    const-string v2, "REPORT_HISTORY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/16 v1, 0x8

    goto :goto_88

    :sswitch_75
    const-string v2, "UPLOAD_REPORT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x7

    goto :goto_88

    :sswitch_7f
    const-string v2, "TCP_REPORT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v1, 0x1

    :cond_88
    :goto_88
    if-eqz v1, :cond_96

    if-eq v1, v4, :cond_91

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    goto :goto_9c

    :cond_91
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    goto :goto_9c

    :cond_96
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :goto_9c
    sget-object v2, Lcn/jiguang/ba/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a1
    monitor-exit v0

    move-object v0, v1

    :cond_a3
    return-object v0

    :catchall_a4
    move-exception p0

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_13 .. :try_end_a6} :catchall_a4

    throw p0

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x6250888e -> :sswitch_7f
        -0x61eccece -> :sswitch_75
        -0x2ef81397 -> :sswitch_6a
        -0x1de29bbb -> :sswitch_60
        0x3bb0a5c -> :sswitch_56
        0x4081d615 -> :sswitch_4c
        0x408376be -> :sswitch_42
        0x507fbc7f -> :sswitch_38
        0x72c27236 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_a

    :try_start_4
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v1

    goto :goto_c

    :catchall_a
    move-exception v1

    const/4 v0, 0x0

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute failed, try again e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDKWorker_XExecutor"

    invoke-static {v3, v2}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_61

    :try_start_21
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x64

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string v2, "executor did not terminate"

    invoke-static {v3, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_3e} :catch_52

    goto :goto_61

    :catchall_3f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "shutDown e:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :catch_52
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-string v0, "current thread is interrupted by self"

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_61
    :goto_61
    :try_start_61
    invoke-static {p0}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_69

    return-void

    :catchall_69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "execute e:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_93

    :try_start_7c
    const-string v0, "BUILD_REPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_8d

    goto :goto_93

    :catchall_8d
    move-exception p0

    const-string p1, "execute BUILD_REPORT last error"

    invoke-static {v3, p1, p0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    return-void
.end method
