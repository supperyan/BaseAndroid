.class final Lcn/jiguang/ar/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/ar/h;

.field final synthetic b:Lcn/jiguang/ar/l;


# direct methods
.method constructor <init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/h;)V
    .registers 3

    iput-object p1, p0, Lcn/jiguang/ar/m;->b:Lcn/jiguang/ar/l;

    iput-object p2, p0, Lcn/jiguang/ar/m;->a:Lcn/jiguang/ar/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const-string v0, "sisReport ,close udpsocket error:"

    const-string v1, "SisConnContext"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_dd

    :try_start_a
    iget-object v4, p0, Lcn/jiguang/ar/m;->b:Lcn/jiguang/ar/l;

    iget-object v4, v4, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->E()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v2, "reportInfo is Empty, quit report"

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_db

    :try_start_23
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    :try_start_3c
    const-string v5, "DG"

    invoke-static {v5, v4}, Lcn/jiguang/ar/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sis report data("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/jiguang/ar/m;->a:Lcn/jiguang/ar/h;

    iget-object v7, v7, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/jiguang/ar/m;->a:Lcn/jiguang/ar/h;

    iget v7, v7, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcn/jiguang/ar/m;->b:Lcn/jiguang/ar/l;

    iget-object v7, p0, Lcn/jiguang/ar/m;->a:Lcn/jiguang/ar/h;

    iget-object v7, v7, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    iget-object v8, p0, Lcn/jiguang/ar/m;->a:Lcn/jiguang/ar/h;

    iget v8, v8, Lcn/jiguang/ar/h;->b:I

    invoke-static {v6, v7, v8, v3, v5}, Lcn/jiguang/ar/l;->a(Lcn/jiguang/ar/l;Ljava/net/InetAddress;ILjava/net/DatagramSocket;[B)Z

    move-result v5

    if-eqz v5, :cond_be

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "report succeed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jiguang/ar/m;->b:Lcn/jiguang/ar/l;

    iget-object v4, v4, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v6, v5, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->L()Lcn/jiguang/g/a;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    iget-object v4, p0, Lcn/jiguang/ar/m;->b:Lcn/jiguang/ar/l;

    iget-object v4, v4, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    new-array v5, v5, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->E()Lcn/jiguang/g/a;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    goto :goto_cf

    :cond_be
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "report failed"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_3c .. :try_end_cf} :catchall_db

    :goto_cf
    :try_start_cf
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    return-void

    :catchall_d3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2d

    :catchall_db
    move-exception v2

    goto :goto_e1

    :catchall_dd
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    :goto_e1
    :try_start_e1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sisReport failed, error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_e1 .. :try_end_f2} :catchall_101

    if-eqz v3, :cond_100

    :try_start_f4
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    return-void

    :catchall_f8
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_100
    return-void

    :catchall_101
    move-exception v2

    if-eqz v3, :cond_11c

    :try_start_104
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_11c

    :catchall_108
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11c
    :goto_11c
    goto :goto_11e

    :goto_11d
    throw v2

    :goto_11e
    goto :goto_11d
.end method
