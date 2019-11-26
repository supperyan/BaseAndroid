.class public final Lcn/jiguang/ar/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/ar/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/jiguang/ar/l;

.field private final b:Lcn/jiguang/ar/r;

.field private final c:Lcn/jiguang/ar/g;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/jiguang/ar/h;


# direct methods
.method public constructor <init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/h;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/jiguang/ar/l;",
            "Lcn/jiguang/ar/h;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jiguang/ar/q;->b:Lcn/jiguang/ar/r;

    iput-object p1, p0, Lcn/jiguang/ar/q;->c:Lcn/jiguang/ar/g;

    iput-object p2, p0, Lcn/jiguang/ar/q;->e:Lcn/jiguang/ar/h;

    iput-object p3, p0, Lcn/jiguang/ar/q;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    iput-object p2, p0, Lcn/jiguang/ar/q;->b:Lcn/jiguang/ar/r;

    iput-object p3, p0, Lcn/jiguang/ar/q;->c:Lcn/jiguang/ar/g;

    return-void
.end method

.method private a()Lcn/jiguang/ar/n;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ar/q;->c:Lcn/jiguang/ar/g;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    invoke-virtual {v0}, Lcn/jiguang/ar/l;->a()I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/ar/q;->c:Lcn/jiguang/ar/g;

    invoke-virtual {v1, v0}, Lcn/jiguang/ar/g;->a(I)Lcn/jiguang/ar/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jiguang/ar/q;->a(Lcn/jiguang/ar/h;)Lcn/jiguang/ar/n;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcn/jiguang/ar/q;->e:Lcn/jiguang/ar/h;

    invoke-direct {p0, v0}, Lcn/jiguang/ar/q;->a(Lcn/jiguang/ar/h;)Lcn/jiguang/ar/n;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object v0

    :catchall_1c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SisTask"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcn/jiguang/ar/h;)Lcn/jiguang/ar/n;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " port:"

    const-string v3, "SisTask"

    const/4 v4, 0x0

    if-eqz v0, :cond_fb

    iget-object v5, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    if-nez v5, :cond_11

    goto/16 :goto_fb

    :cond_11
    :try_start_11
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_dd

    :try_start_16
    sget-object v6, Lcn/jiguang/aq/a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    sget-object v6, Lcn/jiguang/aq/a;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    :cond_26
    sget v6, Lcn/jiguang/aq/a;->b:I

    if-lez v6, :cond_2e

    sget v6, Lcn/jiguang/aq/a;->b:I

    iput v6, v0, Lcn/jiguang/ar/h;->b:I

    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "send sis:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    iget v7, v0, Lcn/jiguang/ar/h;->b:I

    invoke-direct {v1, v5, v6, v7}, Lcn/jiguang/ar/q;->a(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, v6, v7

    instance-of v8, v8, Lcn/jiguang/ar/n;

    const/4 v9, 0x1

    if-eqz v8, :cond_8c

    iget-object v2, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    iget-object v8, v1, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    invoke-virtual {v8, v2}, Lcn/jiguang/ar/l;->a(Z)V

    iget-object v8, v1, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    iget-object v8, v8, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    new-array v9, v9, [Lcn/jiguang/g/a;

    invoke-static {v2}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcn/jiguang/ar/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, v9, v7

    invoke-static {v8, v9}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    iget-object v0, v1, Lcn/jiguang/ar/q;->b:Lcn/jiguang/ar/r;

    if-eqz v0, :cond_84

    iget-object v0, v1, Lcn/jiguang/ar/q;->b:Lcn/jiguang/ar/r;

    aget-object v2, v6, v7

    invoke-virtual {v0, v2}, Lcn/jiguang/ar/r;->a(Ljava/lang/Object;)V

    :cond_84
    aget-object v0, v6, v7

    check-cast v0, Lcn/jiguang/ar/n;
    :try_end_88
    .catchall {:try_start_16 .. :try_end_88} :catchall_db

    :try_start_88
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8b

    :catchall_8b
    return-object v0

    :cond_8c
    :try_start_8c
    aget-object v7, v6, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "sis failed("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "):"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    const/4 v11, 0x1

    iget-object v2, v0, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcn/jiguang/ar/h;->b:I

    iget-object v0, v1, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/b;->b(Landroid/content/Context;)J

    move-result-wide v14

    move/from16 v18, v7

    invoke-virtual/range {v10 .. v18}, Lcn/jiguang/ar/l;->a(ILjava/lang/String;IJJI)V
    :try_end_d7
    .catchall {:try_start_8c .. :try_end_d7} :catchall_db

    :goto_d7
    :try_start_d7
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_f3

    goto :goto_f3

    :catchall_db
    move-exception v0

    goto :goto_df

    :catchall_dd
    move-exception v0

    move-object v5, v4

    :goto_df
    :try_start_df
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "sis e:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_df .. :try_end_f0} :catchall_f4

    if-eqz v5, :cond_f3

    goto :goto_d7

    :catchall_f3
    :cond_f3
    :goto_f3
    return-object v4

    :catchall_f4
    move-exception v0

    if-eqz v5, :cond_fa

    :try_start_f7
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fa

    :catchall_fa
    :cond_fa
    throw v0

    :cond_fb
    :goto_fb
    return-object v4
.end method

.method private a(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I)[Ljava/lang/Object;
    .registers 16

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    :try_start_b
    iget-object v3, p0, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    iget-object v5, p0, Lcn/jiguang/ar/q;->d:Ljava/util/Set;

    invoke-virtual {v3, v5}, Lcn/jiguang/ar/l;->a(Ljava/util/Set;)[B

    move-result-object v3
    :try_end_13
    .catch Lcn/jiguang/at/e; {:try_start_b .. :try_end_13} :catch_141

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    invoke-direct {v5, v3, v6, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v3, 0x3

    :try_start_1e
    invoke-static {p1, v5}, Lcn/jiguang/ar/c;->a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_12f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    :try_start_2d
    invoke-static {p1}, Lcn/jiguang/ar/c;->a([B)[B

    move-result-object p1
    :try_end_31
    .catch Lcn/jiguang/at/e; {:try_start_2d .. :try_end_31} :catch_125

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lcn/jiguang/ar/n;

    invoke-direct {p1, v5}, Lcn/jiguang/ar/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/ar/n;->a()Z

    move-result v5

    const/4 v6, 0x6

    if-eqz v5, :cond_49

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    return-object v1

    :cond_49
    iget-object v5, p0, Lcn/jiguang/ar/q;->a:Lcn/jiguang/ar/l;

    iget-object v5, v5, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/jiguang/ar/n;->a()Z

    move-result v7

    if-nez v7, :cond_11b

    iget-object v7, p1, Lcn/jiguang/ar/n;->a:Ljava/util/LinkedHashSet;

    invoke-static {v7}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcn/jiguang/ar/n;->b:Ljava/util/LinkedHashSet;

    invoke-static {v8}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcn/jiguang/f/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "updateSisInfo ips="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " sslIps="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " net="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SisTask"

    invoke-static {v11, v10}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    new-array v10, v10, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->H()Lcn/jiguang/g/a;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v7

    aput-object v7, v10, v2

    invoke-static {}, Lcn/jiguang/g/a;->I()Lcn/jiguang/g/a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v7

    aput-object v7, v10, v4

    invoke-static {v2}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v7

    iget-object v8, p1, Lcn/jiguang/ar/n;->c:Ljava/util/LinkedHashSet;

    invoke-static {v8}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v7

    aput-object v7, v10, v0

    invoke-static {v4}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v0

    iget-object v7, p1, Lcn/jiguang/ar/n;->d:Ljava/util/LinkedHashSet;

    invoke-static {v7}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, v10, v3

    const/4 v0, 0x4

    invoke-static {}, Lcn/jiguang/g/a;->M()Lcn/jiguang/g/a;

    move-result-object v3

    iget-object v7, p1, Lcn/jiguang/ar/n;->e:Ljava/util/LinkedHashSet;

    invoke-static {v7}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v10, v0

    const/4 v0, 0x5

    invoke-static {}, Lcn/jiguang/g/a;->P()Lcn/jiguang/g/a;

    move-result-object v3

    iget-object v7, p1, Lcn/jiguang/ar/n;->f:Lorg/json/JSONObject;

    if-eqz v7, :cond_df

    iget-object v7, p1, Lcn/jiguang/ar/n;->f:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_e0

    :cond_df
    const/4 v7, 0x0

    :goto_e0
    invoke-virtual {v3, v7}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v10, v0

    invoke-static {}, Lcn/jiguang/g/a;->J()Lcn/jiguang/g/a;

    move-result-object v0

    iget-boolean v3, p1, Lcn/jiguang/ar/n;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, v10, v6

    const/4 v0, 0x7

    invoke-static {}, Lcn/jiguang/g/a;->K()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v10, v0

    invoke-static {v5, v10}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-array v0, v4, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->D()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_11b
    new-instance v0, Lcn/jiguang/ar/h;

    invoke-direct {v0, p2, p3}, Lcn/jiguang/ar/h;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p1, Lcn/jiguang/ar/n;->g:Lcn/jiguang/ar/h;

    aput-object p1, v1, v2

    return-object v1

    :catch_125
    move-exception p1

    iget p1, p1, Lcn/jiguang/at/e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    return-object v1

    :catch_12f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    return-object v1

    :catch_141
    move-exception p1

    iget p1, p1, Lcn/jiguang/at/e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    return-object v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/ar/q;->a()Lcn/jiguang/ar/n;

    move-result-object v0

    return-object v0
.end method
