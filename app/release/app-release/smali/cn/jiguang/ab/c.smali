.class final Lcn/jiguang/ab/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/ac/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/ab/a;


# direct methods
.method constructor <init>(Lcn/jiguang/ab/a;)V
    .registers 2

    iput-object p1, p0, Lcn/jiguang/ab/c;->a:Lcn/jiguang/ab/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcn/jiguang/ac/b;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ab/c;->a:Lcn/jiguang/ab/a;

    invoke-static {v0}, Lcn/jiguang/ab/a;->a(Lcn/jiguang/ab/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/ab/f;->a(Landroid/content/Context;)Lcn/jiguang/ab/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/ab/f;->c()V

    const/4 v1, 0x0

    :goto_e
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_3d

    invoke-virtual {v0}, Lcn/jiguang/ab/f;->b()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcn/jiguang/ab/f;->a()Lcn/jiguang/ac/b;

    move-result-object v0

    return-object v0

    :cond_1d
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catchall_25
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JLocationGpsInfo call failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JLocation"

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/ab/c;->a()Lcn/jiguang/ac/b;

    move-result-object v0

    return-object v0
.end method
