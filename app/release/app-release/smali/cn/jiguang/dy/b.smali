.class public Lcn/jiguang/dy/b;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static volatile a:Lcn/jiguang/dy/b;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/jiguang/dy/b;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/jiguang/am/b;->a()Lcn/jiguang/am/b;

    return-void
.end method

.method public static a()Lcn/jiguang/dy/b;
    .registers 2

    sget-object v0, Lcn/jiguang/dy/b;->a:Lcn/jiguang/dy/b;

    if-nez v0, :cond_17

    const-class v0, Lcn/jiguang/dy/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/dy/b;->a:Lcn/jiguang/dy/b;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/dy/b;

    invoke-direct {v1}, Lcn/jiguang/dy/b;-><init>()V

    sput-object v1, Lcn/jiguang/dy/b;->a:Lcn/jiguang/dy/b;

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
    sget-object v0, Lcn/jiguang/dy/b;->a:Lcn/jiguang/dy/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "JDB"

    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "context:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",pluginId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",o:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "K9Ow/j0uADRPpP0ZrnpQ3A=="

    invoke-static {v6}, Lcn/jiguang/bb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_b1

    if-eq v2, v9, :cond_b1

    if-eq v2, v7, :cond_44

    goto/16 :goto_1f2

    :cond_44
    invoke-static {v1, v8}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "impClass:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",forClass:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",forField:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_a .. :try_end_71} :catchall_1ed

    :try_start_71
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-virtual {v7, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_9d

    goto/16 :goto_1f2

    :catchall_9d
    move-exception v0

    :try_start_9e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "d e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ac
    invoke-static {v4, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f2

    :cond_b1
    invoke-static/range {p0 .. p1}, Lcn/jiguang/dy/b;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_1eb

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_bf

    goto/16 :goto_1eb

    :cond_bf
    const-string v11, "p"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "o"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "l"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1e9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1e9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_eb

    goto/16 :goto_1e9

    :cond_eb
    const-string v13, "Vd1zcNfZVmpqw+2NKX98sOf8ivTVMeqdIaqCpaA/CRg="

    invoke-static {v13}, Lcn/jiguang/bb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "STVo4dDOk4G2wtqJZNmnGg=="

    invoke-static {v14}, Lcn/jiguang/bb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-class v15, Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v15, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x4

    const/4 v14, 0x3

    if-nez v2, :cond_13a

    const-string v1, "Zaqi7qnhpEu8dzobKmLDqlzxa1KuKDP47tarZAn48u8="

    invoke-static {v1}, Lcn/jiguang/bb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v11, v2, v8

    aput-object v12, v2, v9

    aput-object v10, v2, v7

    aput-object v0, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13a
    invoke-static {v1, v14}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v7, "diy c l:"

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_9e .. :try_end_14f} :catchall_1ed

    :try_start_14f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-array v14, v9, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v8

    invoke-virtual {v7, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v15, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v7, v6, v14

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v6, v13

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v8

    aput-object v12, v5, v9

    const/4 v6, 0x2

    aput-object v10, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_191
    .catchall {:try_start_14f .. :try_end_191} :catchall_1d0

    :try_start_191
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cf

    sget-object v2, Lcn/jiguang/dy/b;->b:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    sget-object v2, Lcn/jiguang/dy/b;->b:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ac
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1cf

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "d d file success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cf
    .catchall {:try_start_191 .. :try_end_1cf} :catchall_1cf

    :catchall_1cf
    :cond_1cf
    return-object v0

    :catchall_1d0
    move-exception v0

    :try_start_1d1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "d "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e7
    .catchall {:try_start_1d1 .. :try_end_1e7} :catchall_1ed

    goto/16 :goto_ac

    :cond_1e9
    :goto_1e9
    const/4 v1, 0x0

    return-object v1

    :cond_1eb
    :goto_1eb
    const/4 v1, 0x0

    return-object v1

    :catchall_1ed
    const-string v0, "d failed"

    invoke-static {v4, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/ak/a;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;Lcn/jiguang/ak/a;Z)Ljava/io/File;

    move-result-object v0

    const-string v1, "JDB"

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    :try_start_26
    sget-object v2, Lcn/jiguang/dy/b;->b:Ljava/util/Map;

    iget v3, p1, Lcn/jiguang/ak/a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4f

    sget-object v2, Lcn/jiguang/dy/b;->b:Ljava/util/Map;

    iget v3, p1, Lcn/jiguang/ak/a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_4e

    if-eqz v3, :cond_4f

    return-object v2

    :catchall_4e
    nop

    :cond_4f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcn/jiguang/aj/b;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_64
    sget-object p0, Lcn/jiguang/dy/b;->b:Ljava/util/Map;

    iget p1, p1, Lcn/jiguang/ak/a;->k:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_7a

    goto :goto_7a

    :cond_70
    const-string v0, "d failed,clear p"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;Lcn/jiguang/ak/a;)V

    const-string v0, ""

    :catchall_7a
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "end p:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {}, Lcn/jiguang/aj/c;->a()Lcn/jiguang/aj/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/jiguang/aj/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "JDB"

    if-nez p0, :cond_b

    :try_start_5
    const-string p0, "context is null"

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    sput-object p0, Lcn/jiguang/dy/Protocol;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/dy/Protocol;->e(I)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_17

    :catchall_11
    move-exception p0

    const-string p1, "lP:"

    invoke-static {v1, p1, p0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return v0
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/ak/a;I)Z
    .registers 7

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    :try_start_d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "JDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p c vc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",p vc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcn/jiguang/ak/a;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcn/jiguang/ak/a;->m:I

    if-lt p2, v0, :cond_36

    invoke-static {p0, p1}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;Lcn/jiguang/ak/a;)V
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_36

    return v1

    :catchall_36
    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/jiguang/aj/a;->b(Landroid/content/Context;I)Lcn/jiguang/ak/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0, v0, p1}, Lcn/jiguang/dy/b;->a(Landroid/content/Context;Lcn/jiguang/ak/a;I)Z

    move-result p1

    if-nez p1, :cond_f

    return-object v1

    :cond_f
    invoke-static {p0, v0}, Lcn/jiguang/dy/b;->a(Landroid/content/Context;Lcn/jiguang/ak/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_1a
    iget-object v1, v0, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    iget v2, v0, Lcn/jiguang/ak/a;->k:I

    iget v3, v0, Lcn/jiguang/ak/a;->m:I

    invoke-static {p0, v1, v2, v3}, Lcn/jiguang/aj/b;->c(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "o:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JDB"

    invoke-static {v3, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    iget v4, v0, Lcn/jiguang/ak/a;->k:I

    iget v0, v0, Lcn/jiguang/ak/a;->m:I

    invoke-static {p0, v2, v4, v0}, Lcn/jiguang/aj/b;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "l:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "p"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "o"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "l"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
