.class final Lcn/jiguang/ab/f;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/Object;

.field private static h:Lcn/jiguang/ab/f;


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Lcn/jiguang/ac/b;

.field private f:Z

.field private g:Ljava/lang/String;

.field private i:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/ab/f;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/ab/f;->h:Lcn/jiguang/ab/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jiguang/ab/g;

    invoke-direct {v0, p0}, Lcn/jiguang/ab/g;-><init>(Lcn/jiguang/ab/f;)V

    iput-object v0, p0, Lcn/jiguang/ab/f;->i:Landroid/location/LocationListener;

    iput-object p1, p0, Lcn/jiguang/ab/f;->b:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jiguang/ab/f;
    .registers 3

    sget-object v0, Lcn/jiguang/ab/f;->h:Lcn/jiguang/ab/f;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/ab/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/ab/f;->h:Lcn/jiguang/ab/f;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/ab/f;

    invoke-direct {v1, p0}, Lcn/jiguang/ab/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/jiguang/ab/f;->h:Lcn/jiguang/ab/f;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcn/jiguang/ab/f;->h:Lcn/jiguang/ab/f;

    return-object p0
.end method

.method static synthetic a(Lcn/jiguang/ab/f;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ab/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/jiguang/ab/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcn/jiguang/ab/f;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .registers 6

    if-eqz p1, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateGpsInfo location time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JLocationGps"

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    if-nez v0, :cond_24

    new-instance v0, Lcn/jiguang/ac/b;

    invoke-direct {v0}, Lcn/jiguang/ac/b;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    :cond_24
    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    iget-object v1, p0, Lcn/jiguang/ab/f;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/jiguang/d/b;->a(Landroid/content/Context;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/jiguang/ac/b;->a:J

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jiguang/ac/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcn/jiguang/ac/b;->c:D

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcn/jiguang/ac/b;->d:D

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcn/jiguang/ac/b;->f:D

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    float-to-double v1, p1

    iput-wide v1, v0, Lcn/jiguang/ac/b;->g:D

    return-void

    :cond_5d
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/ab/f;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/jiguang/ab/f;->a(Landroid/location/Location;)V

    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-nez p2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    const-wide/32 v5, -0x1d4c0

    cmp-long v7, v2, v5

    if-gez v7, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    if-eqz v4, :cond_31

    return v1

    :cond_31
    if-eqz v5, :cond_34

    return v0

    :cond_34
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-lez v3, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    if-gez v3, :cond_47

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    const/16 v6, 0xc8

    if-le v3, v6, :cond_4e

    const/4 v3, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_5f

    if-nez p2, :cond_5d

    const/4 p1, 0x1

    goto :goto_63

    :cond_5d
    const/4 p1, 0x0

    goto :goto_63

    :cond_5f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_63
    if-eqz v5, :cond_66

    return v1

    :cond_66
    if-eqz v2, :cond_6b

    if-nez v4, :cond_6b

    return v1

    :cond_6b
    if-eqz v2, :cond_72

    if-nez v3, :cond_72

    if-eqz p1, :cond_72

    return v1

    :cond_72
    return v0
.end method

.method static synthetic b(Lcn/jiguang/ab/f;)V
    .registers 6

    const-string v0, "JLocationGps"

    const-string v1, "gps will done"

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/jiguang/ab/f;->f:Z

    invoke-direct {p0}, Lcn/jiguang/ab/f;->f()V

    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    if-eqz v1, :cond_73

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1e
    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2d
    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3c
    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4b
    const/4 v1, 0x0

    :try_start_4c
    iget-object v2, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_58

    :goto_55
    iput-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    goto :goto_78

    :catchall_58
    move-exception v2

    :try_start_59
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "quit handler failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/ad/a;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_6f

    goto :goto_55

    :catchall_6f
    move-exception v0

    iput-object v1, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    throw v0

    :cond_73
    const-string p0, "cellLocationManager is null,please check it"

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method static synthetic c(Lcn/jiguang/ab/f;)V
    .registers 1

    invoke-direct {p0}, Lcn/jiguang/ab/f;->f()V

    return-void
.end method

.method static synthetic d(Lcn/jiguang/ab/f;)Landroid/location/LocationListener;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ab/f;->i:Landroid/location/LocationListener;

    return-object p0
.end method

.method static synthetic e(Lcn/jiguang/ab/f;)Landroid/location/LocationManager;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    return-object p0
.end method

.method private f()V
    .registers 5

    const-string v0, "JLocationGps"

    :try_start_2
    iget-object v1, p0, Lcn/jiguang/ab/f;->i:Landroid/location/LocationListener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    iget-object v2, p0, Lcn/jiguang/ab/f;->i:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_34

    :cond_12
    const-string v1, "locationManager is null , do nothing!"

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_18
    const-string v1, "Location listener is null , do nothing!"

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove location listener failed  e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method


# virtual methods
.method final a()Lcn/jiguang/ac/b;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    return-object v0
.end method

.method final b()Z
    .registers 2

    iget-boolean v0, p0, Lcn/jiguang/ab/f;->f:Z

    return v0
.end method

.method final c()V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/ab/f;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    iget-object v0, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const/4 v1, 0x1

    const-string v2, "JLocationGps"

    if-nez v0, :cond_15

    const-string v0, "get locationManager failed"

    invoke-static {v2, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcn/jiguang/ab/f;->f:Z

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    if-nez v0, :cond_41

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "location"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcn/jiguang/ab/h;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcn/jiguang/ab/h;-><init>(Lcn/jiguang/ab/f;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    goto :goto_41

    :catchall_2f
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start load loc-info failed - error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/ad/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    iget-object v0, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    if-nez v0, :cond_4d

    const-string v0, " mAsyncHandler is empty"

    invoke-static {v2, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcn/jiguang/ab/f;->f:Z

    return-void

    :cond_4d
    iget-object v0, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x3eb

    if-eqz v0, :cond_61

    iput-object v1, p0, Lcn/jiguang/ab/f;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_61
    iget-object v0, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    iput-object v3, p0, Lcn/jiguang/ab/f;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_73
    iput-object v1, p0, Lcn/jiguang/ab/f;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/ab/f;->a:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final d()Lcn/jiguang/ac/b;
    .registers 8

    const-string v0, "JLocationGps"

    :try_start_2
    iget-object v1, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iget-object v3, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    invoke-direct {p0, v1, v2}, Lcn/jiguang/ab/f;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-direct {p0, v1, v3}, Lcn/jiguang/ab/f;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_30

    :cond_27
    invoke-direct {p0, v2, v3}, Lcn/jiguang/ab/f;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move-object v1, v2

    goto :goto_30

    :cond_2f
    move-object v1, v3

    :goto_30
    if-eqz v1, :cond_7c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_7c

    invoke-direct {p0, v1}, Lcn/jiguang/ab/f;->a(Landroid/location/Location;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bestLocation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",curTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ab/f;->d:Lcn/jiguang/ac/b;
    :try_end_65
    .catchall {:try_start_2 .. :try_end_65} :catchall_66

    return-object v0

    :catchall_66
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLastGpsInfo failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Z
    .registers 5

    const-string v0, "JLocationGps"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcn/jiguang/ab/f;->c:Landroid/location/LocationManager;

    const-string v3, "passive"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_23} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_23} :catch_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_2a

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    return v1

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0

    :cond_29
    return v1

    :catch_2a
    const-string v2, "The ILocationManager is null!"

    :goto_2c
    invoke-static {v0, v2}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_30
    const-string v2, "The provider [gps] is illegal argument!"

    goto :goto_2c

    :catch_33
    const-string v2, "No suitable permission is present when get GPS_PROVIDER!"

    goto :goto_2c
.end method
