.class public final Lcn/jiguang/ag/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/ag/a;

.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/jiguang/ag/a;Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcn/jiguang/ag/d;->a:Lcn/jiguang/ag/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/ag/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/jiguang/ag/d;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "JWake"

    :try_start_2
    iget-object v1, p0, Lcn/jiguang/ag/d;->b:Landroid/content/Context;

    const-string v2, "JWakecmd"

    invoke-static {v1, v2}, Lcn/jiguang/o/f;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcn/jiguang/ag/d;->c:Lorg/json/JSONObject;

    if-nez v5, :cond_21

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x36ee80

    cmp-long v5, v3, v1

    if-ltz v5, :cond_1b

    goto :goto_21

    :cond_1b
    const-string v1, "is not cmd wake time"

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_21
    iget-object v1, p0, Lcn/jiguang/ag/d;->a:Lcn/jiguang/ag/a;

    iget-object v2, p0, Lcn/jiguang/ag/d;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/ag/d;->c:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcn/jiguang/ag/a;->a(Lcn/jiguang/ag/a;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2b

    goto :goto_41

    :catchall_2b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WakeAction failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    return-void
.end method
