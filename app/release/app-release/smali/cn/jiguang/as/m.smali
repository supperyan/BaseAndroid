.class public final Lcn/jiguang/as/m;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static volatile a:Lcn/jiguang/as/m;

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
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;",
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

    sput-object v0, Lcn/jiguang/as/m;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcn/jiguang/as/m;->c:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcn/jiguang/as/m;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/as/m;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcn/jiguang/as/m;
    .registers 2

    sget-object v0, Lcn/jiguang/as/m;->a:Lcn/jiguang/as/m;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/as/m;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/as/m;->a:Lcn/jiguang/as/m;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/as/m;

    invoke-direct {v1}, Lcn/jiguang/as/m;-><init>()V

    sput-object v1, Lcn/jiguang/as/m;->a:Lcn/jiguang/as/m;

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
    sget-object v0, Lcn/jiguang/as/m;->a:Lcn/jiguang/as/m;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation

    const-string v1, "SRVLoader"

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    invoke-static/range {p0 .. p0}, Lcn/jiguang/as/h;->a(Ljava/lang/String;)Lcn/jiguang/as/h;

    move-result-object v0

    sget-object v3, Lcn/jiguang/as/h;->a:Lcn/jiguang/as/h;

    invoke-static {v0, v3}, Lcn/jiguang/as/h;->a(Lcn/jiguang/as/h;Lcn/jiguang/as/h;)Lcn/jiguang/as/h;

    move-result-object v0

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcn/jiguang/as/j;->a(Lcn/jiguang/as/h;II)Lcn/jiguang/as/j;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/as/f;->a(Lcn/jiguang/as/j;)Lcn/jiguang/as/f;

    move-result-object v0

    const v3, 0xffff

    invoke-virtual {v0, v3}, Lcn/jiguang/as/f;->b(I)[B

    move-result-object v3
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_26} :catch_161

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "srv host:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_3e
    invoke-static {}, Lcn/jiguang/as/l;->b()Lcn/jiguang/as/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/as/l;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14d

    array-length v6, v0

    if-nez v6, :cond_4d

    goto/16 :goto_14d

    :cond_4d
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcn/jiguang/au/a;->a()Lcn/jiguang/au/a;

    move-result-object v13

    array-length v14, v0

    const/4 v15, 0x0

    const/4 v12, 0x0

    :goto_59
    if-ge v12, v14, :cond_7c

    aget-object v9, v0, v12

    const/4 v8, 0x0

    const-wide/16 v10, 0xbb8

    const/16 v16, 0x0

    move-object v7, v13

    move/from16 v17, v12

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Lcn/jiguang/au/a;->a(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;

    move-result-object v7

    if-eqz v7, :cond_73

    array-length v8, v7

    if-lez v8, :cond_73

    aget-object v7, v7, v15

    goto :goto_74

    :cond_73
    move-object v7, v2

    :goto_74
    if-eqz v7, :cond_79

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_79
    add-int/lit8 v12, v17, 0x1

    goto :goto_59

    :cond_7c
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_80
    :goto_80
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_160

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/net/InetAddress;
    :try_end_8d
    .catchall {:try_start_3e .. :try_end_8d} :catchall_14e

    :try_start_8d
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v8, 0x35

    invoke-direct {v0, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-static {v2, v0, v3, v8, v9}, Lcn/jiguang/as/q;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v0

    new-instance v8, Lcn/jiguang/as/f;

    invoke-direct {v8, v0}, Lcn/jiguang/as/f;-><init>([B)V
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_14e
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a4} :catch_12d

    :try_start_a4
    invoke-virtual {v8}, Lcn/jiguang/as/f;->a()Lcn/jiguang/as/j;

    move-result-object v0

    if-eqz v0, :cond_160

    invoke-virtual {v8, v4}, Lcn/jiguang/as/f;->a(I)[Lcn/jiguang/as/i;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_b0
    if-ge v9, v8, :cond_80

    aget-object v10, v7, v9

    invoke-virtual {v10}, Lcn/jiguang/as/i;->b()Lcn/jiguang/as/j;

    move-result-object v11

    invoke-virtual {v11}, Lcn/jiguang/as/j;->e()I

    move-result v11

    invoke-virtual {v0}, Lcn/jiguang/as/j;->e()I

    move-result v12

    if-ne v11, v12, :cond_12a

    invoke-virtual {v10}, Lcn/jiguang/as/i;->b()Lcn/jiguang/as/j;

    move-result-object v11

    invoke-virtual {v11}, Lcn/jiguang/as/j;->d()I

    move-result v11

    invoke-virtual {v0}, Lcn/jiguang/as/j;->c()I

    move-result v12

    if-ne v11, v12, :cond_12a

    invoke-virtual {v10}, Lcn/jiguang/as/i;->b()Lcn/jiguang/as/j;

    move-result-object v11

    invoke-virtual {v11}, Lcn/jiguang/as/j;->b()Lcn/jiguang/as/h;

    move-result-object v11

    invoke-virtual {v0}, Lcn/jiguang/as/j;->b()Lcn/jiguang/as/h;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/jiguang/as/h;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12a

    invoke-virtual {v10}, Lcn/jiguang/as/i;->a()Ljava/util/Iterator;

    move-result-object v10

    :cond_e6
    :goto_e6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/jiguang/as/o;

    invoke-virtual {v11}, Lcn/jiguang/as/o;->h()I

    move-result v12

    if-lez v12, :cond_e6

    invoke-virtual {v11}, Lcn/jiguang/as/o;->i()Lcn/jiguang/as/h;

    move-result-object v12

    invoke-virtual {v12}, Lcn/jiguang/as/h;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e6

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_117

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_117
    new-instance v13, Lcn/jiguang/ar/h;

    invoke-virtual {v11}, Lcn/jiguang/as/o;->h()I

    move-result v11

    invoke-direct {v13, v12, v11}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13}, Lcn/jiguang/ar/h;->a()Z

    move-result v11

    if-eqz v11, :cond_e6

    invoke-virtual {v5, v13}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    :cond_12a
    add-int/lit8 v9, v9, 0x1

    goto :goto_b0

    :catch_12d
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tcp send to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " err:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_a4 .. :try_end_14b} :catchall_14e

    goto/16 :goto_80

    :cond_14d
    :goto_14d
    return-object v5

    :catchall_14e
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get default ports error with Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_160
    return-object v5

    :catch_161
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t srv, create query:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic a(Lcn/jiguang/as/m;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 8

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_68

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_68

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_68

    iget-object p0, p0, Lcn/jiguang/as/m;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/ar/h;

    invoke-virtual {v1}, Lcn/jiguang/ar/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Lcn/jiguang/g/a;

    const/4 v3, 0x0

    invoke-static {p1}, Lcn/jiguang/g/a;->d(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {p1}, Lcn/jiguang/g/a;->e(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object p0

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_68
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Ljava/util/LinkedHashSet;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SRVLoader"

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    :cond_e
    iget-wide v5, v1, Lcn/jiguang/as/m;->c:J

    iget-wide v7, v1, Lcn/jiguang/as/m;->d:J

    iget-object v3, v1, Lcn/jiguang/as/m;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_2f

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v11, :cond_2f

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v11, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v11, 0x1

    :goto_30
    if-eqz v11, :cond_3b

    invoke-static/range {p1 .. p1}, Lcn/jiguang/g/a;->e(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v12

    invoke-static {v4, v12}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3d

    :cond_3b
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_3d
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v5, v12

    cmp-long v16, v14, v5

    if-gtz v16, :cond_b0

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v11, :cond_95

    invoke-static/range {p1 .. p1}, Lcn/jiguang/g/a;->d(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9a

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v11, 0x0

    :goto_6b
    if-ge v11, v6, :cond_82

    aget-object v16, v3, v11

    invoke-static/range {v16 .. v16}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v4

    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Lcn/jiguang/ar/h;->a()Z

    move-result v16

    if-eqz v16, :cond_7e

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_6b

    :cond_82
    iget-object v3, v1, Lcn/jiguang/as/m;->e:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    :cond_95
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Ljava/util/LinkedHashSet;

    :cond_9a
    :goto_9a
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b0

    new-instance v4, Landroid/util/Pair;

    add-long/2addr v12, v7

    cmp-long v3, v14, v12

    if-lez v3, :cond_a8

    const/4 v9, 0x1

    :cond_a8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b1

    :cond_b0
    const/4 v4, 0x0

    :goto_b1
    if-eqz v4, :cond_d2

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_c6

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    if-lez v3, :cond_c6

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    goto :goto_c7

    :cond_c6
    const/4 v3, 0x0

    :goto_c7
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d3

    return-object v3

    :cond_d2
    const/4 v3, 0x0

    :cond_d3
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcn/jiguang/as/n;

    invoke-direct {v5, v0, v1}, Lcn/jiguang/as/n;-><init>(Ljava/lang/String;Lcn/jiguang/as/m;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v4}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x2710

    :try_start_e2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/LinkedHashSet;
    :try_end_eb
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_ec

    goto :goto_ff

    :catchall_ec
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "run futureTask e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_ff
    if-eqz v4, :cond_119

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_119

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "use resolved result="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "use cache="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
