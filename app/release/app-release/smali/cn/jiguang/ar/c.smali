.class public final Lcn/jiguang/ar/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcn/jiguang/aw/a;)I
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "time"

    const-string v3, "lat"

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/jiguang/f/i;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, ""

    if-nez v4, :cond_1a

    move-object v8, v15

    goto :goto_1b

    :cond_1a
    move-object v8, v4

    :goto_1b
    invoke-static/range {p0 .. p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {}, Lcn/jiguang/at/b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcn/jiguang/at/b;->a(Landroid/content/Context;)B

    move-result v14

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Login with - juid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sdkVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pluginPlatformType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "ConnectingHelper"

    invoke-static {v13, v4}, Lcn/jiguang/an/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/at/b;->c()S

    move-result v4

    invoke-static/range {p0 .. p0}, Lcn/jiguang/f/j;->a(Landroid/content/Context;)I

    move-result v11

    invoke-static/range {p0 .. p0}, Lcn/jiguang/bb/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    move-object/from16 v16, v15

    const-string v15, "get_loc_info"

    invoke-static {v0, v15, v5}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    instance-of v1, v15, Landroid/os/Bundle;

    if-eqz v1, :cond_97

    :try_start_73
    check-cast v15, Landroid/os/Bundle;
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_97

    const-wide/high16 v0, 0x4069

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    :try_start_7b
    invoke-virtual {v15, v3, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v5, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "lng"

    const-string v8, "lot"

    invoke-virtual {v15, v8, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {v5, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v5, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_94
    .catchall {:try_start_7b .. :try_end_94} :catchall_95

    goto :goto_9b

    :catchall_95
    nop

    goto :goto_9b

    :catchall_97
    :cond_97
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    :goto_9b
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    :cond_a6
    move-object/from16 v0, v16

    :goto_a8
    invoke-static {}, Lcn/jiguang/api/JCoreManager;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_b3

    sget-object v5, Lcn/jiguang/internal/JConstants;->testCountry:Ljava/lang/String;

    move-object/from16 v17, v5

    goto :goto_b5

    :cond_b3
    const/16 v17, 0x0

    :goto_b5
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bc

    goto :goto_c0

    :cond_bc
    invoke-static/range {p0 .. p0}, Lcn/jiguang/f/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    :goto_c0
    move-object/from16 v1, v17

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d4

    move-object/from16 v1, v16

    goto :goto_d8

    :cond_d4
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_d8
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "login - juid:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", flag:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " netType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " deviceId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " locInfo:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " countryCode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " accountId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sdkver:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ar/c;->b(Landroid/content/Context;)J

    move-result-wide v8

    int-to-long v4, v4

    move-wide/from16 v20, v4

    move-wide v4, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move v15, v11

    move-object/from16 v17, v12

    move-wide/from16 v11, v20

    move-object v3, v13

    move v13, v14

    move-object/from16 v20, v3

    move v3, v14

    move v14, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lcn/jiguang/av/b;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pluginPlatformType:0b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v3, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcn/jiguang/av/b;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_228

    array-length v4, v0

    if-gtz v4, :cond_171

    goto/16 :goto_228

    :cond_171
    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcn/jiguang/aw/a;->a([B)I

    move-result v0

    if-eqz v0, :cond_17a

    return v3

    :cond_17a
    const/16 v0, 0x4e20

    :try_start_17c
    invoke-virtual {v4, v0}, Lcn/jiguang/aw/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_180
    .catch Lcn/jiguang/at/e; {:try_start_17c .. :try_end_180} :catch_217

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object/from16 v4, v22

    invoke-static {v1, v0, v4}, Lcn/jiguang/av/a;->a(Landroid/content/Context;[BLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_211

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_211

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_211

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcn/jiguang/av/c;

    iget v4, v4, Lcn/jiguang/av/c;->c:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_19e

    goto :goto_211

    :cond_19e
    new-instance v3, Lcn/jiguang/av/d;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcn/jiguang/av/c;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v3, v4, v0}, Lcn/jiguang/av/d;-><init>(Lcn/jiguang/av/c;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Lcn/jiguang/av/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v3, Lcn/jiguang/av/d;->a:I

    new-array v4, v5, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->f()Lcn/jiguang/g/a;

    move-result-object v5

    iget v6, v3, Lcn/jiguang/av/d;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    if-nez v0, :cond_1fb

    iget v4, v3, Lcn/jiguang/av/d;->b:I

    sput v4, Lcn/jiguang/internal/JConstants;->tcpSessionId:I

    iget v4, v3, Lcn/jiguang/av/d;->c:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v1, v4, v5}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;J)V

    iget v3, v3, Lcn/jiguang/av/d;->d:I

    invoke-static {v1, v3}, Lcn/jiguang/ap/b;->b(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Login succeed - sid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcn/jiguang/internal/JConstants;->tcpSessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serverTime;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_210

    :cond_1fb
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Login failed with server error - code:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/ay/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_210
    return v0

    :cond_211
    :goto_211
    const-string v0, "Login failed - can\'t parse a Login Response"

    :goto_213
    invoke-static {v2, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_217
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Login failed - recv msg failed wit error:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_213

    :cond_228
    :goto_228
    return v3
.end method

.method public static a(Landroid/content/Context;)V
    .registers 9

    const/16 v0, 0xb

    new-array v0, v0, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->H()Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {}, Lcn/jiguang/g/a;->I()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-static {v3}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    invoke-static {v4}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    invoke-static {}, Lcn/jiguang/g/a;->M()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x4

    aput-object v1, v0, v7

    invoke-static {}, Lcn/jiguang/g/a;->J()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    invoke-static {}, Lcn/jiguang/g/a;->K()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v0, v7

    invoke-static {v4}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    invoke-static {v3}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/16 v7, 0x8

    aput-object v1, v0, v7

    invoke-static {v4}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/16 v7, 0x9

    aput-object v1, v0, v7

    invoke-static {v3}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/16 v7, 0xa

    aput-object v1, v0, v7

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-array v0, v6, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcn/jiguang/g/a;->d()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcn/jiguang/g/a;->e()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;I[BZI)[B
    .registers 8

    const-class v0, Lcn/jiguang/ar/c;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_45

    if-eqz p2, :cond_45

    array-length v1, p2

    if-eqz v1, :cond_45

    new-instance v1, Lcn/jiguang/ay/b;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jiguang/ay/b;->b(I)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/jiguang/ay/b;->a([B)V

    int-to-long p0, p1

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/ay/b;->a(J)V

    invoke-virtual {v1, p4}, Lcn/jiguang/ay/b;->b(I)V

    invoke-virtual {v1, p2}, Lcn/jiguang/ay/b;->a([B)V

    invoke-virtual {v1}, Lcn/jiguang/ay/b;->a()I

    move-result p0

    invoke-virtual {v1, p0, v2}, Lcn/jiguang/ay/b;->b(II)V

    or-int/lit8 p0, p3, 0x10

    int-to-byte p0, p0

    const/4 p1, 0x4

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/ay/b;->a(II)V

    invoke-virtual {v1}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_4d

    monitor-exit v0

    return-object p0

    :cond_45
    :try_start_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "flag or body length error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9

    invoke-static {p1}, Lcn/jiguang/f/i;->j(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_6
    invoke-static {p1}, Lcn/jiguang/f/k;->a([B)[B

    move-result-object v2

    array-length v3, v2

    array-length v4, p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_11

    if-ge v3, v4, :cond_11

    move-object p1, v2

    const/4 v2, 0x1

    goto :goto_12

    :catch_11
    :cond_11
    const/4 v2, 0x0

    :goto_12
    array-length v3, p1

    invoke-static {}, Lcn/jiguang/bb/c;->a()I

    move-result v4

    int-to-long v5, v4

    invoke-static {v5, v6}, Lcn/jiguang/bb/c;->a(J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v5, v1, v0}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p1

    invoke-static {p0, v4, p1, v2, v3}, Lcn/jiguang/ar/c;->a(Ljava/lang/String;I[BZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B
    .registers 4

    const/16 v0, 0x1770

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p1, 0x400

    new-array v0, p1, [B

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, p1}, Ljava/net/DatagramPacket;-><init>([BI)V

    const-string p1, "ConnectingHelper"

    const-string v0, "udp Receiving..."

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static a([B)[B
    .registers 9

    const-string v0, "decrypt response error"

    const/4 v1, 0x4

    if-eqz p0, :cond_71

    array-length v2, p0

    if-eqz v2, :cond_71

    :try_start_8
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    ushr-int/lit8 v3, v2, 0x18

    const v4, 0xffffff

    and-int/2addr v2, v4

    int-to-long v4, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v6, v2, [B

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_58

    const-wide/16 v1, 0x0

    cmp-long p0, v4, v1

    if-eqz p0, :cond_4e

    invoke-static {v4, v5}, Lcn/jiguang/bb/c;->a(J)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    const/4 v2, 0x5

    :try_start_37
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, p0, v1, v7}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v6

    if-eqz v6, :cond_42

    goto :goto_4e

    :cond_42
    new-instance p0, Lcn/jiguang/at/e;

    invoke-direct {p0, v2, v0}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_48

    :catch_48
    new-instance p0, Lcn/jiguang/at/e;

    invoke-direct {p0, v2, v0}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    const/4 p0, 0x1

    and-int/lit8 v0, v3, 0x1

    if-ne v0, p0, :cond_57

    :try_start_53
    invoke-static {v6}, Lcn/jiguang/f/k;->b([B)[B

    move-result-object v6
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return-object v6

    :catchall_58
    move-exception p0

    new-instance v0, Lcn/jiguang/at/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse head error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_71
    new-instance p0, Lcn/jiguang/at/e;

    const-string v0, "response is empty!"

    invoke-direct {p0, v1, v0}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Lcn/jiguang/aw/a;)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v3

    iget-object v3, v3, Lcn/jiguang/ay/a;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-static {v2, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$$"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v3

    iget-object v9, v3, Lcn/jiguang/ay/a;->a:Ljava/lang/String;

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {}, Lcn/jiguang/at/b;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "regVersion:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "ConnectingHelper"

    invoke-static {v15, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcn/jiguang/ay/a;->b:Ljava/lang/String;

    invoke-static {v7, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/jiguang/ay/a;->c:Ljava/lang/String;

    invoke-static {v7, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/jiguang/ay/a;->d:Ljava/lang/String;

    invoke-static {v7, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/jiguang/ay/a;->e:Ljava/lang/String;

    invoke-static {v7, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcn/jiguang/am/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcn/jiguang/ay/a;->g:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/jiguang/ay/a;->h:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v3

    iget-object v3, v3, Lcn/jiguang/ay/a;->j:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cd

    move-object v3, v5

    :cond_cd
    invoke-static/range {p0 .. p0}, Lcn/jiguang/bb/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcn/jiguang/bb/a;->a:I

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v7

    iget-object v7, v7, Lcn/jiguang/ay/a;->q:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v11

    iget-object v11, v11, Lcn/jiguang/ay/a;->i:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Z

    move-result v12

    const-string v14, ""

    if-eqz v12, :cond_ec

    invoke-static {v0, v14}, Lcn/jiguang/f/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_ed

    :cond_ec
    move-object v12, v14

    :goto_ed
    const/4 v13, 0x0

    const-string v1, "get_all_ids"

    invoke-static {v0, v1, v13}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_143

    instance-of v13, v1, Lorg/json/JSONObject;

    if-eqz v13, :cond_143

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "parse ids:"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lorg/json/JSONObject;

    const-string v0, "udid"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "oaid"

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v0

    const-string v0, "vaid"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    const-string v0, "aaid"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    const-string v0, "gadid"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v10

    goto :goto_14e

    :cond_143
    move-object/from16 v18, v10

    move-object v0, v14

    move-object v1, v0

    move-object v13, v1

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    :goto_14e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v5}, Lcn/jiguang/ar/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {}, Lcn/jiguang/at/b;->b()S

    move-result v0

    int-to-long v12, v0

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register with: key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", apkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",reg business:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " accountId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ar/c;->b(Landroid/content/Context;)J

    move-result-wide v6

    move-object v10, v1

    move-object/from16 v0, v16

    invoke-static/range {v6 .. v14}, Lcn/jiguang/av/b;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v1

    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lcn/jiguang/av/b;->a(Landroid/content/Context;[B)[B

    move-result-object v1

    const/4 v4, -0x1

    if-nez v1, :cond_221

    const-string v0, "Register failed - encrytor reg info failed"

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_221
    move-object/from16 v5, p1

    invoke-virtual {v5, v1}, Lcn/jiguang/aw/a;->a([B)I

    move-result v1

    if-eqz v1, :cond_22f

    const-string v0, "Register failed - send reg info failed"

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_22f
    const/16 v1, 0x4e20

    :try_start_231
    invoke-virtual {v5, v1}, Lcn/jiguang/aw/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_235
    .catch Lcn/jiguang/at/e; {:try_start_231 .. :try_end_235} :catch_2d2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcn/jiguang/av/a;->a(Landroid/content/Context;[BLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2cc

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2cc

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2cc

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcn/jiguang/av/c;

    iget v1, v1, Lcn/jiguang/av/c;->c:I

    if-eqz v1, :cond_251

    goto/16 :goto_2cc

    :cond_251
    new-instance v1, Lcn/jiguang/av/e;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcn/jiguang/av/c;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v1, v5, v0}, Lcn/jiguang/av/e;-><init>(Lcn/jiguang/av/c;Ljava/nio/ByteBuffer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "register response:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcn/jiguang/av/e;->a:I

    const/4 v5, 0x1

    new-array v5, v5, [Lcn/jiguang/g/a;

    const/4 v6, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->z()Lcn/jiguang/g/a;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    if-nez v0, :cond_2cb

    iget-wide v5, v1, Lcn/jiguang/av/e;->b:J

    iget-object v7, v1, Lcn/jiguang/av/e;->c:Ljava/lang/String;

    iget-object v8, v1, Lcn/jiguang/av/e;->d:Ljava/lang/String;

    iget-object v1, v1, Lcn/jiguang/av/e;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Register succeed - juid:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", registrationId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", deviceId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcn/jiguang/an/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2c5

    const-wide/16 v9, 0x0

    cmp-long v11, v9, v5

    if-nez v11, :cond_2be

    goto :goto_2c5

    :cond_2be
    invoke-static {v3, v1}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v5, v6, v7, v8}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2cb

    :cond_2c5
    :goto_2c5
    const-string v0, "Unexpected: registrationId/juid should not be empty. "

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2cb
    :goto_2cb
    return v0

    :cond_2cc
    :goto_2cc
    const-string v0, "Register failed - can\'t parse a Register Response"

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_2d2
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Register failed - recv msg failed with error:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static declared-synchronized b(Landroid/content/Context;)J
    .registers 11

    const-class v0, Lcn/jiguang/ar/c;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcn/jiguang/g/a;->F()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_27

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    :cond_27
    const-wide/16 v3, 0x2

    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_33

    const-wide/16 v3, 0x1

    :cond_33
    add-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    const/4 v3, 0x1

    new-array v3, v3, [Lcn/jiguang/g/a;

    const/4 v4, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->F()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    monitor-exit v0

    return-wide v1

    :catchall_4e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method
