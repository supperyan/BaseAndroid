.class final Lcn/jiguang/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/a/c;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcn/jiguang/a/c;->b:Z

    iput-object p3, p0, Lcn/jiguang/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/jiguang/a/c;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcn/jiguang/a/c;->b:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/jiguang/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcn/jiguang/am/c;->a()Lcn/jiguang/am/c;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/a/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/jiguang/a/c;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/am/c;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_47

    :cond_1a
    iget-object v0, p0, Lcn/jiguang/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcn/jiguang/am/c;->a()Lcn/jiguang/am/c;

    iget-object v0, p0, Lcn/jiguang/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/a/c;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcn/jiguang/am/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "do action error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JCoreGobal"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method
