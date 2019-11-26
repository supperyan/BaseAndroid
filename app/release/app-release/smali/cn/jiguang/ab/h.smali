.class final Lcn/jiguang/ab/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/ab/f;


# direct methods
.method public constructor <init>(Lcn/jiguang/ab/f;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, " location"

    const-string v1, "request "

    const-string v2, " time out "

    const/16 v3, 0x3e9

    const-string v4, "JLocationGps"

    packed-switch p1, :pswitch_data_118

    :pswitch_f
    goto/16 :goto_117

    :pswitch_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get only network "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {v0}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_28
    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->b(Lcn/jiguang/ab/f;)V

    return-void

    :pswitch_31
    const-string p1, "LOAD_GPS_ACTION_REQUEST_ONLY_NETWORK"

    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3ed

    :pswitch_38
    :try_start_38
    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->e(Lcn/jiguang/ab/f;)Landroid/location/LocationManager;

    move-result-object v5

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    const/4 v9, 0x0

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->d(Lcn/jiguang/ab/f;)Landroid/location/LocationListener;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {v1}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    iget-object p1, p1, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_71
    .catchall {:try_start_38 .. :try_end_71} :catchall_72
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_71} :catch_7e

    return-void

    :catchall_72
    const-string p1, "The provider is illegal argument!"

    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->b(Lcn/jiguang/ab/f;)V

    goto/16 :goto_117

    :catch_7e
    const-string p1, "No suitable permission when get last known location!"

    goto :goto_28

    :pswitch_81
    :try_start_81
    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e2

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "network"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    const-string p1, "get gps with network time out "

    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    const-string v2, "gps"

    invoke-static {p1, v2}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->c(Lcn/jiguang/ab/f;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->e(Lcn/jiguang/ab/f;)Landroid/location/LocationManager;

    move-result-object v5

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    const/4 v9, 0x0

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->d(Lcn/jiguang/ab/f;)Landroid/location/LocationListener;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {v1}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    iget-object p1, p1, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_117

    :cond_e2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {v0}, Lcn/jiguang/ab/f;->a(Lcn/jiguang/ab/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ab/h;->a:Lcn/jiguang/ab/f;

    invoke-static {p1}, Lcn/jiguang/ab/f;->b(Lcn/jiguang/ab/f;)V
    :try_end_101
    .catchall {:try_start_81 .. :try_end_101} :catchall_102

    return-void

    :catchall_102
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "when location time out "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_28

    :goto_117
    return-void

    :pswitch_data_118
    .packed-switch 0x3e9
        :pswitch_81
        :pswitch_f
        :pswitch_38
        :pswitch_31
        :pswitch_11
    .end packed-switch
.end method
