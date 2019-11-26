.class public final Lcn/jiguang/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcn/jiguang/b/a;

.field private static c:I


# instance fields
.field public a:Z

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/jiguang/b/a;

    invoke-direct {v0}, Lcn/jiguang/b/a;-><init>()V

    sput-object v0, Lcn/jiguang/b/a;->b:Lcn/jiguang/b/a;

    const/high16 v0, 0x10

    sput v0, Lcn/jiguang/b/a;->c:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/b/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/jiguang/b/a;->a:Z

    invoke-static {v0}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/g/a;->b()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/b/a;->a:Z

    return-void
.end method

.method public static a()Lcn/jiguang/b/a;
    .registers 1

    sget-object v0, Lcn/jiguang/b/a;->b:Lcn/jiguang/b/a;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_4
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2c

    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_2c

    aget-object v2, v0, v1

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    aget-object v2, v0, v1

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_2a
    :goto_2a
    aget-object p0, v0, v1
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_2c} :catch_2c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    const-string v0, "jpush_uncaughtexception_file"

    invoke-static {p0, v0}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    :try_start_12
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/Throwable;)Lorg/json/JSONArray;
    .registers 7

    const-string v0, "jpush_uncaughtexception_file"

    invoke-static {p1, v0}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/f/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    :try_start_12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_1c

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1b} :catch_1b

    :catch_1b
    move-object v2, v1

    :catch_1c
    :cond_1c
    invoke-direct {p0, p1, v2, v3, p2}, Lcn/jiguang/b/a;->a(Landroid/content/Context;Lorg/json/JSONArray;ILjava/lang/Throwable;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;ILjava/lang/Throwable;)Lorg/json/JSONArray;
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcn/jiguang/d/b;->c(Landroid/content/Context;)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p4, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_21

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :cond_21
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    const/4 v5, 0x0

    :try_start_24
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_d6

    const-string v7, "stacktrace"

    const-string v8, "count"

    const-string v9, "crashtime"

    const/4 v10, 0x1

    if-ge v4, v6, :cond_50

    :try_start_31
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v10

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_50

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_50
    :goto_50
    if-nez v5, :cond_d6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "message"

    invoke-static {p4}, Lcn/jiguang/b/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "networktype"

    invoke-static {p1}, Lcn/jiguang/f/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_a1

    iget-object p4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p4, :cond_87

    const-string p4, "null"

    goto :goto_89

    :cond_87
    iget-object p4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "versionname"

    invoke-virtual {v4, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "versioncode"

    invoke-virtual {v4, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    sget p1, Lcn/jiguang/b/a;->c:I

    if-ge p3, p1, :cond_b2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d6

    :cond_b2
    const-wide/16 p3, -0x1

    move-wide v0, p3

    const/4 p1, 0x0

    :goto_b6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_d3

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_d0

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v2, v0, p3

    if-eqz v2, :cond_ce

    cmp-long v2, v5, v0

    if-gez v2, :cond_d0

    :cond_ce
    move p1, v3

    move-wide v0, v5

    :cond_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_d3
    invoke-virtual {p2, p1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d6
    .catchall {:try_start_31 .. :try_end_d6} :catchall_d6

    :catchall_d6
    :cond_d6
    :goto_d6
    return-object p2
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    if-nez p0, :cond_a

    const-string p0, "JPushCrashHandler"

    const-string v0, "Action - deleteCrashLog context is null"

    invoke-static {p0, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "jpush_uncaughtexception_file"

    invoke-static {p0, v0}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

    const-string v0, "JPushCrashHandler"

    if-nez p0, :cond_a

    const-string p0, "Action - reportCrashLog context is null"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {p0}, Lcn/jiguang/d/b;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    :try_start_11
    new-instance p0, Lcn/jiguang/b/b;

    invoke-direct {p0}, Lcn/jiguang/b/b;-><init>()V

    invoke-virtual {p0}, Lcn/jiguang/b/b;->start()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report crash e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    iget-object v0, p0, Lcn/jiguang/b/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/b/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_a
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    iget-boolean v0, p0, Lcn/jiguang/b/a;->a:Z

    const-string v1, "JPushCrashHandler"

    if-eqz v0, :cond_5d

    const-string v0, "enable crash report"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/jiguang/b/a;->a:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v2, p2}, Lcn/jiguang/b/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2}, Lcn/jiguang/b/a;->b(Landroid/content/Context;)V

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "jpush_uncaughtexception_file"

    invoke-static {v2, v3}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {v2, v0}, Lcn/jiguang/f/e;->a(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_3a

    :cond_35
    const-string v0, "handleException failed: context is null"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    :try_start_3a
    new-instance v0, Lcn/jiguang/b/b;

    invoke-direct {v0}, Lcn/jiguang/b/b;-><init>()V

    invoke-virtual {v0}, Lcn/jiguang/b/b;->start()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/b/b;->join(J)V
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_48
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_47} :catch_5b

    goto :goto_62

    :catchall_48
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "report crash e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :catch_5b
    nop

    goto :goto_62

    :cond_5d
    const-string v0, "disable crash report"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    iget-object v0, p0, Lcn/jiguang/b/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, p0, :cond_6b

    if-eqz v0, :cond_6b

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_6b
    return-void
.end method
