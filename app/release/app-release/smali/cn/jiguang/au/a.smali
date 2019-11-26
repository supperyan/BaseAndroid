.class public final Lcn/jiguang/au/a;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static volatile a:Lcn/jiguang/au/a;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:J

.field private d:J

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/au/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x2255100

    iput-wide v0, p0, Lcn/jiguang/au/a;->c:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcn/jiguang/au/a;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/au/a;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcn/jiguang/au/a;
    .registers 2

    sget-object v0, Lcn/jiguang/au/a;->a:Lcn/jiguang/au/a;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/au/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/au/a;->a:Lcn/jiguang/au/a;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/au/a;

    invoke-direct {v1}, Lcn/jiguang/au/a;-><init>()V

    sput-object v1, Lcn/jiguang/au/a;->a:Lcn/jiguang/au/a;

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
    sget-object v0, Lcn/jiguang/au/a;->a:Lcn/jiguang/au/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3

    invoke-static {p0}, Lcn/jiguang/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcn/jiguang/f/i;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_c
    :try_start_c
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_26

    :catch_11
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dns resolve failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DNSLoader"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return-object p0
.end method

.method static synthetic a(Lcn/jiguang/au/a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/au/a;->e:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    return-object v6

    :cond_10
    invoke-static/range {p2 .. p2}, Lcn/jiguang/au/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1d

    new-array v0, v7, [Ljava/net/InetAddress;

    aput-object v5, v0, v8

    return-object v0

    :cond_1d
    iget-wide v9, v1, Lcn/jiguang/au/a;->c:J

    iget-wide v11, v1, Lcn/jiguang/au/a;->d:J

    iget-object v5, v1, Lcn/jiguang/au/a;->e:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-eqz v5, :cond_32

    iget-object v13, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v13, :cond_30

    goto :goto_32

    :cond_30
    const/4 v13, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v13, 0x1

    :goto_33
    if-eqz v13, :cond_3e

    invoke-static/range {p2 .. p2}, Lcn/jiguang/g/a;->c(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v14

    invoke-static {v0, v14}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_40

    :cond_3e
    iget-object v14, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_40
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long/2addr v9, v14

    cmp-long v18, v16, v9

    if-gtz v18, :cond_ba

    if-eqz v13, :cond_a2

    invoke-static/range {p2 .. p2}, Lcn/jiguang/g/a;->b(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_62

    goto :goto_91

    :cond_62
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    array-length v10, v5

    const/4 v13, 0x0

    :goto_6f
    if-ge v13, v10, :cond_80

    aget-object v18, v5, v13

    invoke-static/range {v18 .. v18}, Lcn/jiguang/au/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_7c

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_6f

    :cond_80
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_88

    const/4 v6, 0x0

    goto :goto_91

    :cond_88
    new-array v5, v8, [Ljava/net/InetAddress;

    invoke-interface {v9, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, [Ljava/net/InetAddress;

    :goto_91
    if-eqz v6, :cond_a7

    new-instance v5, Landroid/util/Pair;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v1, Lcn/jiguang/au/a;->e:Ljava/util/Map;

    invoke-interface {v9, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    :cond_a2
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Ljava/net/InetAddress;

    :cond_a7
    :goto_a7
    if-eqz v6, :cond_ba

    new-instance v5, Landroid/util/Pair;

    add-long/2addr v14, v11

    cmp-long v9, v16, v14

    if-lez v9, :cond_b1

    goto :goto_b2

    :cond_b1
    const/4 v7, 0x0

    :goto_b2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_ba
    const/4 v5, 0x0

    :goto_bb
    const-string v6, "use cache="

    const-string v7, "DNSLoader"

    if-eqz v5, :cond_f8

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v8, :cond_ca

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [Ljava/net/InetAddress;

    goto :goto_cb

    :cond_ca
    const/4 v8, 0x0

    :goto_cb
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_f9

    if-eqz p5, :cond_e4

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcn/jiguang/au/b;

    invoke-direct {v4, v0, v2, v1}, Lcn/jiguang/au/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/jiguang/au/a;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v3}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_ed
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_f8
    const/4 v8, 0x0

    :cond_f9
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcn/jiguang/au/b;

    invoke-direct {v9, v0, v2, v1}, Lcn/jiguang/au/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/jiguang/au/a;)V

    invoke-direct {v5, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v5}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-nez v0, :cond_116

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_111
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ed

    :cond_116
    :try_start_116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "waiting dns for "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;
    :try_end_12f
    .catchall {:try_start_116 .. :try_end_12f} :catchall_130

    goto :goto_143

    :catchall_130
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run futureTask e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_143
    if-eqz v0, :cond_15b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use resolved result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_15b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_111
.end method
