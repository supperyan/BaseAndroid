.class public Lcn/jiguang/analytics/page/PushSA;
.super Ljava/lang/Object;


# static fields
.field public static final CACHE_PATH:Ljava/lang/String; = "push_stat_cache.json"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final REPORT_ACTIVE_LAUNCH:Ljava/lang/String; = "active_launch"

.field public static final REPORT_ACTIVE_TERMINATE:Ljava/lang/String; = "active_terminate"

.field private static final SESSION_END_MILLIS:Ljava/lang/String; = "cse"

.field private static final SESSION_START_MILLIS:Ljava/lang/String; = "css"

.field private static final TAG:Ljava/lang/String; = "PushSA"

.field private static volatile instance:Lcn/jiguang/analytics/page/PushSA; = null

.field public static isOnPauseInvoke:Z = false

.field public static isOnResumeInvoke:Z = false


# instance fields
.field private activitySwitch:Z

.field private cur_activity:Ljava/lang/String;

.field private final cur_session_file_lock:Ljava/lang/Object;

.field private cur_session_id:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private firstResume:Z

.field private flow_cache:Lorg/json/JSONObject;

.field private interval:J

.field private latestPauseTime:J

.field private latestResumeTime:J

.field private stat_enable:Z

.field private tempTimelong:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_activity:Ljava/lang/String;

    iput-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_id:Ljava/lang/String;

    const-wide/16 v1, 0x1e

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->interval:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/jiguang/analytics/page/PushSA;->firstResume:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    iput-boolean v3, p0, Lcn/jiguang/analytics/page/PushSA;->stat_enable:Z

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->tempTimelong:J

    iput-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->flow_cache:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_file_lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->sendLogRoutine(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->saveLogRoutine(Landroid/content/Context;)V

    return-void
.end method

.method private clearCurrentLogFile(Landroid/content/Context;)V
    .registers 4

    const-string v0, "push_stat_cache.json"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method private createNewSession(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/analytics/page/PushSA;->generateSessionID(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_id:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->n()Lcn/jiguang/g/a;

    move-result-object p3

    iget-wide v0, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {}, Lcn/jiguang/g/a;->q()Lcn/jiguang/g/a;

    move-result-object p3

    iget-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_id:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2f
    invoke-direct {p0, p2}, Lcn/jiguang/analytics/page/PushSA;->wrapDate(Lorg/json/JSONObject;)V

    const-string p3, "active_launch"

    invoke-static {p1, p2, p3}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string p1, "session_id"

    iget-object p3, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_id:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3e} :catch_3f

    return-object p2

    :catch_3f
    const/4 p1, 0x0

    return-object p1
.end method

.method private generateSessionID(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFlowCache(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    iget-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->flow_cache:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    const-string v0, "push_stat_cache.json"

    invoke-static {p1, v0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/page/PushSA;->flow_cache:Lorg/json/JSONObject;

    :cond_c
    iget-object p1, p0, Lcn/jiguang/analytics/page/PushSA;->flow_cache:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static getInstance()Lcn/jiguang/analytics/page/PushSA;
    .registers 2

    sget-object v0, Lcn/jiguang/analytics/page/PushSA;->instance:Lcn/jiguang/analytics/page/PushSA;

    if-nez v0, :cond_13

    const-class v0, Lcn/jiguang/analytics/page/PushSA;

    monitor-enter v0

    :try_start_7
    new-instance v1, Lcn/jiguang/analytics/page/PushSA;

    invoke-direct {v1}, Lcn/jiguang/analytics/page/PushSA;-><init>()V

    sput-object v1, Lcn/jiguang/analytics/page/PushSA;->instance:Lcn/jiguang/analytics/page/PushSA;

    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    :cond_13
    :goto_13
    sget-object v0, Lcn/jiguang/analytics/page/PushSA;->instance:Lcn/jiguang/analytics/page/PushSA;

    return-object v0
.end method

.method private invokeCheck(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->stat_enable:Z

    const/4 v1, 0x0

    const-string v2, "PushSA"

    if-nez v0, :cond_d

    const-string p1, "stat function has been disabled"

    invoke-static {v2, p1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    if-nez p1, :cond_15

    const-string p1, "context is null"

    invoke-static {v2, p1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_2b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Context should be an Activity on this method : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2b
    const/4 p1, 0x1

    return p1
.end method

.method private isNewSession(Landroid/content/Context;)Z
    .registers 11

    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->firstResume:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-eqz v0, :cond_63

    iput-boolean v1, p0, Lcn/jiguang/analytics/page/PushSA;->firstResume:Z

    const-string v0, "PushSA"

    const-string v5, "statistics start"

    invoke-static {v0, v5}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a;->p()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-static {p1, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v7, "lastPause:"

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",latestResumeTime:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",interval:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->interval:J

    mul-long v7, v7, v2

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",a:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    sub-long/2addr v7, v5

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_71

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    sub-long/2addr v7, v5

    iget-wide v5, p0, Lcn/jiguang/analytics/page/PushSA;->interval:J

    mul-long v5, v5, v2

    cmp-long p1, v7, v5

    if-gtz p1, :cond_71

    goto :goto_72

    :cond_63
    iget-wide v5, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->interval:J

    mul-long v7, v7, v2

    cmp-long p1, v5, v7

    if-gtz p1, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x1

    :goto_72
    return v1
.end method

.method private saveCurrentLog(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "push_stat_cache.json"

    invoke-static {p1, v0, p2}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method private saveLogRoutine(Landroid/content/Context;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_file_lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_7
    new-array v1, v1, [Lcn/jiguang/g/a;

    const/4 v2, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->p()Lcn/jiguang/g/a;

    move-result-object v3

    iget-wide v4, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcn/jiguang/g/a;->o()Lcn/jiguang/g/a;

    move-result-object v3

    iget-wide v4, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->getFlowCache(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_39

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_44

    :cond_39
    :try_start_39
    invoke-direct {p0, v1, p1}, Lcn/jiguang/analytics/page/PushSA;->updateFlowInfo(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lcn/jiguang/analytics/page/PushSA;->updateFlowCache(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v1}, Lcn/jiguang/analytics/page/PushSA;->saveCurrentLog(Landroid/content/Context;Lorg/json/JSONObject;)V

    monitor-exit v0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_44

    throw p1
.end method

.method private sendLogRoutine(Landroid/content/Context;)V
    .registers 11

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->isNewSession(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "PushSA"

    const-string v1, "new statistics session"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    invoke-direct {p0, p1, v1, v2}, Lcn/jiguang/analytics/page/PushSA;->createNewSession(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1d
    iget-object v1, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_file_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_20
    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->getFlowCache(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_54

    if-lez v3, :cond_37

    :try_start_2c
    const-string v3, "active_terminate"

    invoke-static {p1, v2, v3}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_31

    :catch_31
    :try_start_31
    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->clearCurrentLogFile(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcn/jiguang/analytics/page/PushSA;->flow_cache:Lorg/json/JSONObject;

    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_54

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_43

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_43
    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const-string v4, "JCore"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1

    :cond_57
    invoke-static {}, Lcn/jiguang/g/a;->q()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_id:Ljava/lang/String;

    return-void
.end method

.method private updateFlowCache(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcn/jiguang/analytics/page/PushSA;->flow_cache:Lorg/json/JSONObject;

    return-void
.end method

.method private updateFlowInfo(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 12

    invoke-static {}, Lcn/jiguang/g/a;->n()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v2

    if-gtz v6, :cond_3b

    iget-wide v0, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    iget-wide v6, p0, Lcn/jiguang/analytics/page/PushSA;->tempTimelong:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-lez v6, :cond_21

    div-long/2addr v0, v4

    goto :goto_23

    :cond_21
    const-wide/16 v0, 0xa

    :goto_23
    const/4 v2, 0x1

    new-array v2, v2, [Lcn/jiguang/g/a;

    const/4 v3, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->n()Lcn/jiguang/g/a;

    move-result-object v6

    iget-wide v7, p0, Lcn/jiguang/analytics/page/PushSA;->tempTimelong:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {p2, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    goto :goto_40

    :cond_3b
    iget-wide v2, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    sub-long/2addr v2, v0

    div-long v0, v2, v4

    :goto_40
    const-string p2, "duration"

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-string p2, "itime"

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p2, p0, Lcn/jiguang/analytics/page/PushSA;->cur_session_id:Ljava/lang/String;

    const-string v0, "session_id"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/page/PushSA;->wrapDate(Lorg/json/JSONObject;)V

    return-void
.end method

.method private wrapDate(Lorg/json/JSONObject;)V
    .registers 6

    invoke-static {}, Lcn/jiguang/f/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "date"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Lcn/jiguang/analytics/page/PushSA;->interval:J

    return-wide v0
.end method

.method public isStatEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->stat_enable:Z

    return v0
.end method

.method public onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    const-string v1, "PushSA"

    if-nez v0, :cond_c

    const-string p1, "JCoreInterface.onPause() must be called after called JCoreInterface.onResume() in this Activity or Fragment"

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    iget-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_activity:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_23
    iget-object p2, p0, Lcn/jiguang/analytics/page/PushSA;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/jiguang/analytics/page/b;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/analytics/page/b;-><init>(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2e

    goto :goto_34

    :catchall_2e
    return-void

    :cond_2f
    const-string p1, "page name didn\'t match the last one passed by onResume"

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    if-eqz v0, :cond_c

    const-string p1, "PushSA"

    const-string p2, "JCoreInterface.onResume() must be called after called JCoreInterface.onPause() in last Activity or Fragment"

    invoke-static {p1, p2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    iput-object p2, p0, Lcn/jiguang/analytics/page/PushSA;->cur_activity:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_1b
    iget-object p2, p0, Lcn/jiguang/analytics/page/PushSA;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/jiguang/analytics/page/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/analytics/page/a;-><init>(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_25

    :catchall_25
    return-void
.end method

.method public onKillProcess(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->cur_activity:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_1d

    :try_start_12
    iget-object v0, p0, Lcn/jiguang/analytics/page/PushSA;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/analytics/page/c;

    invoke-direct {v1, p0, p1}, Lcn/jiguang/analytics/page/c;-><init>(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1d

    nop

    :catch_1d
    :catchall_1d
    :cond_1d
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .registers 5

    const-string v0, "onPause"

    invoke-direct {p0, p1, v0}, Lcn/jiguang/analytics/page/PushSA;->invokeCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/analytics/page/PushSA;->isOnPauseInvoke:Z

    :try_start_c
    iput-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :catch_14
    nop

    :goto_15
    iget-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    iget-object v1, p0, Lcn/jiguang/analytics/page/PushSA;->cur_activity:Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->latestPauseTime:J

    iget-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->tempTimelong:J

    :try_start_39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcn/jiguang/analytics/page/PushSA;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/analytics/page/d;

    invoke-direct {v2, v0, p1, p0}, Lcn/jiguang/analytics/page/d;-><init>(ZLandroid/content/Context;Lcn/jiguang/analytics/page/PushSA;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_47

    :catchall_47
    return-void

    :cond_48
    const-string p1, "PushSA"

    const-string v0, "the activity pass by onPause didn\'t match last one passed by onResume"

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 5

    const-string v0, "onResume"

    invoke-direct {p0, p1, v0}, Lcn/jiguang/analytics/page/PushSA;->invokeCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/analytics/page/PushSA;->isOnResumeInvoke:Z

    const/4 v1, 0x0

    :try_start_d
    iput-boolean v1, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    nop

    :goto_11
    iget-boolean v1, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iput-boolean v0, p0, Lcn/jiguang/analytics/page/PushSA;->activitySwitch:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/jiguang/analytics/page/PushSA;->latestResumeTime:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/analytics/page/PushSA;->cur_activity:Ljava/lang/String;

    :try_start_28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcn/jiguang/analytics/page/PushSA;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/analytics/page/d;

    invoke-direct {v2, v0, p1, p0}, Lcn/jiguang/analytics/page/d;-><init>(ZLandroid/content/Context;Lcn/jiguang/analytics/page/PushSA;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_36

    :catchall_36
    return-void
.end method

.method public setInterval(J)V
    .registers 3

    iput-wide p1, p0, Lcn/jiguang/analytics/page/PushSA;->interval:J

    return-void
.end method

.method public setStatEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/jiguang/analytics/page/PushSA;->stat_enable:Z

    return-void
.end method
