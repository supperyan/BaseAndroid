.class final Lcn/jiguang/at/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/at/h;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcn/jiguang/at/h;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 27

    move-object/from16 v1, p0

    const-string v0, "tcp_a3"

    const-string v2, "ConnectingHelper"

    const-string v3, "JCoreTCPManager"

    :try_start_8
    iget-object v4, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v5, "tcp_a1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v0}, Lcn/jiguang/at/h;->b(Lcn/jiguang/at/h;)Lcn/jiguang/ar/i;

    move-result-object v0

    if-nez v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    :goto_1c
    invoke-static {v0}, Lcn/jiguang/at/h;->c(Lcn/jiguang/at/h;)V

    goto/16 :goto_428

    :cond_21
    iget-object v4, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_412

    const-string v5, ",rid:"

    const-string v6, ",ver:"

    const-string v7, "sdk_type"

    const-string v8, "ver"

    const-string v9, "cmd"

    const-string v10, "body"

    const-string v11, "tcp_a20"

    const-string v14, "rid"

    const/4 v15, -0x1

    if-nez v4, :cond_344

    :try_start_3a
    iget-object v4, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v12, "tcp_a4"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_344

    iget-object v4, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    goto/16 :goto_344

    :cond_4e
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v4, "tcp_a5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v8, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v8, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-wide/16 v9, -0x1

    invoke-virtual {v8, v14, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iget-object v10, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    iget-object v7, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-string v10, "timeout"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "send quest,cmd:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",body size:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_d0

    if-ltz v4, :cond_d0

    const-wide/16 v5, 0x0

    cmp-long v7, v8, v5

    if-ltz v7, :cond_d0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bb

    goto :goto_d0

    :cond_bb
    invoke-static {}, Lcn/jiguang/at/n;->a()Lcn/jiguang/at/n;

    move-result-object v16

    iget-object v5, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    move-object/from16 v17, v5

    move-wide/from16 v18, v8

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v25}, Lcn/jiguang/at/n;->a(Landroid/content/Context;JII[BLjava/lang/String;J)V

    goto/16 :goto_428

    :cond_d0
    :goto_d0
    return-void

    :cond_d1
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v6, "tcp_a19"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v0}, Lcn/jiguang/at/h;->d(Lcn/jiguang/at/h;)V

    goto/16 :goto_428

    :cond_e2
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v6, "tcp_a11"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_11d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resgiter success:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    move-result-object v0

    iget-object v2, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    iget-object v4, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-static {v4}, Lcn/jiguang/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v6, v6, v4}, Lcn/jiguang/at/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    const-string v2, "on_register"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_428

    :cond_11d
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v7, "tcp_a10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v0}, Lcn/jiguang/at/h;->e(Lcn/jiguang/at/h;)V

    goto/16 :goto_428

    :cond_12e
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v7, "tcp_a9"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    iget-object v2, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/jiguang/at/h;->a(Lcn/jiguang/at/h;Landroid/content/Context;)V

    goto/16 :goto_428

    :cond_141
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v7, "tcp_a8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    iget-object v2, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/jiguang/at/h;->b(Lcn/jiguang/at/h;Landroid/content/Context;)V

    goto/16 :goto_428

    :cond_154
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v7, "tcp_a2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-static {}, Lcn/jiguang/at/f;->a()Lcn/jiguang/at/f;

    move-result-object v0

    iget-object v2, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v6}, Lcn/jiguang/at/f;->a(Landroid/content/Context;Z)V

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    iget-object v2, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcn/jiguang/at/h;->a(Landroid/os/Bundle;)V

    goto/16 :goto_428

    :cond_170
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v7, "tcp_a13"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    const-string v0, "resgiter failed"

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-string v4, "resCode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v4, v0}, Lcn/jiguang/at/h;->a(Lcn/jiguang/at/h;I)I

    iget-object v4, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ay/c;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Register Failed with server error - code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1be

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Local error description: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1be
    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v0, v5}, Lcn/jiguang/at/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    invoke-static {v4}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    if-eq v0, v6, :cond_408

    const/16 v6, 0x3f4

    if-eq v0, v6, :cond_259

    const/16 v6, 0x2711

    if-eq v0, v6, :cond_256

    packed-switch v0, :pswitch_data_42a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unhandled server response error code - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_428

    :pswitch_1eb
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " AppKey:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u975eandroid AppKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1fe
    invoke-static {v4, v0, v15}, Lcn/jiguang/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_408

    :pswitch_203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " AppKey:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u662f\u65e0\u6548\u7684AppKey,\u8bf7\u786e\u8ba4\u4e0eJIGUANG web\u7aef\u7684AppKey\u4e00\u81f4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1fe

    :pswitch_217
    const-string v0, "IMEI is duplicated reported by server. Give up now. "

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_408

    :pswitch_21e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5305\u540d: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0d\u5b58\u5728"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1fe

    :pswitch_236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5305\u540d: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4e0e AppKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u5339\u914d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1fe

    :cond_256
    const-string v0, " \u672a\u5728manifest\u4e2d\u914d\u7f6eAppKey"

    goto :goto_1fe

    :cond_259
    invoke-static {v4}, Lcn/jiguang/ar/c;->a(Landroid/content/Context;)V

    goto/16 :goto_408

    :cond_25e
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    const-string v0, "login failed"

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-string v2, "resCode"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v2, v0}, Lcn/jiguang/at/h;->b(Lcn/jiguang/at/h;I)V

    goto/16 :goto_428

    :cond_280
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a14"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28e

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    goto/16 :goto_1c

    :cond_28e
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a15"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a1

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    iget-object v2, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcn/jiguang/at/h;->b(Landroid/os/Bundle;)V

    goto/16 :goto_428

    :cond_2a1
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a16"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    iget-object v2, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lcn/jiguang/at/h;->a(Lcn/jiguang/at/h;Landroid/os/Bundle;)V

    goto/16 :goto_428

    :cond_2b4
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a17"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c5

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v0}, Lcn/jiguang/at/h;->f(Lcn/jiguang/at/h;)V

    goto/16 :goto_428

    :cond_2c5
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v0}, Lcn/jiguang/at/h;->g(Lcn/jiguang/at/h;)V

    goto/16 :goto_428

    :cond_2d6
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v14, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_428

    invoke-static {}, Lcn/jiguang/at/n;->a()Lcn/jiguang/at/n;

    move-result-object v0

    iget-object v2, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v4, v5}, Lcn/jiguang/at/n;->a(Landroid/content/Context;J)V

    goto/16 :goto_428

    :cond_2fd
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_322

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v14, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_428

    invoke-static {}, Lcn/jiguang/at/n;->a()Lcn/jiguang/at/n;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcn/jiguang/at/n;->a(J)V

    goto/16 :goto_428

    :cond_322
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a21"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_333

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v0}, Lcn/jiguang/at/h;->h(Lcn/jiguang/at/h;)Z

    goto/16 :goto_428

    :cond_333
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    const-string v2, "tcp_a22"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_408

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-virtual {v0}, Lcn/jiguang/at/h;->b()V

    goto/16 :goto_408

    :cond_344
    :goto_344
    iget-object v2, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v2}, Lcn/jiguang/at/h;->b(Lcn/jiguang/at/h;)Lcn/jiguang/ar/i;

    move-result-object v2

    if-eqz v2, :cond_409

    iget-object v2, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;

    invoke-static {v2}, Lcn/jiguang/at/h;->b(Lcn/jiguang/at/h;)Lcn/jiguang/ar/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/ar/i;->c()Lcn/jiguang/aw/a;

    move-result-object v2

    if-eqz v2, :cond_408

    iget-object v2, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v9, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v9, v8, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-wide/16 v12, -0x1

    invoke-virtual {v9, v14, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v12, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "send data,cmd:"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",body size:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v4, :cond_408

    if-ltz v8, :cond_408

    const-wide/16 v5, 0x0

    cmp-long v7, v9, v5

    if-gez v7, :cond_3a9

    goto :goto_408

    :cond_3a9
    iget-object v5, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    invoke-static {}, Lcn/jiguang/at/n;->a()Lcn/jiguang/at/n;

    move-result-object v16

    iget-object v0, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    move-object/from16 v17, v0

    move-wide/from16 v18, v9

    move/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v22, v2

    invoke-virtual/range {v16 .. v23}, Lcn/jiguang/at/n;->a(Landroid/content/Context;JII[BLjava/lang/String;)V

    goto :goto_408

    :cond_3c5
    iget-object v0, v1, Lcn/jiguang/at/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e4

    iget-object v0, v1, Lcn/jiguang/at/j;->d:Landroid/os/Bundle;

    const-string v5, "uid"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v0, v12, v6

    if-nez v0, :cond_3e1

    const-string v0, "share response uid is 0"

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e1
    move-wide/from16 v22, v12

    goto :goto_3e8

    :cond_3e4
    const-wide/16 v6, 0x0

    move-wide/from16 v22, v6

    :goto_3e8
    iget-object v0, v1, Lcn/jiguang/at/j;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v8

    move-wide/from16 v19, v9

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v23}, Lcn/jiguang/av/b;->a(Landroid/content/Context;IIJ[BJ)[B

    move-result-object v0

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/at/h;->c()Lcn/jiguang/ar/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/ar/i;->c()Lcn/jiguang/aw/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/jiguang/aw/a;->a([B)I

    goto :goto_428

    :cond_408
    :goto_408
    return-void

    :cond_409
    const-string v0, "send data failed:tcp breaked,will restart"

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/at/j;->a:Lcn/jiguang/at/h;
    :try_end_410
    .catchall {:try_start_3a .. :try_end_410} :catchall_412

    goto/16 :goto_1c

    :catchall_412
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tcp action failed:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_428
    :goto_428
    return-void

    nop

    :pswitch_data_42a
    .packed-switch 0x3ed
        :pswitch_236
        :pswitch_21e
        :pswitch_217
        :pswitch_203
        :pswitch_1eb
    .end packed-switch
.end method
