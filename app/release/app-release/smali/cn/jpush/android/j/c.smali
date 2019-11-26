.class public Lcn/jpush/android/j/c;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)[B
    .registers 8

    const/4 v0, 0x6

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [B

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    array-length v2, p0

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_25
    array-length v4, p0

    if-ge v3, v4, :cond_37

    aget-byte v4, p0, v3

    array-length v5, p0

    add-int/2addr v5, v3

    array-length v6, v0

    rem-int/2addr v5, v6

    aget-byte v5, v0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_38

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_37
    return-object v2

    :catchall_38
    new-array p0, v1, [B

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcn/jpush/android/j/c;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
