.class public Lcn/jiguang/at/k;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static a:Lcn/jiguang/at/k;

.field private static e:I


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/jiguang/ar/h;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcn/jiguang/aw/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/jiguang/ar/h;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcn/jiguang/at/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcn/jiguang/ar/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jiguang/at/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/at/k;->f:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)I
    .registers 6

    const-class v0, Lcn/jiguang/at/k;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcn/jiguang/g/a;->G()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v2, 0x2710

    if-nez v1, :cond_22

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Lcn/jiguang/g/a;

    const/4 v3, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->G()Lcn/jiguang/g/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_43

    monitor-exit v0

    return p0

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Lcn/jiguang/at/k;
    .registers 2

    sget-object v0, Lcn/jiguang/at/k;->a:Lcn/jiguang/at/k;

    if-nez v0, :cond_17

    const-class v0, Lcn/jiguang/at/k;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/at/k;->a:Lcn/jiguang/at/k;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/at/k;

    invoke-direct {v1}, Lcn/jiguang/at/k;-><init>()V

    sput-object v1, Lcn/jiguang/at/k;->a:Lcn/jiguang/at/k;

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
    sget-object v0, Lcn/jiguang/at/k;->a:Lcn/jiguang/at/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;[BILjava/io/File;Ljava/util/Set;Lcn/jiguang/api/ReportCallBack;)Lcn/jiguang/at/m;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "[BI",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jiguang/api/ReportCallBack;",
            ")",
            "Lcn/jiguang/at/m;"
        }
    .end annotation

    new-instance v0, Lcn/jiguang/at/m;

    invoke-direct {v0}, Lcn/jiguang/at/m;-><init>()V

    iput-object p1, v0, Lcn/jiguang/at/m;->b:Lorg/json/JSONObject;

    iput p3, v0, Lcn/jiguang/at/m;->a:I

    iput-object p2, v0, Lcn/jiguang/at/m;->c:[B

    iput-object p4, v0, Lcn/jiguang/at/m;->d:Ljava/io/File;

    iput-object p5, v0, Lcn/jiguang/at/m;->e:Ljava/util/Set;

    invoke-static {p0}, Lcn/jiguang/at/k;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcn/jiguang/at/m;->f:I

    iput-object p6, v0, Lcn/jiguang/at/m;->j:Lcn/jiguang/api/ReportCallBack;

    return-object v0
.end method

.method private a(Lcn/jiguang/ar/h;I)Lcn/jiguang/at/m;
    .registers 4

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/at/m;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/at/k;Lcn/jiguang/ar/h;I)Lcn/jiguang/at/m;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/jiguang/at/k;->a(Lcn/jiguang/ar/h;I)Lcn/jiguang/at/m;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/at/k;->f:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_a
    invoke-static {}, Lcn/jiguang/g/a;->P()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/jiguang/at/k;->a(Lorg/json/JSONObject;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    nop

    :cond_24
    :goto_24
    const-string p1, "normal"

    if-eqz p2, :cond_fe

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_fe

    :cond_30
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_107

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    :goto_47
    :pswitch_47
    move-object v1, p1

    goto/16 :goto_e0

    :cond_4a
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "awake"

    const-string v5, "active_user"

    const-string v6, "account"

    sparse-switch v3, :sswitch_data_108

    goto/16 :goto_ce

    :sswitch_5a
    const-string v3, "identify_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/16 v2, 0x8

    goto/16 :goto_ce

    :sswitch_66
    const-string v3, "android_awake_target"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x3

    goto :goto_ce

    :sswitch_70
    const-string v3, "detach_account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/16 v2, 0x9

    goto :goto_ce

    :sswitch_7b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x4

    goto :goto_ce

    :sswitch_83
    const-string v3, "android_awake2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x0

    goto :goto_ce

    :sswitch_8d
    const-string v3, "android_awake"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x1

    goto :goto_ce

    :sswitch_97
    const-string v3, "active_terminate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x6

    goto :goto_ce

    :sswitch_a1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/16 v2, 0xb

    goto :goto_ce

    :sswitch_aa
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x7

    goto :goto_ce

    :sswitch_b2
    const-string v3, "android_awake_target2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x2

    goto :goto_ce

    :sswitch_bc
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/16 v2, 0xa

    goto :goto_ce

    :sswitch_c5
    const-string v3, "active_launch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v2, 0x5

    :cond_ce
    :goto_ce
    packed-switch v2, :pswitch_data_13a

    iget-object v2, p0, Lcn/jiguang/at/k;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e0

    goto/16 :goto_47

    :pswitch_db
    move-object v1, v6

    goto :goto_e0

    :pswitch_dd
    move-object v1, v5

    goto :goto_e0

    :pswitch_df
    move-object v1, v4

    :cond_e0
    :goto_e0
    iget-object v2, p0, Lcn/jiguang/at/k;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_fe

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f1

    goto :goto_fe

    :cond_f1
    if-nez v0, :cond_f5

    move-object v0, v1

    goto :goto_f8

    :cond_f5
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :goto_f8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_fe
    :goto_fe
    iget-object p2, p0, Lcn/jiguang/at/k;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1

    :cond_107
    return-object v0

    :sswitch_data_108
    .sparse-switch
        -0x4a3c30f4 -> :sswitch_c5
        -0x462c75d3 -> :sswitch_bc
        -0x410ad9c9 -> :sswitch_b2
        -0x3ea9669c -> :sswitch_aa
        -0x3df94319 -> :sswitch_a1
        -0x30eb5798 -> :sswitch_97
        -0x2959bc4b -> :sswitch_8d
        -0x1ddcce3 -> :sswitch_83
        0x58e7985 -> :sswitch_7b
        0x36120581 -> :sswitch_70
        0x507b855b -> :sswitch_66
        0x75a1d3fa -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_db
        :pswitch_db
        :pswitch_db
        :pswitch_47
    .end packed-switch
.end method

.method private a(Landroid/content/Context;ILcn/jiguang/aw/a;Lcn/jiguang/ar/h;Lcn/jiguang/at/m;)V
    .registers 19

    move-object v0, p1

    move-object/from16 v1, p5

    iget-object v2, v1, Lcn/jiguang/at/m;->c:[B

    iget v3, v1, Lcn/jiguang/at/m;->a:I

    iget v4, v1, Lcn/jiguang/at/m;->f:I

    const/4 v5, 0x1

    if-eqz v2, :cond_98

    array-length v6, v2

    if-eqz v6, :cond_98

    array-length v6, v2

    const/16 v7, 0x77db

    if-le v6, v7, :cond_16

    goto/16 :goto_98

    :cond_16
    new-instance v6, Lcn/jiguang/ay/b;

    array-length v7, v2

    add-int/lit8 v7, v7, 0x25

    invoke-direct {v6, v7}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcn/jiguang/ay/b;->b(I)V

    invoke-virtual {v6, v5}, Lcn/jiguang/ay/b;->a(I)V

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {}, Lcn/jiguang/at/b;->b()S

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Lcn/jiguang/ay/b;->a(J)V

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v8

    invoke-static {p1, v8}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcn/jiguang/ay/b;->b(J)V

    invoke-static {}, Lcn/jiguang/g/a;->e()Lcn/jiguang/g/a;

    move-result-object v10

    invoke-static {p1, v10}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcn/jiguang/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcn/jiguang/f/i;->a([B)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/jiguang/f/i;->c(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x10

    if-nez v8, :cond_70

    new-array v8, v9, [B

    goto :goto_7f

    :cond_70
    array-length v10, v8

    if-ne v10, v9, :cond_74

    goto :goto_7f

    :cond_74
    new-array v10, v9, [B

    array-length v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v7, v10, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v10

    :goto_7f
    invoke-virtual {v6, v8}, Lcn/jiguang/ay/b;->a([B)V

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcn/jiguang/ay/b;->a(J)V

    invoke-virtual {v6, v4}, Lcn/jiguang/ay/b;->b(I)V

    invoke-virtual {v6, v2}, Lcn/jiguang/ay/b;->a([B)V

    invoke-virtual {v6}, Lcn/jiguang/ay/b;->a()I

    move-result v2

    invoke-virtual {v6, v2, v7}, Lcn/jiguang/ay/b;->b(II)V

    invoke-virtual {v6}, Lcn/jiguang/ay/b;->b()[B

    move-result-object v2

    goto :goto_99

    :cond_98
    :goto_98
    const/4 v2, 0x0

    :goto_99
    const-string v3, "TcpReporter"

    if-eqz v2, :cond_eb

    array-length v4, v2

    if-nez v4, :cond_a1

    goto :goto_eb

    :cond_a1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "send tcp data, len="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", data="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v1, Lcn/jiguang/at/m;->i:Z

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Lcn/jiguang/aw/a;->a([B)I

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v2

    const v3, 0xea60

    add-int/2addr v3, p2

    const-wide/16 v4, 0x7918

    new-instance v6, Lcn/jiguang/at/l;

    move-object/from16 v7, p4

    invoke-direct {v6, p1, v7}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v2

    const v3, 0xc350

    iget v4, v1, Lcn/jiguang/at/m;->f:I

    add-int/2addr v4, v3

    const-wide/16 v5, 0x3a98

    new-instance v3, Lcn/jiguang/at/l;

    invoke-direct {v3, p1, v1}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5, v6, v3}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    return-void

    :cond_eb
    :goto_eb
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "package data failed, give up, data="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    move-object v3, p0

    invoke-direct {p0, p1, v1, v2}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/at/m;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcn/jiguang/ar/h;I)V
    .registers 10

    iget-object v0, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iget-object v0, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p3, :cond_2c

    invoke-static {p1}, Lcn/jiguang/f/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 p3, -0x2

    :cond_2c
    const-string v2, ") at "

    const-string v3, "socket("

    const-string v4, "TcpReporter"

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_a2

    new-instance v5, Ljava/lang/StringBuilder;

    if-nez p3, :cond_50

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is disconnected, go on send waiting request"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    :cond_50
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is disconnected, finish waiting request, code="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_73
    :goto_73
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/at/m;

    if-eqz v0, :cond_73

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v1

    const v2, 0xc350

    iget v3, v0, Lcn/jiguang/at/m;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcn/jiguang/ax/b;->b(I)V

    if-nez p3, :cond_94

    invoke-virtual {p0, p1, v0}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/at/m;)V

    goto :goto_73

    :cond_94
    new-instance v1, Lcn/jiguang/at/l;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2, v0}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {v1, p3}, Lcn/jiguang/at/l;->a(Lcn/jiguang/at/l;I)I

    invoke-static {v1}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    goto :goto_73

    :cond_a1
    return-void

    :cond_a2
    if-lez v1, :cond_be

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is disconnected, no task left"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcn/jiguang/ar/h;Lcn/jiguang/at/m;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcn/jiguang/aw/a;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move-object v5, v1

    if-nez v5, :cond_3c

    new-instance p3, Lcn/jiguang/aw/b;

    const/16 v0, 0x7800

    const/16 v1, 0x13

    invoke-direct {p3, v0, v1}, Lcn/jiguang/aw/b;-><init>(II)V

    invoke-static {}, Lcn/jiguang/at/k;->b()I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcn/jiguang/at/l;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0, p2}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    const-string p1, "TCP_REPORT"

    invoke-static {p1, p3}, Lcn/jiguang/ap/b;->a(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_53

    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    invoke-virtual {v5}, Lcn/jiguang/aw/a;->a()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcn/jiguang/at/k;->a(Landroid/content/Context;ILcn/jiguang/aw/a;Lcn/jiguang/ar/h;Lcn/jiguang/at/m;)V
    :try_end_51
    .catchall {:try_start_3c .. :try_end_51} :catchall_53

    :cond_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/content/Context;Lcn/jiguang/at/m;I)V
    .registers 7

    iget-object v0, p2, Lcn/jiguang/at/m;->g:Lcn/jiguang/ar/h;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    iget-object v1, p2, Lcn/jiguang/at/m;->g:Lcn/jiguang/ar/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_19

    iget v1, p2, Lcn/jiguang/at/m;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v0

    const v1, 0xc350

    iget v2, p2, Lcn/jiguang/at/m;->f:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/jiguang/ax/b;->b(I)V

    new-instance v0, Lcn/jiguang/at/l;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1, p2}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {v0, p3}, Lcn/jiguang/at/l;->a(Lcn/jiguang/at/l;I)I

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/at/k;Landroid/content/Context;Lcn/jiguang/ar/h;)V
    .registers 14

    const-string v0, "TcpReporter"

    if-nez p2, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_10

    return-void

    :cond_10
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcn/jiguang/aw/a;

    if-eqz v2, :cond_131

    invoke-virtual {v2}, Lcn/jiguang/aw/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto/16 :goto_131

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start tcp socket("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p2, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    iget v4, p2, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/aw/a;->a(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    invoke-direct {p0, p1, p2, v4}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/ar/h;I)V

    goto/16 :goto_11b

    :cond_49
    new-instance v3, Lcn/jiguang/at/l;

    const/4 v5, 0x2

    invoke-direct {v3, p1, v5, p2}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {v3}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    new-instance v3, Lcn/jiguang/at/l;

    invoke-direct {v3, p1, p2}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    :goto_57
    iget-object v6, p0, Lcn/jiguang/at/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_132

    if-nez v6, :cond_11b

    :try_start_5f
    invoke-virtual {v2, v4}, Lcn/jiguang/aw/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v6
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_132
    .catch Lcn/jiguang/at/e; {:try_start_5f .. :try_end_63} :catch_103

    :try_start_63
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received bytes - len:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_89

    if-nez v7, :cond_83

    goto :goto_89

    :cond_83
    const-string v6, "wrong version"

    invoke-static {v0, v6}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :cond_89
    :goto_89
    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onResult seqId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v8

    const v9, 0xc350

    add-int/2addr v9, v7

    invoke-virtual {v8, v9}, Lcn/jiguang/ax/b;->b(I)V

    invoke-direct {p0, p2, v7}, Lcn/jiguang/at/k;->a(Lcn/jiguang/ar/h;I)Lcn/jiguang/at/m;

    move-result-object v7

    if-eqz v7, :cond_ec

    if-nez v6, :cond_ce

    new-instance v8, Lcn/jiguang/at/l;

    const/4 v9, 0x3

    invoke-direct {v8, p1, v9, v7}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {v8, v6}, Lcn/jiguang/at/l;->a(Lcn/jiguang/at/l;I)I

    invoke-static {v8}, Lcn/jiguang/ap/b;->a(Ljava/lang/Runnable;)V

    goto :goto_ec

    :cond_ce
    const/16 v8, 0x191

    if-ne v6, v8, :cond_d6

    invoke-direct {p0, p1, p2, v6}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/ar/h;I)V

    goto :goto_ec

    :cond_d6
    invoke-virtual {p0, p1, v7}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/at/m;)V
    :try_end_d9
    .catchall {:try_start_63 .. :try_end_d9} :catchall_da

    goto :goto_ec

    :catchall_da
    move-exception v6

    :try_start_db
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tcp reporter onReceive err:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec
    :goto_ec
    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v6

    const v7, 0xea60

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v7

    const-wide/16 v9, 0x7918

    invoke-virtual {v6, v8, v9, v10, v3}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V
    :try_end_101
    .catchall {:try_start_db .. :try_end_101} :catchall_132
    .catch Lcn/jiguang/at/e; {:try_start_db .. :try_end_101} :catch_103

    goto/16 :goto_57

    :catch_103
    move-exception v1

    :try_start_104
    iget v2, v1, Lcn/jiguang/at/e;->a:I

    const/16 v3, -0x3e5

    if-eq v2, v3, :cond_11b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recv failed with error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    :goto_11b
    invoke-direct {p0, p1, p2, v4}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/ar/h;I)V

    iget-object p0, p0, Lcn/jiguang/at/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_12c

    const-string p0, "Break receiving by wantStop"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :cond_12c
    const-string p0, "disconnected"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_104 .. :try_end_131} :catchall_132

    :cond_131
    :goto_131
    return-void

    :catchall_132
    move-exception p0

    const-string p1, "socket exception"

    invoke-static {v0, p1, p0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_138
    return-void
.end method

.method static synthetic a(Lcn/jiguang/at/k;Landroid/content/Context;Lcn/jiguang/ar/h;I)V
    .registers 4

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/ar/h;I)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 10

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v3, :cond_44

    const/4 v5, 0x0

    :goto_28
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_44

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v6

    if-eqz v6, :cond_41

    invoke-virtual {v6}, Lcn/jiguang/ar/h;->a()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_44
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_48
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_50

    iput-object v0, p0, Lcn/jiguang/at/k;->f:Ljava/util/Map;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    return-void
