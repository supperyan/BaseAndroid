.class public final Lcn/jiguang/v/g;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/v/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/jiguang/v/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    const-string v0, "yyyyMMdd HH:mm:ss.SSS"

    invoke-static {v0}, Lcn/jiguang/v/g;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 4

    sget-object v0, Lcn/jiguang/v/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    if-nez v0, :cond_26

    sget-object v1, Lcn/jiguang/v/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcn/jiguang/v/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    if-nez v0, :cond_21

    new-instance v0, Lcn/jiguang/v/h;

    invoke-direct {v0, p0}, Lcn/jiguang/v/h;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/v/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5

    :catchall_5
    :cond_5
    return-void
.end method

.method public static a(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    const/4 v2, 0x1

    cmp-long v3, p0, v0

    if-gtz v3, :cond_c

    return v2

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p0, p2

    cmp-long p2, v0, p0

    if-lez p2, :cond_16

    return v2

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static a([B)[B
    .registers 4

    if-eqz p0, :cond_2d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2d

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    :try_start_11
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_22

    invoke-static {v0}, Lcn/jiguang/v/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcn/jiguang/v/g;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_26

    :catchall_24
    move-exception p0

    move-object v2, v1

    :goto_26
    invoke-static {v0}, Lcn/jiguang/v/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcn/jiguang/v/g;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_2d
    :goto_2d
    return-object p0
.end method
