.class final Lcn/jiguang/ag/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcn/jiguang/ag/a;


# direct methods
.method private constructor <init>(Lcn/jiguang/ag/a;)V
    .registers 2

    iput-object p1, p0, Lcn/jiguang/ag/e;->a:Lcn/jiguang/ag/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jiguang/ag/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcn/jiguang/ag/e;-><init>(Lcn/jiguang/ag/a;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "JWake"

    :try_start_2
    const-string p2, "unbind wake ServiceConnection"

    invoke-static {p1, p2}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/jiguang/ag/e;->a:Lcn/jiguang/ag/a;

    invoke-static {p2}, Lcn/jiguang/ag/a;->a(Lcn/jiguang/ag/a;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected throwable"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
