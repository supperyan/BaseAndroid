.class public final Lcn/jiguang/ao/d;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/jiguang/ao/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jiguang/ao/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/jiguang/ao/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2d

    invoke-static {p1}, Lcn/jiguang/ao/d;->b(Ljava/io/File;)V

    :cond_2d
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/f/e;->a(Ljava/io/File;Ljava/lang/String;)Z

    return-object p1
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcn/jiguang/ao/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    new-instance v0, Lcn/jiguang/f/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "jpush_stat_history"

    invoke-direct {v0, v1, v2, v3, v2}, Lcn/jiguang/f/f;-><init>(ZZLjava/lang/String;I)V

    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileFilter;

    aput-object v0, v4, v1

    new-instance v0, Lcn/jiguang/ao/e;

    invoke-direct {v0}, Lcn/jiguang/ao/e;-><init>()V

    aput-object v0, v4, v2

    invoke-static {p0, v4}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_87

    array-length v0, p0

    :goto_24
    if-ge v1, v0, :cond_87

    aget-object v2, p0, v1

    :try_start_28
    new-instance v4, Ljava/io/File;

    const-string v5, "nowrap"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcn/jiguang/f/e;->c(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6c

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_6c
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_70

    goto :goto_84

    :catchall_70
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "updateByAppKey"

    invoke-static {v4, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_87
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload space="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/ao/d;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportHistory"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcn/jiguang/ao/d;->c(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {p1}, Lcn/jiguang/ao/d;->d(Ljava/io/File;)V

    invoke-static {p0, p1}, Lcn/jiguang/ao/d;->b(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {p1}, Lcn/jiguang/ao/d;->c(Ljava/io/File;)V

    return-void
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/FileFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-gtz v2, :cond_13

    aget-object v4, p1, v1

    invoke-static {v4}, Lcn/jiguang/f/f;->a(Ljava/lang/String;)Lcn/jiguang/f/f;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    new-instance p1, Lcn/jiguang/f/f;

    const-string v2, "jpush_stat_history"

    invoke-direct {p1, v1, v3, v2, v3}, Lcn/jiguang/f/f;-><init>(ZZLjava/lang/String;I)V

    aput-object p1, v0, v1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_31

    array-length p1, p0

    :goto_27
    if-ge v1, p1, :cond_31

    aget-object v0, p0, v1

    invoke-static {v0}, Lcn/jiguang/f/e;->c(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_31
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 2

    if-eqz p0, :cond_7

    sget-object v0, Lcn/jiguang/ao/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method private static b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "app_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sdk_ver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcn/jiguang/internal/ActionManager;->getInstance()Lcn/jiguang/internal/ActionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/jiguang/internal/ActionManager;->wrapSdkVersionInfo(Lorg/json/JSONObject;)Z

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_3c
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcn/jiguang/ao/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "ReportHistory"

    const-string v0, "isRunning, no need report"

    invoke-static {p0, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v0, Lcn/jiguang/ao/f;

    invoke-direct {v0, p0}, Lcn/jiguang/ao/f;-><init>(Landroid/content/Context;)V

    const-string p0, "REPORT_HISTORY"

    invoke-static {p0, v0}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;)V
    .registers 10

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ReportHistory"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1c

    const-string p0, "can\'t get uid, skip upload history"

    invoke-static {v2, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/FileFilter;

    sget-object v1, Lcn/jiguang/f/f;->a:Lcn/jiguang/f/f;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d0

    array-length v1, v0

    if-nez v1, :cond_2f

    goto/16 :goto_d0

    :cond_2f
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v4, v0

    :goto_35
    if-ge v3, v4, :cond_4d

    aget-object v5, v0, v3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lcn/jiguang/ao/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_4d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    return-void

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "process space="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/ao/d;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " history["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcn/jiguang/ao/g;

    invoke-direct {p1}, Lcn/jiguang/ao/g;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_86
    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_92
    invoke-static {v0}, Lcn/jiguang/ao/c;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_9c

    invoke-static {v0}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    goto :goto_86

    :cond_9c
    invoke-static {v0}, Lcn/jiguang/ao/d;->b(Ljava/io/File;)V

    invoke-static {v1}, Lcn/jiguang/ao/k;->a(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "report history types="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v0, v4}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;Ljava/util/Set;Lorg/json/JSONObject;Ljava/io/File;Lcn/jiguang/api/ReportCallBack;)I

    move-result v0
    :try_end_b9
    .catchall {:try_start_92 .. :try_end_b9} :catchall_bd

    const/4 v1, -0x2

    if-ne v0, v1, :cond_86

    return-void

    :catchall_bd
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "upload e:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    :cond_d0
    :goto_d0
    return-void
.end method

.method private static b(Ljava/io/File;)V
    .registers 3

    if-eqz p0, :cond_c

    sget-object v0, Lcn/jiguang/ao/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/ao/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/io/File;)V
    .registers 8

    const-string v0, "ReportHistory"

    :try_start_2
    invoke-static {p0}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_11

    goto :goto_13

    :cond_11
    const/4 v3, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v3, 0x1

    :goto_14
    if-eqz v3, :cond_17

    return-void

    :cond_17
    new-instance v3, Ljava/io/File;

    const-string v4, "nowrap"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-array v4, v2, [Ljava/io/FileFilter;

    sget-object v5, Lcn/jiguang/f/f;->a:Lcn/jiguang/f/f;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_7c

    array-length v4, v3

    if-nez v4, :cond_2e

    goto :goto_7c

    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "process space="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/ao/d;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nowrap["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "tmp"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget-object p1, v3, v1

    invoke-static {p1, p0}, Lcn/jiguang/ao/c;->a(Ljava/io/File;Lorg/json/JSONObject;)Lcn/jiguang/ao/c;

    move-result-object p1

    :goto_5e
    array-length v1, v3

    if-ge v2, v1, :cond_76

    aget-object v1, v3, v2

    invoke-static {v1, p0}, Lcn/jiguang/ao/c;->a(Ljava/io/File;Lorg/json/JSONObject;)Lcn/jiguang/ao/c;

    move-result-object v1

    if-eqz v1, :cond_73

    if-nez p1, :cond_6c

    goto :goto_72

    :cond_6c
    invoke-virtual {p1, v1, v4}, Lcn/jiguang/ao/c;->a(Lcn/jiguang/ao/c;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_73

    :goto_72
    move-object p1, v1

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_76
    if-eqz p1, :cond_7c

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v4}, Lcn/jiguang/ao/c;->a(Lcn/jiguang/ao/c;Ljava/io/File;)Z
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "processNowrap e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/io/File;)V
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/io/FileFilter;

    sget-object v2, Lcn/jiguang/f/f;->a:Lcn/jiguang/f/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_70

    array-length v2, v1

    if-gt v2, v0, :cond_12

    goto :goto_70

    :cond_12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcn/jiguang/ao/h;

    invoke-direct {v2}, Lcn/jiguang/ao/h;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    int-to-long v5, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v3, v5

    const/high16 v5, 0x10

    if-le v3, v5, :cond_22

    invoke-static {v4}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    goto :goto_22

    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, v1

    if-ge v2, v3, :cond_70

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trim space history="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/ao/d;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReportHistory"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-void
.end method

.method private static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcn/jiguang/ao/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/jiguang/ao/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object p0, Lcn/jiguang/ao/d;->b:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_7f

    monitor-exit v0

    return-object p0

    :cond_f
    :try_start_f
    sget-object v1, Lcn/jiguang/ao/d;->a:Ljava/lang/String;

    if-nez v1, :cond_48

    invoke-static {p0}, Lcn/jiguang/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v1, ""

    :goto_29
    sput-object v1, Lcn/jiguang/ao/d;->a:Ljava/lang/String;

    goto :goto_48

    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_48
    :goto_48
    sget-object v1, Lcn/jiguang/ao/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jpush_stat_history"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/ao/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    :cond_5d
    const-string v1, "jpush_stat_history"

    :goto_5f
    invoke-static {p0, v1}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/jiguang/ao/d;->b:Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_f .. :try_end_6b} :catchall_7f

    monitor-exit v0

    return-object p0

    :cond_6d
    :try_start_6d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "jpush_stat_history"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/ao/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_7f

    monitor-exit v0

    return-object p0

    :catchall_7f
    move-exception p0

    monitor-exit v0

    goto :goto_83

    :goto_82
    throw p0

    :goto_83
    goto :goto_82
.end method

.method private static d(Ljava/io/File;)V
    .registers 11

    const-string v0, "ReportHistory"

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "tmp"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/io/FileFilter;

    sget-object v4, Lcn/jiguang/f/f;->a:Lcn/jiguang/f/f;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d6

    array-length v3, v1

    if-nez v3, :cond_1c

    goto/16 :goto_d6

    :cond_1c
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    array-length v4, v1

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v4, :cond_3b

    aget-object v7, v1, v6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lcn/jiguang/ao/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_3b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    return-void

    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "process space="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/ao/d;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tmp["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/ao/d;->b()Ljava/util/Set;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-array v2, v2, [Ljava/io/FileFilter;

    sget-object v6, Lcn/jiguang/f/f;->a:Lcn/jiguang/f/f;

    aput-object v6, v2, v5

    invoke-static {p0, v2}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/f/e;->a([Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jiguang/ao/c;->a(Ljava/io/File;Ljava/util/Set;)Lcn/jiguang/ao/c;

    move-result-object v2

    if-eqz v2, :cond_8e

    iget-object v5, v2, Lcn/jiguang/ao/c;->b:Lorg/json/JSONObject;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_92
    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3, v1}, Lcn/jiguang/ao/c;->a(Ljava/io/File;Ljava/util/Set;)Lcn/jiguang/ao/c;

    move-result-object v3

    if-eqz v3, :cond_92

    iget-object v5, v3, Lcn/jiguang/ao/c;->b:Lorg/json/JSONObject;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jiguang/ao/c;

    if-nez v6, :cond_b6

    :goto_b2
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_b6
    invoke-virtual {v6, v3, p0}, Lcn/jiguang/ao/c;->a(Lcn/jiguang/ao/c;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_92

    goto :goto_b2

    :cond_bd
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/ao/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcn/jiguang/ao/c;->a(Lcn/jiguang/ao/c;Ljava/io/File;)Z
    :try_end_d5
    .catchall {:try_start_2 .. :try_end_d5} :catchall_d7

    goto :goto_c5

    :cond_d6
    :goto_d6
    return-void

    :catchall_d7
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processTmp e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "0"

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/jiguang/ao/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-object p0

    :catchall_31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