.end method

.method private static declared-synchronized b()I
    .registers 2

    const-class v0, Lcn/jiguang/at/k;

    monitor-enter v0

    :try_start_3
    sget v1, Lcn/jiguang/at/k;->e:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x2710

    sput v1, Lcn/jiguang/at/k;->e:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcn/jiguang/at/k;Landroid/content/Context;Lcn/jiguang/ar/h;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "socket at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is connected, deal with waiting request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TcpReporter"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_63

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcn/jiguang/aw/a;

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Lcn/jiguang/aw/a;->a()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcn/jiguang/at/m;

    if-eqz v8, :cond_40

    iget-boolean v3, v8, Lcn/jiguang/at/m;->i:Z

    if-nez v3, :cond_40

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcn/jiguang/at/k;->a(Landroid/content/Context;ILcn/jiguang/aw/a;Lcn/jiguang/ar/h;Lcn/jiguang/at/m;)V

    goto :goto_40

    :cond_63
    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object p0

    const v0, 0xea60

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    const-wide/16 v2, 0x7918

    new-instance v0, Lcn/jiguang/at/l;

    invoke-direct {v0, p1, p2}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    :cond_7d
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcn/jiguang/at/m;)V
    .registers 11

    const-string v0, "TcpReporter"

    :try_start_2
    iget-object v1, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_74

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/jiguang/ax/b;->a(Landroid/content/Context;)V

    iget-object v3, p2, Lcn/jiguang/at/m;->e:Ljava/util/Set;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcn/jiguang/aq/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Lcn/jiguang/ar/h;->a()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_2e
    invoke-direct {p0, p1, v3}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jiguang/ar/h;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcn/jiguang/ar/h;->a()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_50
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "tcp report find urls="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp report begin="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    invoke-static {p1}, Lcn/jiguang/f/a;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7f

    const/4 v1, -0x2

    invoke-direct {p0, p1, p2, v1}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/at/m;I)V

    return-void

    :cond_7f
    iget-object v3, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_11d

    iget-object v3, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8d

    goto/16 :goto_11d

    :cond_8d
    const/4 v3, 0x0

    iget-object v4, p0, Lcn/jiguang/at/k;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_98
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jiguang/ar/h;

    iget-object v6, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_98

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "use exist ipPort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    :cond_be
    if-nez v3, :cond_dd

    iget-object v3, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/ar/h;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "use next ipPort="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd
    iput-object v3, p2, Lcn/jiguang/at/m;->g:Lcn/jiguang/ar/h;

    iget-object v4, p2, Lcn/jiguang/at/m;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_fa

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v1

    const v4, 0xc350

    iget v5, p2, Lcn/jiguang/at/m;->f:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x3a98

    new-instance v4, Lcn/jiguang/at/l;

    invoke-direct {v4, p1, p2}, Lcn/jiguang/at/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v6, v7, v4}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    :cond_fa
    iget-object v1, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_10e

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v4, p0, Lcn/jiguang/at/k;->d:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10e
    iput-boolean v2, p2, Lcn/jiguang/at/m;->i:Z

    iget v2, p2, Lcn/jiguang/at/m;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3, p2}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/ar/h;Lcn/jiguang/at/m;)V

    return-void

    :cond_11d
    :goto_11d
    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/at/m;I)V
    :try_end_121
    .catchall {:try_start_2 .. :try_end_121} :catchall_122

    return-void

    :catchall_122
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "tcp upload e:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
