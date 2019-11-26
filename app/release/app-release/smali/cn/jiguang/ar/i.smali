.class public final Lcn/jiguang/ar/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Lcn/jiguang/aw/a;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "NetworkingClient"

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    new-instance p1, Lcn/jiguang/aw/b;

    const/16 v0, 0x1fc0

    const/16 v1, 0x14

    invoke-direct {p1, v0, v1}, Lcn/jiguang/aw/b;-><init>(II)V

    iput-object p1, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    return-void
.end method

.method private a(I)Z
    .registers 11

    :goto_0
    iget-boolean v0, p0, Lcn/jiguang/ar/i;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "NetworkingClient"

    if-gtz p1, :cond_16

    const-string p1, "login error,retry login too many times"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/ar/i;->e()V

    invoke-direct {p0}, Lcn/jiguang/ar/i;->d()V

    return v1

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loginTimes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/b;->a(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "resCode"

    const/4 v5, 0x0

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_3f
    iget-object v2, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    invoke-static {v2, v6}, Lcn/jiguang/ar/c;->b(Landroid/content/Context;Lcn/jiguang/aw/a;)I

    move-result v2

    if-eqz v2, :cond_64

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v2

    iget-object v7, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    const-string v8, "tcp_a13"

    invoke-virtual {v2, v7, v8, v6}, Lcn/jiguang/at/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcn/jiguang/ar/i;->e()V

    invoke-direct {p0}, Lcn/jiguang/ar/i;->d()V

    const/4 v2, 0x0

    goto :goto_70

    :cond_64
    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v2

    iget-object v6, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    const-string v7, "tcp_a11"

    invoke-virtual {v2, v6, v7, v5}, Lcn/jiguang/at/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6f
    const/4 v2, 0x1

    :goto_70
    if-nez v2, :cond_73

    return v1

    :cond_73
    iget-object v2, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    invoke-static {v2, v6}, Lcn/jiguang/ar/c;->a(Landroid/content/Context;Lcn/jiguang/aw/a;)I

    move-result v2

    if-gez v2, :cond_81

    invoke-direct {p0}, Lcn/jiguang/ar/i;->d()V

    return v1

    :cond_81
    if-lez v2, :cond_b8

    invoke-direct {p0}, Lcn/jiguang/ar/i;->e()V

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_93

    iget-object v0, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;)V

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_0

    :cond_93
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Action - onLoginFailed - respCode:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object p1

    iget-object v0, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    const-string v2, "tcp_a12"

    invoke-virtual {p1, v0, v2, v5}, Lcn/jiguang/at/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    :cond_b8
    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object p1

    iget-object v0, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    const-string v1, "tcp_a10"

    invoke-virtual {p1, v0, v1, v5}, Lcn/jiguang/at/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return v3
.end method

.method private a(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "NetworkingClient"

    const-string v1, "google:false"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    invoke-static {p1}, Lcn/jiguang/ar/l;->a(Landroid/content/Context;)Lcn/jiguang/ar/l;

    move-result-object p1

    new-instance v1, Lcn/jiguang/ar/k;

    invoke-direct {v1, p1}, Lcn/jiguang/ar/k;-><init>(Lcn/jiguang/ar/l;)V

    const/4 p1, 0x0

    :try_start_14
    invoke-virtual {v1, p0}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/i;)Lcn/jiguang/aw/a;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_29

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcn/jiguang/ar/i;->a(I)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "login failed"

    :goto_23
    invoke-static {v0, v1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_27
    const/4 p1, 0x1

    return p1

    :catch_29
    move-exception v1

    invoke-direct {p0}, Lcn/jiguang/ar/i;->d()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sis and connect failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method private d()V
    .registers 5

    const-string v0, "NetworkingClient"

    const-string v1, "Action - closeConnection"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    const-string v2, "tcp_a19"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/at/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private e()V
    .registers 7

    iget-object v0, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/jiguang/g/a;

    const/4 v2, 0x1

    invoke-static {v2}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    invoke-static {v5}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ar/i;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_24

    :try_start_7
    iget-object v0, p0, Lcn/jiguang/ar/i;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    const-string v1, "NetworkingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute networkingClient exception :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "NetworkingClient"

    const-string v1, "Action - stop"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/ar/i;->a:Z

    iget-object v0, p0, Lcn/jiguang/ar/i;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5f

    if-eqz v0, :cond_5d

    :try_start_14
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "NetworkingClient"

    const-string v2, "executor did not terminate"

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_33} :catch_4a

    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    :try_start_36
    const-string v1, "NetworkingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shutDown e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catch_4a
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-string v0, "NetworkingClient"

    const-string v1, "current thread is interrupted by self"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_5f

    monitor-exit p0

    return-void

    :cond_5d
    :goto_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcn/jiguang/aw/a;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    return-object v0
.end method

.method public final run()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Begin to run in ConnectingThread - id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkingClient"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    iget-object v0, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/jiguang/ar/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "prepare Push Channel failed , returned"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    :goto_29
    iget-boolean v0, p0, Lcn/jiguang/ar/i;->a:Z

    if-nez v0, :cond_8a

    const-string v0, "Network listening..."

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_84

    :try_start_32
    iget-object v0, p0, Lcn/jiguang/ar/i;->c:Lcn/jiguang/aw/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/jiguang/aw/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_84
    .catch Lcn/jiguang/at/e; {:try_start_32 .. :try_end_39} :catch_6c

    :try_start_39
    new-instance v2, Lcn/jiguang/ar/v;

    iget-object v3, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/jiguang/ar/v;-><init>(Landroid/content/Context;[B)V

    invoke-static {v1, v2}, Lcn/jiguang/ap/b;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received bytes - len:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pkg:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jiguang/ar/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catch_6c
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recv failed with error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,No Break!!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_39 .. :try_end_83} :catchall_84

    goto :goto_8a

    :catchall_84
    move-exception v0

    const-string v2, "run exception"

    invoke-static {v1, v2, v0}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8a
    :goto_8a
    iget-boolean v0, p0, Lcn/jiguang/ar/i;->a:Z

    if-eqz v0, :cond_93

    const-string v0, "Break receiving by wantStop"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    invoke-direct {p0}, Lcn/jiguang/ar/i;->d()V

    return-void
.end method
