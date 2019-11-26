.class public final Lcn/jiguang/ag/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/ag/a;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/jiguang/ag/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcn/jiguang/ag/b;->a:Lcn/jiguang/ag/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/ag/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "JWake"

    :try_start_2
    iget-object v1, p0, Lcn/jiguang/ag/b;->a:Lcn/jiguang/ag/a;

    iget-object v2, p0, Lcn/jiguang/ag/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/jiguang/ag/a;->a(Landroid/content/Context;)Ljava/lang/String;

    iget-object v1, p0, Lcn/jiguang/ag/b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/o/f;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "can\'t wake because wakeConfig not allow"

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_17
    iget-object v1, p0, Lcn/jiguang/ag/b;->a:Lcn/jiguang/ag/a;

    iget-object v2, p0, Lcn/jiguang/ag/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/jiguang/ag/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealAction throwable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method
