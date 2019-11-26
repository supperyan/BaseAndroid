.class final Lcn/jiguang/ax/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/ax/b;


# direct methods
.method public constructor <init>(Lcn/jiguang/ax/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcn/jiguang/ax/d;->a:Lcn/jiguang/ax/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const-string v0, "TaskHandlerManager_xxx"

    :try_start_2
    iget-object v1, p0, Lcn/jiguang/ax/d;->a:Lcn/jiguang/ax/b;

    invoke-static {v1}, Lcn/jiguang/ax/b;->a(Lcn/jiguang/ax/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/ax/a;

    if-eqz v1, :cond_36

    iget v2, v1, Lcn/jiguang/ax/a;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    iget v2, p1, Landroid/os/Message;->what:I

    iget-wide v3, v1, Lcn/jiguang/ax/a;->b:J

    invoke-virtual {p0, v2, v3, v4}, Lcn/jiguang/ax/d;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_32

    :cond_23
    iget-object v2, p0, Lcn/jiguang/ax/d;->a:Lcn/jiguang/ax/b;

    invoke-static {v2}, Lcn/jiguang/ax/b;->a(Lcn/jiguang/ax/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    invoke-virtual {v1, p1}, Lcn/jiguang/ax/a;->a(Landroid/os/Message;)V

    goto :goto_5c

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "miss task:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage,e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method
