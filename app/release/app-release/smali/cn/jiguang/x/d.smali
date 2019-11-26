.class public final Lcn/jiguang/x/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcn/jiguang/x/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcn/jiguang/x/d;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const-string v1, "MittCall"

    :try_start_4
    iget-object v2, p0, Lcn/jiguang/x/d;->b:Landroid/content/Context;

    const/4 v3, 0x1

    new-instance v4, Lcn/jiguang/x/e;

    invoke-direct {v4, p0}, Lcn/jiguang/x/e;-><init>(Lcn/jiguang/x/d;)V

    invoke-static {v2, v3, v4}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/core/IIdentifierListener;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nres:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_29

    const v3, 0xf63e6

    if-eq v2, v3, :cond_29

    return-object v0

    :cond_29
    iget-object v2, p0, Lcn/jiguang/x/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_32

    return-object v2

    :catchall_32
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call ids failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/ad/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/x/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
