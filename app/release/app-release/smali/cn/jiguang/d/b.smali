.class public final Lcn/jiguang/d/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/Long;

.field private static volatile b:Ljava/lang/Long;


# direct methods
.method public static a(Landroid/content/Context;J)J
    .registers 5

    invoke-static {p0}, Lcn/jiguang/d/b;->c(Landroid/content/Context;)J

    move-result-wide v0

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 8

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "SpHelper"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1d

    const-string p0, "isValidRegistered uid <= 0"

    :goto_19
    invoke-static {v3, p0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1d
    invoke-static {}, Lcn/jiguang/g/a;->d()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "isValidRegistered regId is empty"

    goto :goto_19

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcn/jiguang/d/b;->a(Landroid/content/Context;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;J)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcn/jiguang/d/b;->a:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcn/jiguang/d/b;->b:Ljava/lang/Long;

    const/4 v2, 0x2

    new-array v2, v2, [Lcn/jiguang/g/a;

    const/4 v3, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->h()Lcn/jiguang/g/a;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {}, Lcn/jiguang/g/a;->g()Lcn/jiguang/g/a;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_3a
    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .registers 7

    sget-object v0, Lcn/jiguang/d/b;->a:Ljava/lang/Long;

    if-eqz v0, :cond_16

    sget-object v0, Lcn/jiguang/d/b;->b:Ljava/lang/Long;

    if-eqz v0, :cond_16

    sget-object p0, Lcn/jiguang/d/b;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p0, Lcn/jiguang/d/b;->b:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_16
    invoke-static {}, Lcn/jiguang/g/a;->g()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcn/jiguang/g/a;->h()Lcn/jiguang/g/a;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_4b

    cmp-long p0, v2, v4

    if-nez p0, :cond_3d

    goto :goto_4b

    :cond_3d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcn/jiguang/d/b;->a:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcn/jiguang/d/b;->b:Ljava/lang/Long;

    sub-long/2addr v2, v0

    return-wide v2

    :cond_4b
    :goto_4b
    return-wide v4
.end method
