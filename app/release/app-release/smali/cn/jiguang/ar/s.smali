.class final Lcn/jiguang/ar/s;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field final synthetic a:Lcn/jiguang/ar/r;


# direct methods
.method constructor <init>(Lcn/jiguang/ar/r;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 15

    iput-object p1, p0, Lcn/jiguang/ar/s;->a:Lcn/jiguang/ar/r;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcn/jiguang/ar/s;->getActiveCount()I

    move-result p2

    if-gt p2, p1, :cond_20

    invoke-virtual {p0}, Lcn/jiguang/ar/s;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcn/jiguang/ar/s;->a:Lcn/jiguang/ar/r;

    invoke-static {p2}, Lcn/jiguang/ar/r;->a(Lcn/jiguang/ar/r;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xe9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    if-nez p2, :cond_20

    goto :goto_22

    :cond_20
    const/4 p2, 0x0

    goto :goto_23

    :catchall_22
    :goto_22
    const/4 p2, 0x1

    :goto_23
    if-eqz p2, :cond_37

    :try_start_25
    iget-object p2, p0, Lcn/jiguang/ar/s;->a:Lcn/jiguang/ar/r;

    invoke-static {p2}, Lcn/jiguang/ar/r;->b(Lcn/jiguang/ar/r;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/jiguang/ar/s;->a:Lcn/jiguang/ar/r;

    invoke-static {p1}, Lcn/jiguang/ar/r;->c(Lcn/jiguang/ar/r;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_37

    :catchall_37
    :cond_37
    return-void
.end method
