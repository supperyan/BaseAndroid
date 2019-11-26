.class public final Lcn/jiguang/ao/a;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static volatile c:Lcn/jiguang/ao/a;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/ao/a;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcn/jiguang/ao/a;
    .registers 2

    sget-object v0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ao/a;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/ao/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ao/a;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/ao/a;

    invoke-direct {v1}, Lcn/jiguang/ao/a;-><init>()V

    sput-object v1, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ao/a;

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
    sget-object v0, Lcn/jiguang/ao/a;->c:Lcn/jiguang/ao/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "normal"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "awake"

    const-string v4, "active_user"

    const-string v5, "account"

    sparse-switch v2, :sswitch_data_a2

    goto/16 :goto_8d

    :sswitch_19
    const-string v2, "identify_account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/16 v0, 0x8

    goto/16 :goto_8d

    :sswitch_25
    const-string v2, "android_awake_target"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x3

    goto :goto_8d

    :sswitch_2f
    const-string v2, "detach_account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/16 v0, 0x9

    goto :goto_8d

    :sswitch_3a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x4

    goto :goto_8d

    :sswitch_42
    const-string v2, "android_awake2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x0

    goto :goto_8d

    :sswitch_4c
    const-string v2, "android_awake"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x1

    goto :goto_8d

    :sswitch_56
    const-string v2, "active_terminate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x6

    goto :goto_8d

    :sswitch_60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/16 v0, 0xb

    goto :goto_8d

    :sswitch_69
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x7

    goto :goto_8d

    :sswitch_71
    const-string v2, "android_awake_target2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x2

    goto :goto_8d

    :sswitch_7b
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/16 v0, 0xa

    goto :goto_8d

    :sswitch_84
    const-string v2, "active_launch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v0, 0x5

    :cond_8d
    :goto_8d
    packed-switch v0, :pswitch_data_d4

    iget-object v0, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_a0

    :pswitch_99
    move-object v1, v5

    goto :goto_a0

    :pswitch_9b
    move-object v1, v4

    goto :goto_a0

    :pswitch_9d
    move-object v1, v3

    goto :goto_a0

    :cond_9f
    move-object v1, p1

    :goto_a0
    :pswitch_a0
    return-object v1

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x4a3c30f4 -> :sswitch_84
        -0x462c75d3 -> :sswitch_7b
        -0x410ad9c9 -> :sswitch_71
        -0x3ea9669c -> :sswitch_69
        -0x3df94319 -> :sswitch_60
        -0x30eb5798 -> :sswitch_56
        -0x2959bc4b -> :sswitch_4c
        -0x1ddcce3 -> :sswitch_42
        0x58e7985 -> :sswitch_3a
        0x36120581 -> :sswitch_2f
        0x507b855b -> :sswitch_25
        0x75a1d3fa -> :sswitch_19
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_9d
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_a0
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 9

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_46

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v3, :cond_3a

    const/4 v5, 0x0

    :goto_2a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3a

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_3a
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_3e
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_46

    iput-object v0, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcn/jiguang/ao/a;
    .registers 9

    :try_start_0
    invoke-static {}, Lcn/jiguang/g/a;->t()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jiguang/ao/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1c

    iget-wide v2, p0, Lcn/jiguang/ao/a;->a:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_36

    :cond_1c
    iput-wide v0, p0, Lcn/jiguang/ao/a;->a:J

    invoke-static {}, Lcn/jiguang/g/a;->r()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_36

    if-nez v0, :cond_36

    :try_start_2e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/jiguang/ao/a;->a(Lorg/json/JSONObject;)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_36} :catch_36

    :catch_36
    :catchall_36
    :cond_36
    return-object p0
.end method

.method public final a(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "normal"

    if-eqz p1, :cond_33

    :try_start_4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_33

    :cond_b
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/jiguang/ao/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_24

    move-object v1, v2

    goto :goto_10

    :cond_24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string p1, "AddressGroupManager"

    const-string v1, "Report JSONArray belong more than one space, using normal-space"

    invoke-static {p1, v1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_33

    return-object v0

    :cond_32
    return-object v1

    :catchall_33
    :cond_33
    :goto_33
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 11

    const-string v0, "sis_ips"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    :try_start_9
    const-string v3, "ttl"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_f} :catch_18

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_16

    goto :goto_19

    :cond_16
    move-wide v1, v3

    goto :goto_19

    :catch_18
    nop

    :goto_19
    const-string v3, "ips"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v3, 0x4

    new-array v3, v3, [Lcn/jiguang/g/a;

    const/4 v4, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->s()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {}, Lcn/jiguang/g/a;->u()Lcn/jiguang/g/a;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {}, Lcn/jiguang/g/a;->t()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Lcn/jiguang/g/a;->r()Lcn/jiguang/g/a;

    move-result-object v1

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_65

    :cond_63
    const-string v2, ""

    :goto_65
    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {p1, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    invoke-direct {p0, p2}, Lcn/jiguang/ao/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)Lcn/jiguang/ao/a;
    .registers 14

    const-string v0, "AddressGroupManager"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;)Lcn/jiguang/ao/a;

    invoke-static {}, Lcn/jiguang/g/a;->u()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_24

    const-wide/32 v3, 0x36ee80

    goto :goto_29

    :cond_24
    cmp-long v9, v3, v5

    if-gez v9, :cond_29

    move-wide v3, v5

    :cond_29
    :goto_29
    const-wide/32 v5, 0x240c8400

    cmp-long v9, v3, v5

    if-lez v9, :cond_31

    move-wide v3, v5

    :cond_31
    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5}, Lcn/jiguang/f/c;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "lastUpdateTime="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    iget-wide v10, p0, Lcn/jiguang/ao/a;->a:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " now="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " expire="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v3, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcn/jiguang/ao/a;->a:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_7d

    iget-wide v5, p0, Lcn/jiguang/ao/a;->a:J

    add-long/2addr v5, v3

    cmp-long v3, v5, v1

    if-gez v3, :cond_a8

    :cond_7d
    const-string v1, "cache invalid, fetch new urls"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8f

    goto :goto_91

    :cond_8f
    const/4 v1, 0x0

    goto :goto_92

    :cond_91
    :goto_91
    const/4 v1, 0x1

    :goto_92
    invoke-static {p1, v1}, Lcn/jiguang/ao/i;->a(Landroid/content/Context;Z)V
    :try_end_95
    .catchall {:try_start_2 .. :try_end_95} :catchall_96

    goto :goto_a8

    :catchall_96
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    return-object p0
.end method

.method public final b(Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "normal"

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3e

    :cond_b
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/jiguang/ao/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_3e

    :cond_31
    if-nez v1, :cond_35

    move-object v1, v2

    goto :goto_38

    :cond_35
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :goto_38
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_3e
    :goto_3e
    iget-object p1, p0, Lcn/jiguang/ao/a;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1

    :cond_47
    return-object v1
.end method
