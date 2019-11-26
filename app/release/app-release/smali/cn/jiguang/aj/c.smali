.class public Lcn/jiguang/aj/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/aj/c;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jiguang/aj/c;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .registers 3

    invoke-static {p0, p1}, Lcn/jiguang/aj/a;->b(Landroid/content/Context;I)Lcn/jiguang/ak/a;

    move-result-object v0

    invoke-static {p0, p1}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x4

    invoke-static {p1, p0}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object p0

    :try_start_f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    const/4 p0, -0x1

    return p0

    :cond_16
    iget p0, v0, Lcn/jiguang/ak/a;->m:I

    return p0
.end method

.method public static a()Lcn/jiguang/aj/c;
    .registers 2

    sget-object v0, Lcn/jiguang/aj/c;->a:Lcn/jiguang/aj/c;

    if-nez v0, :cond_17

    const-class v0, Lcn/jiguang/aj/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/aj/c;->a:Lcn/jiguang/aj/c;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/aj/c;

    invoke-direct {v1}, Lcn/jiguang/aj/c;-><init>()V

    sput-object v1, Lcn/jiguang/aj/c;->a:Lcn/jiguang/aj/c;

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
    sget-object v0, Lcn/jiguang/aj/c;->a:Lcn/jiguang/aj/c;

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/aj/c;Landroid/content/Context;ILjava/lang/String;)V
    .registers 23

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v0, p3

    const-string v3, "dealUif ERR:"

    const-string v4, " u finish"

    const-string v5, "pI:"

    const-string v6, "UPM"

    :try_start_e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "u p:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcn/jiguang/aj/c;->a(Landroid/content/Context;I)I

    move-result v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    sget-object v9, Lcn/jiguang/dy/a;->h:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v9, Lcn/jiguang/dy/a;->i:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v7, 0x4

    invoke-static {v2, v7}, Lcn/jiguang/aj/a;->a(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_313

    if-nez v9, :cond_4e

    :try_start_45
    sget-object v9, Lcn/jiguang/dy/a;->j:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4e

    :catchall_4e
    :cond_4e
    :try_start_4e
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static/range {p1 .. p1}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static/range {p1 .. p1}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcn/jiguang/am/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13
    :try_end_75
    .catchall {:try_start_4e .. :try_end_75} :catchall_313

    const-string v15, ""

    if-eqz v13, :cond_86

    :try_start_79
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_87

    :cond_86
    move-object v13, v15

    :goto_87
    invoke-static/range {p1 .. p1}, Lcn/jiguang/c/b;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v14
    :try_end_8b
    .catchall {:try_start_79 .. :try_end_8b} :catchall_313

    move-object/from16 v16, v4

    :try_start_8d
    instance-of v4, v14, Lorg/json/JSONObject;

    const/16 v17, 0x0

    if-eqz v4, :cond_96

    check-cast v14, Lorg/json/JSONObject;

    goto :goto_98

    :cond_96
    move-object/from16 v14, v17

    :goto_98
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_30d

    move-object/from16 v18, v5

    :try_start_9f
    sget-object v5, Lcn/jiguang/dy/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcn/jiguang/dy/a;->a:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_306

    :try_start_a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->b:Ljava/lang/String;

    if-nez v10, :cond_b2

    move-object v10, v15

    :cond_b2
    invoke-virtual {v4, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->d:Ljava/lang/String;

    if-nez v11, :cond_bf

    move-object v11, v15

    :cond_bf
    invoke-virtual {v4, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->e:Ljava/lang/String;

    if-nez v12, :cond_c7

    move-object v12, v15

    :cond_c7
    invoke-virtual {v4, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->g:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jiguang/dy/a;->l:Ljava/lang/String;

    if-nez v14, :cond_dd

    move-object v14, v15

    :cond_dd
    invoke-virtual {v4, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "u:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request p :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-static {v0, v2, v1}, Lcn/jiguang/al/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "request http response:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_125
    .catchall {:try_start_a6 .. :try_end_125} :catchall_302

    if-nez v0, :cond_2e9

    :try_start_127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_15a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e9

    :cond_15a
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_160
    .catchall {:try_start_127 .. :try_end_160} :catchall_168

    const/4 v3, 0x0

    :try_start_161
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17
    :try_end_165
    .catchall {:try_start_161 .. :try_end_165} :catchall_166

    goto :goto_17b

    :catchall_166
    move-exception v0

    goto :goto_16a

    :catchall_168
    move-exception v0

    const/4 v3, 0x0

    :goto_16a
    :try_start_16a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dealUif e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17b
    if-nez v17, :cond_184

    const-string v0, "dealUif ERR"

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e9

    :cond_184
    invoke-static/range {v17 .. v17}, Lcn/jiguang/ak/a;->a(Lorg/json/JSONObject;)Lcn/jiguang/ak/a;

    move-result-object v0

    if-eqz v0, :cond_2d5

    iget v1, v0, Lcn/jiguang/ak/a;->o:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_196

    const-string v0, "l is newest."

    :goto_191
    invoke-static {v6, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e9

    :cond_196
    const/4 v14, 0x1

    if-ne v1, v14, :cond_19c

    const-string v0, "p not exist."

    goto :goto_191

    :cond_19c
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1b7

    invoke-static/range {p1 .. p2}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1ae

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1ae

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1ae
    .catchall {:try_start_16a .. :try_end_1ae} :catchall_302

    :cond_1ae
    move-object/from16 v4, p1

    move/from16 v5, p2

    :try_start_1b2
    invoke-static {v4, v5, v15}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2eb

    :cond_1b7
    move-object/from16 v4, p1

    move/from16 v5, p2

    if-nez v1, :cond_2c6

    const-string v1, "c nU l p..."

    invoke-static {v6, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v0, v14}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;Lcn/jiguang/ak/a;Z)Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pII:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1f6

    iget v7, v0, Lcn/jiguang/ak/a;->k:I

    iget-object v8, v0, Lcn/jiguang/ak/a;->v:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "p has exist, p is:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    :cond_1f6
    if-eqz v14, :cond_2eb

    iget-object v1, v0, Lcn/jiguang/ak/a;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_218

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " du is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_213
    invoke-static {v6, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2eb

    :cond_218
    iget-object v1, v0, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    iget v3, v0, Lcn/jiguang/ak/a;->k:I

    iget v7, v0, Lcn/jiguang/ak/a;->m:I

    invoke-static {v4, v1, v3, v7}, Lcn/jiguang/aj/b;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v1

    iget-object v3, v0, Lcn/jiguang/ak/a;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcn/jiguang/al/b;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_22c
    .catchall {:try_start_1b2 .. :try_end_22c} :catchall_2e7

    const-string v3, "d p :"

    if-eqz v2, :cond_2af

    :try_start_230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/jiguang/ak/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/al/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_290

    iget-object v3, v0, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_260

    goto :goto_290

    :cond_260
    iget v1, v0, Lcn/jiguang/ak/a;->k:I

    invoke-static {v4, v1}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    iget v2, v0, Lcn/jiguang/ak/a;->k:I

    iget-object v0, v0, Lcn/jiguang/ak/a;->v:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    if-eqz v1, :cond_28d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delete old file:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_28d
    const-string v0, "d p val succ"

    goto :goto_213

    :cond_290
    :goto_290
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "d p m not m, will d: file m:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",config m:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2eb

    :cond_2af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/jiguang/ak/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fail."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c2
    invoke-static {v6, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2eb

    :cond_2c6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "p status is :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c2

    :cond_2d5
    move/from16 v5, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dUif error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e5
    .catchall {:try_start_230 .. :try_end_2e5} :catchall_2e7

    goto/16 :goto_213

    :catchall_2e7
    move-exception v0

    goto :goto_308

    :cond_2e9
    :goto_2e9
    move/from16 v5, p2

    :cond_2eb
    :goto_2eb
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    :goto_2f7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_302
    move-exception v0

    move/from16 v5, p2

    goto :goto_308

    :catchall_306
    move-exception v0

    move v5, v2

    :goto_308
    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto :goto_317

    :catchall_30d
    move-exception v0

    move-object v1, v5

    move v5, v2

    move-object/from16 v2, v16

    goto :goto_317

    :catchall_313
    move-exception v0

    move-object v1, v5

    move v5, v2

    move-object v2, v4

    :goto_317
    :try_start_317
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sU error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32c
    .catchall {:try_start_317 .. :try_end_32c} :catchall_335

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2f7

    :catchall_335
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34a

    :goto_349
    throw v0

    :goto_34a
    goto :goto_349
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 15

    const-string v0, "cn.jiguang.prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "plugin_update_time_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "plugin_update_interval_"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v9, 0x5265c00

    invoke-interface {v2, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v9, v7, v5

    if-lez v9, :cond_40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v2, v7

    cmp-long v9, v5, v2

    if-lez v9, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v2, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v2, 0x1

    :goto_41
    if-nez v2, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "no need update, last is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcn/jiguang/f/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UPM"

    invoke-static {v5, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    if-eqz v2, :cond_85

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_60
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_7b

    :catchall_7b
    sget-object v0, Lcn/jiguang/aj/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/aj/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/jiguang/aj/d;-><init>(Lcn/jiguang/aj/c;Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_85
    return-void
.end method
