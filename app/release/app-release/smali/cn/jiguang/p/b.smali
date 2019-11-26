.class public Lcn/jiguang/p/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/p/b;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/jiguang/p/b;
    .registers 2

    sget-object v0, Lcn/jiguang/p/b;->a:Lcn/jiguang/p/b;

    if-nez v0, :cond_17

    const-class v0, Lcn/jiguang/p/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/p/b;->a:Lcn/jiguang/p/b;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/p/b;

    invoke-direct {v1}, Lcn/jiguang/p/b;-><init>()V

    sput-object v1, Lcn/jiguang/p/b;->a:Lcn/jiguang/p/b;

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
    sget-object v0, Lcn/jiguang/p/b;->a:Lcn/jiguang/p/b;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Object;Z)Lcn/jiguang/p/d;
    .registers 13

    const-string v0, "CopyManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_be

    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_be

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_ab

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2a

    goto/16 :goto_ab

    :cond_2a
    invoke-static {p0, p1}, Lcn/jiguang/p/a;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    return-object v1

    :cond_35
    invoke-static {p0}, Lcn/jiguang/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_51

    sget-object p2, Lcn/jiguang/p/b;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_51

    sget-object p2, Lcn/jiguang/p/b;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    const-string p0, "same as last, skip"

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_51
    sput-object v2, Lcn/jiguang/p/b;->c:Ljava/lang/String;

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/v/g;->a([B)[B

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcn/jiguang/bb/c;->a([BJ)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcn/jiguang/p/d;

    invoke-direct {p2}, Lcn/jiguang/p/d;-><init>()V

    iput-wide v2, p2, Lcn/jiguang/p/d;->c:J

    iput-object p0, p2, Lcn/jiguang/p/d;->a:Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_ac

    :try_start_71
    invoke-static {p1}, Lcn/jiguang/p/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_7c

    if-eqz p0, :cond_7d

    :try_start_77
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7d

    goto :goto_7e

    :catchall_7c
    move-object p0, v1

    :catchall_7d
    :cond_7d
    move-object p1, v1

    :goto_7e
    :try_start_7e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_92

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/v/g;->a([B)[B

    move-result-object p1

    invoke-static {p1, v2, v3}, Lcn/jiguang/bb/c;->a([BJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/jiguang/p/d;->b:Ljava/lang/String;

    :cond_92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_9f

    if-eqz p0, :cond_9f

    invoke-static {p0}, Lcn/jiguang/p/a;->b(Ljava/lang/Object;)J

    move-result-wide p0

    goto :goto_a0

    :cond_9f
    move-wide p0, v4

    :goto_a0
    cmp-long v2, p0, v4

    if-nez v2, :cond_a8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_a8
    iput-wide p0, p2, Lcn/jiguang/p/d;->d:J
    :try_end_aa
    .catchall {:try_start_7e .. :try_end_aa} :catchall_ac

    return-object p2

    :cond_ab
    :goto_ab
    return-object v1

    :catchall_ac
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "convert e:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    return-object v1
.end method

.method private static a(Landroid/content/Context;Z)Lcn/jiguang/p/d;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcn/jiguang/p/b;->f(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcn/jiguang/p/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {p0, v0, p1}, Lcn/jiguang/p/b;->a(Landroid/content/Context;Ljava/lang/Object;Z)Lcn/jiguang/p/d;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get Current copy e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CopyManager"

    invoke-static {p1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-object v1
.end method

.method private static a(Lcn/jiguang/p/d;)Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "board"

    iget-object v2, p0, Lcn/jiguang/p/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    iget-object v2, p0, Lcn/jiguang/p/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    iget-wide v2, p0, Lcn/jiguang/p/d;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "seed"

    iget-wide v2, p0, Lcn/jiguang/p/d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "convert e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CopyManager"

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v0

    new-instance v1, Lcn/jiguang/p/e;

    invoke-direct {v1, p0}, Lcn/jiguang/p/e;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x7d4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 11

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "JCore"

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 p1, 0x2

    new-array v7, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, v7, p1

    const-string v1, "board"

    const/4 v8, 0x1

    aput-object v1, v7, v8

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_27

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    :cond_27
    const-string v2, "JCore"

    const/16 v3, 0x27

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, p1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "report e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CopyManager"

    invoke-static {p1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 8

    invoke-static {p0}, Lcn/jiguang/api/JCoreManager;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcn/jiguang/p/b;->g(Landroid/content/Context;)Lcn/jiguang/p/c;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/jiguang/p/b;->a(Landroid/content/Context;Z)Lcn/jiguang/p/d;

    move-result-object v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    invoke-static {p0}, Lcn/jiguang/o/f;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "CopyManager"

    if-nez v5, :cond_62

    :try_start_23
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_50

    :try_start_28
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4b

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "board"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcn/jiguang/p/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "same as last, won\'t update"

    invoke-static {v6, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_4d

    return-void

    :cond_4b
    move-object v4, v5

    goto :goto_62

    :catchall_4d
    move-exception v1

    move-object v4, v5

    goto :goto_51

    :catchall_50
    move-exception v1

    :goto_51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "deal history e:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    invoke-static {v2}, Lcn/jiguang/p/b;->a(Lcn/jiguang/p/d;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d7

    if-nez v4, :cond_6f

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :cond_6f
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    iget v2, v0, Lcn/jiguang/p/c;->c:I

    const/4 v3, -0x1

    if-lt v2, v3, :cond_7c

    iget v2, v0, Lcn/jiguang/p/c;->c:I

    if-nez v2, :cond_80

    :cond_7c
    const/16 v2, 0x14

    iput v2, v0, Lcn/jiguang/p/c;->c:I

    :cond_80
    iget v2, v0, Lcn/jiguang/p/c;->c:I

    if-eq v2, v3, :cond_ba

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v3, v0, Lcn/jiguang/p/c;->c:I

    if-le v2, v3, :cond_ba

    :try_start_8c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v0, v0, Lcn/jiguang/p/c;->c:I

    sub-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "need remove first "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_a9
    .catchall {:try_start_8c .. :try_end_a9} :catchall_ba

    :goto_a9
    :try_start_a9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_b9

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b6
    .catchall {:try_start_a9 .. :try_end_b6} :catchall_b9

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :catchall_b9
    :cond_b9
    move-object v1, v0

    :catchall_ba
    :cond_ba
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_be
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save history="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Lorg/json/JSONException; {:try_start_be .. :try_end_d4} :catch_d4

    :catch_d4
    invoke-static {p0, v0}, Lcn/jiguang/o/f;->q(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d7
    return-void
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_16

    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/o/f;->p(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setConfig e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CopyManager"

    invoke-static {p1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Lcn/jiguang/p/c;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/p/b;->g(Landroid/content/Context;)Lcn/jiguang/p/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroid/content/Context;)V
    .registers 4

    const-string v0, "CopyManager"

    :try_start_2
    invoke-static {p0}, Lcn/jiguang/o/f;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/jiguang/o/f;->q(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcn/jiguang/p/b;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "report history="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportHistory e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcn/jiguang/p/b;->a(Landroid/content/Context;Z)Lcn/jiguang/p/d;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcn/jiguang/p/b;->a(Lcn/jiguang/p/d;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/p/b;->a(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportCurrent e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CopyManager"

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_41

    sget-object v0, Lcn/jiguang/p/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_41

    if-eqz p0, :cond_41

    const-class v0, Lcn/jiguang/p/b;

    monitor-enter v0

    :try_start_f
    sget-object v1, Lcn/jiguang/p/b;->b:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_3e

    if-nez v1, :cond_3c

    :try_start_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Lcn/jiguang/p/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcn/jiguang/p/b;->b:Ljava/lang/Object;

    goto :goto_3c

    :cond_20
    const-string p0, "CopyManager"

    const-string v1, "can\'t get copyMgr"

    invoke-static {p0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_28

    goto :goto_3c

    :catchall_28
    move-exception p0

    :try_start_29
    const-string v1, "CopyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCopyMgr e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    monitor-exit v0

    goto :goto_41

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_3e

    throw p0

    :cond_41
    :goto_41
    sget-object p0, Lcn/jiguang/p/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Lcn/jiguang/p/c;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcn/jiguang/o/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcn/jiguang/p/c;

    invoke-direct {p0}, Lcn/jiguang/p/c;-><init>()V

    const-string v2, "interval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jiguang/p/c;->a:I

    const-string v2, "r_interval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jiguang/p/c;->b:I

    iget v2, p0, Lcn/jiguang/p/c;->b:I

    if-gtz v2, :cond_2e

    const/16 v2, 0xe10

    iput v2, p0, Lcn/jiguang/p/c;->b:I

    :cond_2e
    iget v2, p0, Lcn/jiguang/p/c;->b:I

    iget v3, p0, Lcn/jiguang/p/c;->a:I

    if-ge v2, v3, :cond_38

    iget v2, p0, Lcn/jiguang/p/c;->a:I

    iput v2, p0, Lcn/jiguang/p/c;->b:I

    :cond_38
    const-string v2, "limit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/jiguang/p/c;->c:I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    return-object p0

    :catchall_41
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readConfig e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CopyManager"

    invoke-static {v1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "CopyManager"

    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_e

    const-string p1, "sdk below 11, won\'t deal"

    invoke-static {v0, p1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "action"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    goto :goto_38

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConfig="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcn/jiguang/p/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    :goto_38
    return-void

    :cond_39
    const-string p2, "reportCurrent"

    invoke-static {v0, p2}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object p2

    const/16 v1, 0x7d3

    const-wide/16 v2, 0x0

    new-instance v4, Lcn/jiguang/p/e;

    invoke-direct {v4, p1}, Lcn/jiguang/p/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1, v2, v3, v4}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    goto :goto_6a

    :cond_4f
    const-string p2, "disable"

    invoke-static {v0, p2}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/o/f;->k(Landroid/content/Context;)V
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_58

    goto :goto_6a

    :catchall_58
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "deal report e:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    return-void
.end method
