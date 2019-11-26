.class final Lcn/jiguang/ab/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/ac/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/ab/a;


# direct methods
.method constructor <init>(Lcn/jiguang/ab/a;)V
    .registers 2

    iput-object p1, p0, Lcn/jiguang/ab/b;->a:Lcn/jiguang/ab/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcn/jiguang/ac/a;
    .registers 5

    :try_start_0
    new-instance v0, Lcn/jiguang/ab/d;

    iget-object v1, p0, Lcn/jiguang/ab/b;->a:Lcn/jiguang/ab/a;

    invoke-static {v1}, Lcn/jiguang/ab/a;->a(Lcn/jiguang/ab/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jiguang/ab/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/jiguang/ab/d;->b()V

    const/4 v1, 0x0

    :goto_f
    const/16 v2, 0x14

    if-ge v1, v2, :cond_3a

    invoke-virtual {v0}, Lcn/jiguang/ab/d;->a()Lcn/jiguang/ac/a;

    move-result-object v2

    if-eqz v2, :cond_1a

    return-object v2

    :cond_1a
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_22

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catchall_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JLocationCellInfo call failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JLocation"

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/ab/b;->a()Lcn/jiguang/ac/a;

    move-result-object v0

    return-object v0
.end method
