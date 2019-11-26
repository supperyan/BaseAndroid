.class final Lcn/jiguang/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action - onServiceConnected, ComponentName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JCoreGobal"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Remote Service bind success."

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_18
    invoke-static {p2}, Lcn/jiguang/android/IDataShare$Stub;->asInterface(Landroid/os/IBinder;)Lcn/jiguang/android/IDataShare;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/jiguang/am/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/service/DataShare;->init(Lcn/jiguang/android/IDataShare;Ljava/lang/String;)V

    sget-object p1, Lcn/jiguang/internal/JConstants;->mApplicationContext:Landroid/content/Context;

    if-eqz p1, :cond_31

    sget-object p1, Lcn/jiguang/internal/JConstants;->mApplicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/api/JCoreManager;->init(Landroid/content/Context;)V
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_32

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected e:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action - onServiceDisconnected, ComponentName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JCoreGobal"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
