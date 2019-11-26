.class public final Lcn/jiguang/ap/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method private static declared-synchronized a(Landroid/content/Context;)V
    .registers 16

    const-class v0, Lcn/jiguang/ap/a;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcn/jiguang/ap/a;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14b

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    if-nez p0, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    :try_start_d
    const-string v1, "JCoreActionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init jcore impl ,version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",local version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcn/jiguang/internal/JConstants;->SDK_VERSION_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcn/jiguang/ap/a;->a:Z
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_14b

    const/4 v2, 0x0

    :try_start_30
    const-string v3, "JCoreActionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hb:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcn/jiguang/internal/JConstants;->DEFAULT_HEARTBEAT_INTERVAL:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",google:false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",internal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcn/jiguang/internal/JConstants;->INTERNAL_USE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/internal/JConstants;->SDK_NAME:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_5f

    const/4 v3, 0x2

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    sget v5, Lcn/jiguang/a/a;->b:I

    sget v6, Lcn/jiguang/internal/JConstants;->SDK_VERSION_INT:I

    if-eq v5, v6, :cond_68

    const/4 v5, 0x2

    goto :goto_69

    :cond_68
    const/4 v5, 0x1

    :goto_69
    const-string v6, "JCoreActionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "custom:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",dynamic:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "JCore"

    const/16 v10, 0x48

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/Object;

    const-string v6, "core"

    aput-object v6, v14, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v4

    move-object v8, p0

    invoke-static/range {v8 .. v14}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catchall {:try_start_30 .. :try_end_a2} :catchall_a3

    goto :goto_bb

    :catchall_a3
    move-exception v3

    :try_start_a4
    const-string v4, "JCoreActionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sdk type call failed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bb
    invoke-static {}, Lcn/jiguang/g/a;->v()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-static {p0, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "2.2.2"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d5

    const-string v5, "1."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    :cond_d5
    invoke-static {p0}, Lcn/jiguang/ap/b;->d(Landroid/content/Context;)V

    :cond_d8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    :cond_e4
    new-array v3, v1, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->v()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p0, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_f3
    invoke-static {}, Lcn/jiguang/g/a;->A()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-static {p0, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "InitHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appkey="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " last="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_130

    const-string v5, "null"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_130

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_149

    :cond_130
    new-array v1, v1, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->A()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    const-string v1, "InitHelper"

    const-string v2, "We found the appKey is changed or register appkey is empty. Will re-register."

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;)V
    :try_end_149
    .catchall {:try_start_a4 .. :try_end_149} :catchall_14b

    :cond_149
    monitor-exit v0

    return-void

    :catchall_14b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Lcn/jiguang/ap/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "JCoreActionImpl"

    if-eqz v0, :cond_11

    const-string p0, "handleAction Failed,action is empty"

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleAction action:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2b

    const-string v0, "sdk_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_2b
    const-string v0, ""

    :goto_2d
    const-string v2, "a1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    if-eqz p2, :cond_40

    :try_start_37
    const-string p1, "report_data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :catchall_3e
    move-exception p0

    goto :goto_45

    :cond_40
    const/4 p1, 0x0

    :goto_41
    invoke-static {p0, p1}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_3e

    return-void

    :goto_45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "report failed:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5b
    const-string v1, "tcp_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {}, Lcn/jiguang/at/h;->a()Lcn/jiguang/at/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/jiguang/at/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_6b
    const-string v1, "a2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-static {}, Lcn/jiguang/at/f;->a()Lcn/jiguang/at/f;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcn/jiguang/at/f;->a(Landroid/content/Context;Z)V

    return-void

    :cond_7c
    const-string v1, "a3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {p0, v0, p2}, Lcn/jiguang/at/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_8b
    const-string v0, "a4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-static {p0, p2}, Lcn/jiguang/ap/b;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_96
    return-void
.end method
