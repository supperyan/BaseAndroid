.class public final Lcn/jiguang/ao/i;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static a:Lcn/jiguang/ao/j;

.field private static volatile b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/ao/i;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcn/jiguang/ao/i;->d:Ljava/util/LinkedHashSet;

    const-string v1, "https://tsis.jpush.cn"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcn/jiguang/ao/i;->e:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/ao/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/LinkedHashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/jiguang/internal/JConstants;->isTestEnv()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcn/jiguang/ao/i;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcn/jiguang/ao/i;->e:Ljava/util/LinkedHashSet;

    return-object v0

    :cond_11
    sget-object v0, Lcn/jiguang/ao/i;->d:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 6

    sget-object v0, Lcn/jiguang/ao/i;->a:Lcn/jiguang/ao/j;

    if-nez v0, :cond_c

    new-instance v0, Lcn/jiguang/ao/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/jiguang/ao/j;-><init>(Landroid/content/Context;B)V

    sput-object v0, Lcn/jiguang/ao/i;->a:Lcn/jiguang/ao/j;

    :cond_c
    sget-object p0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    if-eqz p0, :cond_20

    sget-object p0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_20

    sget-object p0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p0

    if-eqz p0, :cond_5e

    :cond_20
    sget-object p0, Lcn/jiguang/ao/i;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_23
    sget-object v0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_37

    sget-object v0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_a7

    if-eqz v0, :cond_5d

    :cond_37
    :try_start_37
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Lcn/jiguang/ao/i;->a:Lcn/jiguang/ao/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sput-object v0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    const-string v0, "ASYNC"

    sget-object v1, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    invoke-static {v0, v1}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_49

    goto :goto_5d

    :catchall_49
    move-exception v0

    :try_start_4a
    const-string v1, "ReportSis"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new sis task e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_a7

    :cond_5e
    if-eqz p1, :cond_a6

    :try_start_60
    sget-object p0, Lcn/jiguang/ao/i;->b:Ljava/util/concurrent/FutureTask;

    const-wide/16 v0, 0xa

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_6a
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_69} :catch_9d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_60 .. :try_end_69} :catch_94
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_60 .. :try_end_69} :catch_7f

    return-void

    :catchall_6a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sis task e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportSis"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    :catch_7f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sis task e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportSis"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_94
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sis task e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_87

    :catch_9d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sis task e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_87

    :cond_a6
    :goto_a6
    return-void

    :catchall_a7
    move-exception p1

    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    goto :goto_ab

    :goto_aa
    throw p1

    :goto_ab
    goto :goto_aa
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/jiguang/ao/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/LinkedHashSet;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/ao/i;->d(Landroid/content/Context;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcn/jiguang/ao/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZII)Lcn/jiguang/ao/n;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report sis code["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/jiguang/ao/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] from url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n body="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jiguang/ao/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportSis"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/jiguang/ao/n;->a()I

    move-result p1

    if-nez p1, :cond_6b

    invoke-virtual {p2}, Lcn/jiguang/ao/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6b

    :try_start_45
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ret"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/ao/a;->a()Lcn/jiguang/ao/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_59

    const/4 p0, 0x1

    return p0

    :catchall_59
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getUrls e:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 15

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0}, Lcn/jiguang/f/j;->a(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0}, Lcn/jiguang/f/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "appkey"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkver"

    sget-object v4, Lcn/jiguang/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_41

    const-string v1, "uid"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_41
    if-eqz v5, :cond_48

    const-string v1, "opera"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_48
    const-string v1, "get_loc_info"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/os/Bundle;
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_9d

    const-string v2, "time"

    const-string v3, "lat"

    const-wide/high16 v4, 0x4069

    if-eqz v1, :cond_6d

    :try_start_59
    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_6d

    :try_start_5f
    const-string v1, "lot"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_69

    :catchall_69
    move-wide v12, v4

    move-wide v4, v8

    move-wide v8, v12

    goto :goto_6e

    :catchall_6d
    :cond_6d
    move-wide v8, v4

    :goto_6e
    const-wide v10, -0x3fa9800000000000L

    cmpl-double p0, v4, v10

    if-lez p0, :cond_9d

    const-wide v10, 0x4056800000000000L

    cmpg-double p0, v4, v10

    if-gez p0, :cond_9d

    const-wide v10, -0x3f99800000000000L

    cmpl-double p0, v8, v10

    if-lez p0, :cond_9d

    const-wide v10, 0x4066800000000000L

    cmpg-double p0, v8, v10

    if-gez p0, :cond_9d

    :try_start_92
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "lng"

    invoke-virtual {v0, p0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_9d

    :catchall_9d
    :cond_9d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Ljava/util/LinkedHashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcn/jiguang/g/a;->s()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    :try_start_16
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_2c

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_29} :catch_2c

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :catch_2c
    :cond_2c
    return-object v0
.end method
