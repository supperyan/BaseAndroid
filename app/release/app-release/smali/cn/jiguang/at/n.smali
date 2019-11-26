.class public final Lcn/jiguang/at/n;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static volatile a:Lcn/jiguang/at/n;

.field private static final b:Ljava/lang/Object;

.field private static e:J


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcn/jiguang/at/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/jiguang/ax/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/at/n;->b:Ljava/lang/Object;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcn/jiguang/at/n;->e:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jiguang/at/o;

    invoke-direct {v0, p0}, Lcn/jiguang/at/o;-><init>(Lcn/jiguang/at/n;)V

    iput-object v0, p0, Lcn/jiguang/at/n;->d:Lcn/jiguang/ax/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcn/jiguang/at/n;
    .registers 2

    sget-object v0, Lcn/jiguang/at/n;->a:Lcn/jiguang/at/n;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/at/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/at/n;->a:Lcn/jiguang/at/n;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/at/n;

    invoke-direct {v1}, Lcn/jiguang/at/n;-><init>()V

    sput-object v1, Lcn/jiguang/at/n;->a:Lcn/jiguang/at/n;

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
    sget-object v0, Lcn/jiguang/at/n;->a:Lcn/jiguang/at/n;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/at/c;)[B
    .registers 10

    iget v1, p1, Lcn/jiguang/at/c;->d:I

    iget v2, p1, Lcn/jiguang/at/c;->e:I

    iget-wide v3, p1, Lcn/jiguang/at/c;->f:J

    iget-object v5, p1, Lcn/jiguang/at/c;->g:[B

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcn/jiguang/av/b;->a(Landroid/content/Context;IIJ[BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public static b()J
    .registers 7

    sget-wide v0, Lcn/jiguang/at/n;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcn/jiguang/at/n;->e:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-ltz v6, :cond_10

    sput-wide v2, Lcn/jiguang/at/n;->e:J

    :cond_10
    sget-wide v0, Lcn/jiguang/at/n;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(J)V
    .registers 7

    iget-object v0, p0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/at/c;

    if-eqz v0, :cond_31

    iget-boolean v1, v0, Lcn/jiguang/at/c;->j:Z

    if-eqz v1, :cond_1e

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v1

    const-wide/32 v2, 0x186a0

    add-long/2addr p1, v2

    long-to-int p2, p1

    invoke-virtual {v1, p2}, Lcn/jiguang/ax/b;->b(I)V

    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handle reponse :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TcpRequestManager"

    invoke-static {p2, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 12

    iget-object v0, p0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "TcpRequestManager"

    if-eqz v0, :cond_10

    const-string p1, "no cache request"

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/at/c;

    iget-boolean v3, v3, Lcn/jiguang/at/c;->j:Z

    if-eqz v3, :cond_1a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jiguang/at/c;

    iget-wide v5, v5, Lcn/jiguang/at/c;->h:J

    sub-long/2addr v3, v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jiguang/at/c;

    iget-wide v5, v5, Lcn/jiguang/at/c;->i:J

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x2710

    cmp-long v9, v5, v7

    if-ltz v9, :cond_87

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/at/c;

    iget v4, v3, Lcn/jiguang/at/c;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcn/jiguang/at/c;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send again:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/at/h;->c()Lcn/jiguang/ar/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/ar/i;->c()Lcn/jiguang/aw/a;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/at/c;

    invoke-static {p1, v2}, Lcn/jiguang/at/n;->a(Landroid/content/Context;Lcn/jiguang/at/c;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/jiguang/aw/a;->a([B)I

    goto :goto_1a

    :cond_87
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shoud not send again by 10000ms,hasRequestTime:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",timeout:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/at/c;

    iget-wide v2, v2, Lcn/jiguang/at/c;->i:J

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_aa
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .registers 7

    iget-object v0, p0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/at/c;

    const-string v1, "TcpRequestManager"

    if-nez v0, :cond_22

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not found requst by rid:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "request time out:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    iget-object p2, v0, Lcn/jiguang/at/c;->c:Ljava/lang/String;

    iget-wide v1, v0, Lcn/jiguang/at/c;->b:J

    iget p3, v0, Lcn/jiguang/at/c;->d:I

    invoke-static {p1, p2, v1, v2, p3}, Lcn/jiguang/at/b;->a(Landroid/content/Context;Ljava/lang/String;JI)V

    return-void
.end method

.method public final a(Landroid/content/Context;JII[BLjava/lang/String;)V
    .registers 23

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Lcn/jiguang/ar/c;->b(Landroid/content/Context;)J

    move-result-wide v12

    iget-object v1, v0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "TcpRequestManager"

    const-string v2, "Generator same rid,not do this msg"

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    new-instance v14, Lcn/jiguang/at/c;

    const-wide/16 v9, 0x0

    move-object v1, v14

    move-wide/from16 v2, p2

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide v7, v12

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcn/jiguang/at/c;-><init>(JLjava/lang/String;IIJJ[B)V

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/at/h;->d()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/at/h;->c()Lcn/jiguang/ar/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/ar/i;->c()Lcn/jiguang/aw/a;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v14}, Lcn/jiguang/at/n;->a(Landroid/content/Context;Lcn/jiguang/at/c;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jiguang/aw/a;->a([B)I

    :cond_4b
    iget-object v1, v0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/content/Context;JII[BLjava/lang/String;J)V
    .registers 25

    move-object v0, p0

    const/16 v1, 0xa

    move/from16 v6, p4

    if-ne v6, v1, :cond_a

    move-wide/from16 v13, p2

    goto :goto_34

    :cond_a
    invoke-static/range {p1 .. p1}, Lcn/jiguang/ar/c;->b(Landroid/content/Context;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Generator new rid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TcpRequestManager"

    invoke-static {v4, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v1, "Generator same rid,not do this msg"

    invoke-static {v4, v1}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    move-wide v13, v1

    :goto_34
    const-wide/16 v1, 0x0

    cmp-long v3, p8, v1

    if-gtz v3, :cond_3e

    const-wide/16 v1, 0x2710

    move-wide v10, v1

    goto :goto_40

    :cond_3e
    move-wide/from16 v10, p8

    :goto_40
    new-instance v1, Lcn/jiguang/at/c;

    move-object v2, v1

    move-wide/from16 v3, p2

    move-object/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide v8, v13

    move-wide/from16 p2, v10

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcn/jiguang/at/c;-><init>(JLjava/lang/String;IIJJ[B)V

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/at/h;->d()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/at/h;->c()Lcn/jiguang/ar/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/ar/i;->c()Lcn/jiguang/aw/a;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lcn/jiguang/at/n;->a(Landroid/content/Context;Lcn/jiguang/at/c;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/jiguang/aw/a;->a([B)I

    :cond_72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/at/c;->h:J

    iget-object v2, v0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v1

    const-wide/32 v2, 0x186a0

    add-long/2addr v13, v2

    long-to-int v2, v13

    iget-object v3, v0, Lcn/jiguang/at/n;->d:Lcn/jiguang/ax/a;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v2, v4, v5, v3}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    return-void
.end method

.method public final b(J)Lcn/jiguang/at/c;
    .registers 4

    iget-object v0, p0, Lcn/jiguang/at/n;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/jiguang/at/c;

    return-object p1
.end method
