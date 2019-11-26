.class public final Lcn/jiguang/ar/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/aw/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/jiguang/ar/l;

.field private final b:Lcn/jiguang/ar/r;

.field private final c:Lcn/jiguang/ar/g;

.field private final d:Lcn/jiguang/ar/i;


# direct methods
.method public constructor <init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;Lcn/jiguang/ar/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/ar/b;->b:Lcn/jiguang/ar/r;

    iput-object p1, p0, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    iput-object p3, p0, Lcn/jiguang/ar/b;->c:Lcn/jiguang/ar/g;

    iput-object p4, p0, Lcn/jiguang/ar/b;->d:Lcn/jiguang/ar/i;

    return-void
.end method

.method private a()Lcn/jiguang/aw/a;
    .registers 21

    move-object/from16 v1, p0

    const-string v0, ", port:"

    const-string v2, "ConnTask"

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, v1, Lcn/jiguang/ar/b;->c:Lcn/jiguang/ar/g;

    if-eqz v4, :cond_164

    iget-object v4, v1, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    invoke-virtual {v4}, Lcn/jiguang/ar/l;->a()I

    move-result v4

    iget-object v5, v1, Lcn/jiguang/ar/b;->c:Lcn/jiguang/ar/g;

    invoke-virtual {v5, v4}, Lcn/jiguang/ar/g;->a(I)Lcn/jiguang/ar/h;

    move-result-object v4

    iget-object v5, v1, Lcn/jiguang/ar/b;->b:Lcn/jiguang/ar/r;

    invoke-virtual {v5}, Lcn/jiguang/ar/r;->a()Z

    move-result v5

    if-eqz v5, :cond_20

    return-object v3

    :cond_20
    iget-object v5, v1, Lcn/jiguang/ar/b;->d:Lcn/jiguang/ar/i;

    const/16 v6, -0x3df

    if-eqz v5, :cond_147

    iget-object v5, v1, Lcn/jiguang/ar/b;->d:Lcn/jiguang/ar/i;

    iget-boolean v5, v5, Lcn/jiguang/ar/i;->a:Z

    if-eqz v5, :cond_2e

    goto/16 :goto_147

    :cond_2e
    if-nez v4, :cond_31

    return-object v3

    :cond_31
    sget-object v5, Lcn/jiguang/aq/a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    sget-object v5, Lcn/jiguang/aq/a;->c:Ljava/lang/String;

    iput-object v5, v4, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    sget-object v5, Lcn/jiguang/aq/a;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v4, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    :cond_45
    sget v5, Lcn/jiguang/aq/a;->d:I

    if-lez v5, :cond_4d

    sget v5, Lcn/jiguang/aq/a;->d:I

    iput v5, v4, Lcn/jiguang/ar/h;->b:I

    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Open connection with ip="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v5, Lcn/jiguang/aw/b;

    const/16 v9, 0x1fc0

    const/16 v10, 0x14

    invoke-direct {v5, v9, v10}, Lcn/jiguang/aw/b;-><init>(II)V

    iget-object v9, v4, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    iget v10, v4, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v5, v9, v10}, Lcn/jiguang/aw/a;->a(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v1, Lcn/jiguang/ar/b;->b:Lcn/jiguang/ar/r;

    invoke-virtual {v10}, Lcn/jiguang/ar/r;->a()Z

    move-result v10

    if-eqz v10, :cond_89

    invoke-static {v5}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_89
    iget-object v10, v1, Lcn/jiguang/ar/b;->d:Lcn/jiguang/ar/i;

    iget-boolean v10, v10, Lcn/jiguang/ar/i;->a:Z

    if-eqz v10, :cond_9d

    new-instance v0, Lcn/jiguang/at/e;

    invoke-direct {v0, v6, v3}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    iget-object v4, v1, Lcn/jiguang/ar/b;->b:Lcn/jiguang/ar/r;

    invoke-virtual {v4, v0}, Lcn/jiguang/ar/r;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_9d
    if-nez v9, :cond_f4

    iget-object v6, v4, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    instance-of v6, v6, Ljava/net/Inet4Address;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_b2

    iget-object v6, v4, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    invoke-static {v6}, Lcn/jiguang/f/i;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b0

    goto :goto_b2

    :cond_b0
    const/4 v6, 0x0

    goto :goto_b3

    :cond_b2
    :goto_b2
    const/4 v6, 0x1

    :goto_b3
    iget-object v9, v1, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    iget-object v9, v9, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    new-array v10, v8, [Lcn/jiguang/g/a;

    invoke-static {v6}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v6

    invoke-virtual {v4}, Lcn/jiguang/ar/h;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v6

    aput-object v6, v10, v7

    invoke-static {v9, v10}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Succeed to open connection - ip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/ar/b;->b:Lcn/jiguang/ar/r;

    invoke-virtual {v0, v5}, Lcn/jiguang/ar/r;->a(Ljava/lang/Object;)V

    iget-object v0, v1, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v4, v8, v6, v7}, Lcn/jiguang/ar/e;->a(Landroid/content/Context;Lcn/jiguang/ar/h;IJ)V

    return-object v5

    :cond_f4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v7

    iget-object v6, v1, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    iget-object v6, v6, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v6}, Lcn/jiguang/d/b;->b(Landroid/content/Context;)J

    move-result-wide v15

    iget-object v11, v1, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    const/4 v12, 0x2

    iget-object v13, v4, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    iget v14, v4, Lcn/jiguang/ar/h;->b:I

    move-wide/from16 v17, v7

    move/from16 v19, v9

    invoke-virtual/range {v11 .. v19}, Lcn/jiguang/ar/l;->a(ILjava/lang/String;IJJI)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Failed("

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") to open connection - ip:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cost:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/ar/b;->a:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-static {v0, v4, v6, v7, v8}, Lcn/jiguang/ar/e;->a(Landroid/content/Context;Lcn/jiguang/ar/h;IJ)V

    invoke-static {v5}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_147
    :goto_147
    new-instance v0, Lcn/jiguang/at/e;

    invoke-direct {v0, v6, v3}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    iget-object v4, v1, Lcn/jiguang/ar/b;->b:Lcn/jiguang/ar/r;

    invoke-virtual {v4, v0}, Lcn/jiguang/ar/r;->a(Ljava/lang/Object;)V
    :try_end_151
    .catchall {:try_start_7 .. :try_end_151} :catchall_152

    return-object v3

    :catchall_152
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "run e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_164
    return-object v3
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/ar/b;->a()Lcn/jiguang/aw/a;

    move-result-object v0

    return-object v0
.end method
