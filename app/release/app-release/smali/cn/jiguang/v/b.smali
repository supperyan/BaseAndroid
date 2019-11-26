.class public final Lcn/jiguang/v/b;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "JCommon"

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/String;)V

    const-string v0, "JLocation"

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/String;)V

    const-string v0, "JArp"

    invoke-static {v0}, Lcn/jiguang/ap/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "JCommonActionHelper"

    const/4 v10, 0x0

    if-nez v0, :cond_11

    :try_start_b
    const-string v0, "context is null,give up continue"

    invoke-static {v9, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "action is null,give up continue"

    invoke-static {v9, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v12, 0x4

    const/4 v6, 0x1

    const/4 v14, 0x0

    sparse-switch v1, :sswitch_data_32a

    goto :goto_83

    :sswitch_28
    const-string v1, "get_imei"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/16 v1, 0x8

    goto :goto_84

    :sswitch_33
    const-string v1, "service_create"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x7

    goto :goto_84

    :sswitch_3d
    const-string v1, "on_register"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x5

    goto :goto_84

    :sswitch_47
    const-string v1, "filter_pkg_list"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x3

    goto :goto_84

    :sswitch_51
    const-string v1, "getwakeenable"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x2

    goto :goto_84

    :sswitch_5b
    const-string v1, "deviceinfo"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x4

    goto :goto_84

    :sswitch_65
    const-string v1, "periodtask"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x0

    goto :goto_84

    :sswitch_6f
    const-string v1, "get_loc_info"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x1

    goto :goto_84

    :sswitch_79
    const-string v1, "get_all_ids"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/4 v1, 0x6

    goto :goto_84

    :cond_83
    :goto_83
    const/4 v1, -0x1

    :goto_84
    packed-switch v1, :pswitch_data_350

    goto/16 :goto_181

    :pswitch_89
    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/u/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_90
    invoke-static {}, Lcn/jiguang/p/b;->a()Lcn/jiguang/p/b;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xb

    if-lt v1, v15, :cond_c5

    invoke-static/range {p0 .. p0}, Lcn/jiguang/o/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "CopyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "int copy:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b4
    .catchall {:try_start_b .. :try_end_b4} :catchall_312

    if-nez v2, :cond_c5

    :try_start_b6
    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/jiguang/ax/b;->a(Landroid/content/Context;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcn/jiguang/p/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_c5
    .catchall {:try_start_b6 .. :try_end_c5} :catchall_312
    .catch Lorg/json/JSONException; {:try_start_b6 .. :try_end_c5} :catch_c5

    :catch_c5
    :cond_c5
    :try_start_c5
    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/ag/a;->g(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/ax/b;->a()Lcn/jiguang/ax/b;

    move-result-object v1

    const/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    new-instance v3, Lcn/jiguang/v/c;

    invoke-direct {v3}, Lcn/jiguang/v/c;-><init>()V

    invoke-virtual {v1, v2, v4, v5, v3}, Lcn/jiguang/ax/b;->b(IJLcn/jiguang/ax/a;)V

    goto/16 :goto_181

    :pswitch_de
    invoke-static/range {p0 .. p0}, Lcn/jiguang/x/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :pswitch_e3
    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/ag/a;->h(Landroid/content/Context;)V

    goto/16 :goto_181

    :pswitch_ec
    invoke-static {}, Lcn/jiguang/q/b;->a()Lcn/jiguang/q/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/q/b;->f(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_f5
    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    instance-of v1, v8, Ljava/util/List;

    if-eqz v1, :cond_10e

    move-object v1, v8

    check-cast v1, Ljava/util/List;

    const-string v2, "bwc.catch"

    invoke-static {v0, v2}, Lcn/jiguang/v/d;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/ai/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcn/jiguang/ah/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/jiguang/ai/c;->a(Lcn/jiguang/ah/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_10e
    return-object v8

    :pswitch_10f
    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/ag/a;->f(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_118
    invoke-static {}, Lcn/jiguang/ab/a;->a()Lcn/jiguang/ab/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/ab/a;->g(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_121
    invoke-static {}, Lcn/jiguang/l/b;->a()Lcn/jiguang/l/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/l/b;->d(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-static {}, Lcn/jiguang/ab/a;->a()Lcn/jiguang/ab/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/ab/a;->d(Landroid/content/Context;)V

    :cond_135
    instance-of v1, v8, Landroid/os/Bundle;

    if-eqz v1, :cond_146

    move-object v1, v8

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    const/4 v1, 0x2

    goto :goto_147

    :cond_146
    const/4 v1, 0x0

    :goto_147
    invoke-static {v0, v1}, Lcn/jiguang/ae/a;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcn/jiguang/q/b;->a()Lcn/jiguang/q/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/q/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/q/c;->a()Lcn/jiguang/q/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/q/c;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/i/a;->a()Lcn/jiguang/i/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/i/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/i/b;->a()Lcn/jiguang/i/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/i/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/i/e;->a()Lcn/jiguang/i/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/i/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/p/b;->a()Lcn/jiguang/p/b;

    invoke-static/range {p0 .. p0}, Lcn/jiguang/p/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/ag/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcn/jiguang/ag/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    :goto_181
    instance-of v1, v8, Landroid/os/Bundle;

    if-eqz v1, :cond_189

    move-object v1, v8

    check-cast v1, Landroid/os/Bundle;

    goto :goto_18a

    :cond_189
    move-object v1, v10

    :goto_18a
    if-eqz v1, :cond_2e8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_190
    .catchall {:try_start_c5 .. :try_end_190} :catchall_312

    const-string v3, "cmd"

    sparse-switch v2, :sswitch_data_366

    goto :goto_1e4

    :sswitch_196
    :try_start_196
    const-string v2, "set_sdktype_info"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x6

    goto :goto_1e5

    :sswitch_1a0
    const-string v2, "lbsforenry"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x2

    goto :goto_1e5

    :sswitch_1aa
    const-string v2, "waked"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x5

    goto :goto_1e5

    :sswitch_1b4
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x4

    goto :goto_1e5

    :sswitch_1bc
    const-string v2, "set_ctrl_url"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x3

    goto :goto_1e5

    :sswitch_1c6
    const-string v2, "lbsenable"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x1

    goto :goto_1e5

    :sswitch_1d0
    const-string v2, "init_local_ctrl"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x0

    goto :goto_1e5

    :sswitch_1da
    const-string v2, "notification_state"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const/4 v15, 0x7

    goto :goto_1e5

    :cond_1e4
    :goto_1e4
    const/4 v15, -0x1

    :goto_1e5
    packed-switch v15, :pswitch_data_388

    goto/16 :goto_2e8

    :pswitch_1ea
    const-string v2, "scence"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/jiguang/ae/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_2e8

    :pswitch_1f5
    invoke-static {}, Lcn/jiguang/af/a;->a()Lcn/jiguang/af/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/jiguang/af/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_2e8

    :pswitch_1fe
    invoke-static {v0, v1}, Lcn/jiguang/ag/a;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_2e8

    :pswitch_203
    invoke-static {v1}, Lcn/jiguang/v/b;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_2e8

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcn/jiguang/v/e;->a()J

    move-result-wide v1

    invoke-static {v0, v5}, Lcn/jiguang/u/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    sget-wide v10, Lcn/jiguang/v/b;->a:J

    invoke-static {v10, v11, v4}, Lcn/jiguang/v/e;->a(JLjava/lang/String;)[B

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/16 v13, 0x19

    invoke-virtual {v11, v3, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "ver"

    invoke-virtual {v11, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rid"

    invoke-virtual {v11, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "timeout"

    const-wide/16 v2, 0x0

    invoke-virtual {v11, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "body"

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_252

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tcp report deviceInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_252
    const-string v2, "JCOMMON"

    const/16 v3, 0x10

    const/4 v4, 0x0

    new-array v6, v14, [Ljava/lang/Object;

    move-object/from16 v1, p0

    move v10, v5

    move-object v5, v11

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v10, v12, :cond_2cc

    const/4 v1, 0x5

    if-eq v10, v1, :cond_2be

    const/16 v1, 0x9

    if-eq v10, v1, :cond_2b6

    const/16 v1, 0x3a

    if-eq v10, v1, :cond_2ae

    const/16 v1, 0x2c

    if-eq v10, v1, :cond_2a6

    const/16 v1, 0x2d

    if-eq v10, v1, :cond_2be

    const/16 v1, 0x36

    if-eq v10, v1, :cond_29e

    const/16 v1, 0x37

    if-eq v10, v1, :cond_29a

    packed-switch v10, :pswitch_data_39c

    goto/16 :goto_2e8

    :pswitch_282
    invoke-static {}, Lcn/jiguang/l/b;->a()Lcn/jiguang/l/b;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcn/jiguang/l/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :pswitch_28a
    invoke-static {}, Lcn/jiguang/q/d;->a()Lcn/jiguang/q/d;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcn/jiguang/q/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :pswitch_292
    invoke-static {}, Lcn/jiguang/ag/a;->a()Lcn/jiguang/ag/a;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcn/jiguang/ag/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :cond_29a
    invoke-static {v0, v15}, Lcn/jiguang/o/i;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :cond_29e
    invoke-static {}, Lcn/jiguang/i/e;->a()Lcn/jiguang/i/e;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcn/jiguang/i/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :cond_2a6
    invoke-static {}, Lcn/jiguang/i/e;->a()Lcn/jiguang/i/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/i/e;->c(Landroid/content/Context;)V

    goto :goto_2e8

    :cond_2ae
    invoke-static {}, Lcn/jiguang/p/b;->a()Lcn/jiguang/p/b;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcn/jiguang/p/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :cond_2b6
    invoke-static {}, Lcn/jiguang/i/d;->a()Lcn/jiguang/i/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/i/d;->c(Landroid/content/Context;)V

    goto :goto_2e8

    :cond_2be
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e8

    invoke-static {}, Lcn/jiguang/ab/a;->a()Lcn/jiguang/ab/a;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcn/jiguang/ab/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_2e8

    :cond_2cc
    invoke-static {}, Lcn/jiguang/i/a;->a()Lcn/jiguang/i/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/i/a;->c(Landroid/content/Context;)V

    goto :goto_2e8

    :pswitch_2d4
    const-string v2, "test_wake_controll_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jiguang/ai/b;->a:Ljava/lang/String;

    goto :goto_2e8

    :pswitch_2dd
    const-string v2, "enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "JLocation"

    invoke-static {v0, v2, v1}, Lcn/jiguang/o/f;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2e8
    :goto_2e8
    :pswitch_2e8
    instance-of v1, v8, Landroid/content/Intent;

    if-eqz v1, :cond_2f0

    move-object v10, v8

    check-cast v10, Landroid/content/Intent;

    goto :goto_2f1

    :cond_2f0
    const/4 v10, 0x0

    :goto_2f1
    if-eqz v10, :cond_328

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5d2c6cb8

    if-eq v1, v2, :cond_2fd

    goto :goto_306

    :cond_2fd
    const-string v1, "get_receiver"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_306

    goto :goto_307

    :cond_306
    :goto_306
    const/4 v14, -0x1

    :goto_307
    if-eqz v14, :cond_30a

    goto :goto_328

    :cond_30a
    invoke-static {}, Lcn/jiguang/i/b;->a()Lcn/jiguang/i/b;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcn/jiguang/i/b;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_311
    .catchall {:try_start_196 .. :try_end_311} :catchall_312

    goto :goto_328

    :catchall_312
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEvent throwable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_328
    :goto_328
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_32a
    .sparse-switch
        -0x31c9f8cf -> :sswitch_79
        -0x170faea -> :sswitch_6f
        0x16f6e2c6 -> :sswitch_65
        0x2e996804 -> :sswitch_5b
        0x3008c7fd -> :sswitch_51
        0x5d6cc418 -> :sswitch_47
        0x62f97d03 -> :sswitch_3d
        0x741bd1c6 -> :sswitch_33
        0x75ccb011 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_350
    .packed-switch 0x0
        :pswitch_121
        :pswitch_118
        :pswitch_10f
        :pswitch_f5
        :pswitch_ec
        :pswitch_e3
        :pswitch_de
        :pswitch_90
        :pswitch_89
    .end packed-switch

    :sswitch_data_366
    .sparse-switch
        -0x588bebc3 -> :sswitch_1da
        -0x38ec52b2 -> :sswitch_1d0
        -0x38ec3a80 -> :sswitch_1c6
        -0x293d3328 -> :sswitch_1bc
        0x1813a -> :sswitch_1b4
        0x6baa340 -> :sswitch_1aa
        0x52f0f49c -> :sswitch_1a0
        0x7afbc456 -> :sswitch_196
    .end sparse-switch

    :pswitch_data_388
    .packed-switch 0x0
        :pswitch_2e8
        :pswitch_2dd
        :pswitch_2e8
        :pswitch_2d4
        :pswitch_203
        :pswitch_1fe
        :pswitch_1f5
        :pswitch_1ea
    .end packed-switch

    :pswitch_data_39c
    .packed-switch 0x32
        :pswitch_292
        :pswitch_28a
        :pswitch_282
    .end packed-switch
.end method

.method private static a(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "JCommonActionHelper"

    :try_start_2
    const-string v1, "RESPONSE_BODY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    sput-wide v1, Lcn/jiguang/v/b;->a:J

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseBundle2Json content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    return-object v1

    :catch_39
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseBundle2Json exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
