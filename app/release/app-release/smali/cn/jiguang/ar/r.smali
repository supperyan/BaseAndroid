.class public final Lcn/jiguang/ar/r;
.super Ljava/lang/Object;


# annotations


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lcn/jiguang/ar/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/jiguang/ar/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:J

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(IILcn/jiguang/ar/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcn/jiguang/ar/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/jiguang/ar/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jiguang/ar/r;->f:J

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    const/16 p1, 0x7d0

    iput p1, p0, Lcn/jiguang/ar/r;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jiguang/ar/r;->e:Lcn/jiguang/ar/a;

    new-instance p1, Lcn/jiguang/ar/s;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcn/jiguang/ar/s;-><init>(Lcn/jiguang/ar/r;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcn/jiguang/ar/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Lcn/jiguang/ar/u;

    iget-object p2, p0, Lcn/jiguang/ar/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p1, p2}, Lcn/jiguang/ar/u;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcn/jiguang/ar/r;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/ar/r;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ar/r;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized b(J)J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcn/jiguang/ar/r;->f:J

    add-long/2addr v0, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_12

    iput-wide p1, p0, Lcn/jiguang/ar/r;->f:J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    :cond_12
    :try_start_12
    iput-wide v0, p0, Lcn/jiguang/ar/r;->f:J
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcn/jiguang/ar/r;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ar/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c()Landroid/os/Looper;
    .registers 2

    new-instance v0, Lcn/jiguang/ar/t;

    const-string v1, "Step"

    invoke-direct {v0, v1}, Lcn/jiguang/ar/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method static synthetic c(Lcn/jiguang/ar/r;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(J)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcn/jiguang/ar/r;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcn/jiguang/ar/r;->g:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_41

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcn/jiguang/ar/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_41

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_16
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_24

    :try_start_1c
    iget-object v0, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_29

    :cond_24
    iget-object p1, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_29} :catch_29

    :catch_29
    :goto_29
    :try_start_29
    iget-object p1, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_3d

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    :cond_3d
    iget-object p1, p0, Lcn/jiguang/ar/r;->g:Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-object p1

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcn/jiguang/ar/r;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_2c

    iput-object p1, p0, Lcn/jiguang/ar/r;->g:Ljava/lang/Object;

    iget-object p1, p0, Lcn/jiguang/ar/r;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcn/jiguang/ar/r;->c:Landroid/os/Handler;

    const/16 v0, 0xe9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcn/jiguang/ar/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :try_start_1c
    iget-object p1, p0, Lcn/jiguang/ar/r;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_25

    :catchall_25
    const-string p1, "Step"

    const-string v0, "done!"

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public final a(Ljava/util/concurrent/Callable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcn/jiguang/ar/r;->a:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/jiguang/ar/r;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_13

    iget-object v0, p0, Lcn/jiguang/ar/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_22

    :cond_13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xe9

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/jiguang/ar/r;->c:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_22
    iget-object p1, p0, Lcn/jiguang/ar/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_28

    :catchall_28
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcn/jiguang/ar/r;->g:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ar/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcn/jiguang/ar/r;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcn/jiguang/ar/r;->c:Landroid/os/Handler;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clean executor e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Step"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
