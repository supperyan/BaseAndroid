.class public final Lcn/jiguang/ax/b;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static volatile a:Lcn/jiguang/ax/b;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Z

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcn/jiguang/ax/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/ax/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/ax/b;->c:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ax/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcn/jiguang/ax/b;
    .registers 2

    sget-object v0, Lcn/jiguang/ax/b;->a:Lcn/jiguang/ax/b;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/ax/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/ax/b;->a:Lcn/jiguang/ax/b;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/ax/b;

    invoke-direct {v1}, Lcn/jiguang/ax/b;-><init>()V

    sput-object v1, Lcn/jiguang/ax/b;->a:Lcn/jiguang/ax/b;

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
    sget-object v0, Lcn/jiguang/ax/b;->a:Lcn/jiguang/ax/b;

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/ax/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ax/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a(IJLcn/jiguang/ax/a;)V
    .registers 7

    iget-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iput-wide p2, p4, Lcn/jiguang/ax/a;->b:J

    const/4 p1, 0x1

    iput p1, p4, Lcn/jiguang/ax/a;->c:I

    iget-object p1, p0, Lcn/jiguang/ax/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x1f40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "TaskHandlerManager_xxx"

    const-string p4, "registerFixedAction,same action in handler,will replace"

    invoke-static {p1, p4}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_29
    iget-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcn/jiguang/ax/b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5e

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_12

    :try_start_9
    const-string p1, "TaskHandlerManager_xxx"

    const-string v0, "init context is null"

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_5e

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    const-string p1, "TaskHandlerManager_xxx"

    const-string v0, "init task manager..."

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_5e

    :try_start_19
    iget-object p1, p0, Lcn/jiguang/ax/b;->f:Landroid/os/HandlerThread;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcn/jiguang/ax/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_33

    :cond_25
    new-instance p1, Lcn/jiguang/ax/c;

    const-string v0, "TaskHandlerManager_xxx"

    invoke-direct {p1, p0, v0}, Lcn/jiguang/ax/c;-><init>(Lcn/jiguang/ax/b;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/jiguang/ax/b;->f:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcn/jiguang/ax/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_33
    new-instance p1, Lcn/jiguang/ax/d;

    iget-object v0, p0, Lcn/jiguang/ax/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_42

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_48

    :cond_42
    iget-object v0, p0, Lcn/jiguang/ax/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_48
    invoke-direct {p1, p0, v0}, Lcn/jiguang/ax/d;-><init>(Lcn/jiguang/ax/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4d} :catch_4e

    goto :goto_59

    :catch_4e
    :try_start_4e
    new-instance p1, Lcn/jiguang/ax/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/jiguang/ax/d;-><init>(Lcn/jiguang/ax/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    :goto_59
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/ax/b;->c:Z
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(I)Z
    .registers 3

    iget-object p1, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/16 v0, 0x3f3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final b(I)V
    .registers 4

    iget-object v0, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcn/jiguang/ax/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final b(IJLcn/jiguang/ax/a;)V
    .registers 7

    iget-object v0, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    iput v0, p4, Lcn/jiguang/ax/a;->c:I

    iget-object v0, p0, Lcn/jiguang/ax/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {p4, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    const-string v0, "TaskHandlerManager_xxx"

    if-eqz p4, :cond_32

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "sendMsg,replace:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {p4, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_43

    :cond_32
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "sendMsg,action="

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    iget-object p4, p0, Lcn/jiguang/ax/b;->e:Landroid/os/Handler;

    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
