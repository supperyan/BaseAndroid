.class public final Lcn/jiguang/f/k;
.super Ljava/lang/Object;


# annotations


# direct methods
.method public static a(Ljava/util/Collection;)Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-nez v2, :cond_11

    return-object v0

    :cond_11
    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_18
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_21

    :cond_34
    return-object v0
.end method

.method public static a(Ljava/io/Closeable;)V
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
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, p0, v0

    if-gtz v5, :cond_10

    return v4

    :cond_10
    cmp-long v0, v2, p0

    if-gtz v0, :cond_15

    return v4

    :cond_15
    add-long/2addr p0, p2

    cmp-long p2, v2, p0

    if-lez p2, :cond_1b

    return v4

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5

    if-eqz p0, :cond_28

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    const/16 v0, 0x400

    :try_start_a
    new-array v0, v0, [B

    :goto_c
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c

    :cond_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_20

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_20
    move-exception p0

    goto :goto_24

    :catchall_22
    move-exception p0

    move-object v1, v0

    :goto_24
    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string v0, "InputStream is null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw p0

    :goto_31
    goto :goto_30
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

    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_26

    :catchall_24
    move-exception p0

    move-object v2, v1

    :goto_26
    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public static b([B)[B
    .registers 7

    if-eqz p0, :cond_43

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_43

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    :try_start_11
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_35

    const/16 p0, 0x100

    :try_start_18
    new-array p0, p0, [B

    :goto_1a
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_25

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a

    :cond_25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_33

    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_33
    move-exception p0

    goto :goto_39

    :catchall_35
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    :goto_39
    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_43
    :goto_43
    return-object p0
.end method
