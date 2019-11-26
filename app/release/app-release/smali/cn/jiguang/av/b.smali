.class public final Lcn/jiguang/av/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a()I
    .registers 1

    sget-object v0, Lcn/jiguang/av/b;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/jiguang/av/b;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_f

    invoke-static {v0, v1}, Lcn/jiguang/bb/c;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {}, Lcn/jiguang/av/b;->a()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcn/jiguang/bb/c;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_9
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    return-object p0

    :catchall_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(IBJLjava/lang/String;)[B
    .registers 5

    new-instance p0, Lcn/jiguang/ay/b;

    const/16 p1, 0x5000

    invoke-direct {p0, p1}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/jiguang/ay/b;->b(I)V

    invoke-virtual {p0, p1}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {p0, p2, p3}, Lcn/jiguang/ay/b;->b(J)V

    invoke-virtual {p0, p4}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(JIJS)[B
    .registers 8

    new-instance p5, Lcn/jiguang/ay/b;

    const/16 v0, 0x5000

    invoke-direct {p5, v0}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcn/jiguang/ay/b;->b(I)V

    const/4 v1, 0x4

    invoke-virtual {p5, v1}, Lcn/jiguang/ay/b;->a(I)V

    const/4 v1, 0x2

    invoke-virtual {p5, v1}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {p5, p0, p1}, Lcn/jiguang/ay/b;->b(J)V

    int-to-long p0, p2

    invoke-virtual {p5, p0, p1}, Lcn/jiguang/ay/b;->a(J)V

    invoke-virtual {p5, p3, p4}, Lcn/jiguang/ay/b;->b(J)V

    const/4 p0, 0x1

    invoke-virtual {p5, p0}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {p5}, Lcn/jiguang/ay/b;->a()I

    move-result p0

    invoke-virtual {p5, p0, v0}, Lcn/jiguang/ay/b;->b(II)V

    invoke-virtual {p5}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 19

    new-instance v0, Lcn/jiguang/ay/b;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jiguang/ay/b;->b(I)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcn/jiguang/ay/b;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/jiguang/ay/b;->a(I)V

    move-wide v2, p0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/ay/b;->b(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/ay/b;->a(J)V

    move-wide v2, p2

    invoke-virtual {v0, p2, p3}, Lcn/jiguang/ay/b;->b(J)V

    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v0, v1}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v0, v1}, Lcn/jiguang/ay/b;->b(I)V

    move-object v2, p4

    invoke-virtual {v0, p4}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    move-object v2, p6

    invoke-virtual {v0, p6}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    move-object v2, p5

    invoke-virtual {v0, p5}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/jiguang/ay/b;->a(I)V

    move-wide v2, p7

    invoke-virtual {v0, p7, p8}, Lcn/jiguang/ay/b;->a(J)V

    move v2, p9

    invoke-virtual {v0, p9}, Lcn/jiguang/ay/b;->a(I)V

    move v2, p10

    invoke-virtual {v0, p10}, Lcn/jiguang/ay/b;->a(I)V

    move-object v2, p11

    invoke-virtual {v0, p11}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    move-object/from16 v2, p12

    invoke-virtual {v0, v2}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    move-object/from16 v2, p13

    invoke-virtual {v0, v2}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    move-object/from16 v2, p14

    invoke-virtual {v0, v2}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/ay/b;->a()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcn/jiguang/ay/b;->b(II)V

    invoke-virtual {v0}, Lcn/jiguang/ay/b;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)[B
    .registers 13

    invoke-static {}, Lcn/jiguang/av/b;->a()I

    move-result v0

    new-instance v1, Lcn/jiguang/ay/b;

    const/16 v2, 0x5000

    invoke-direct {v1, v2}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jiguang/ay/b;->b(I)V

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v1, v2}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/ay/b;->b(J)V

    int-to-long p0, v0

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/ay/b;->a(J)V

    const-wide/16 p0, 0x0

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/ay/b;->b(J)V

    invoke-virtual {v1, p2}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v1, p5}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p6, p7}, Lcn/jiguang/ay/b;->a(J)V

    invoke-virtual {v1, p8}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jiguang/ay/b;->a()I

    move-result p0

    invoke-virtual {v1, p0, v2}, Lcn/jiguang/ay/b;->b(II)V

    invoke-virtual {v1}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;[J)[B
    .registers 9

    const-string v0, "CorePackage"

    new-instance v1, Lcn/jiguang/ay/b;

    const/16 v2, 0x5000

    invoke-direct {v1, v2}, Lcn/jiguang/ay/b;-><init>(I)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v3, "device_id"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p3, :cond_29

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    array-length p0, p3

    const/4 p1, 0x0

    :goto_1f
    if-ge p1, p0, :cond_29

    aget-wide v3, p3, p1

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_29
    const-string p0, "uids"

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "attach uids:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_4f

    return-object p0

    :catchall_4f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "packageAttachInfo:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;IIJ[BJ)[B
    .registers 10

    new-instance v0, Lcn/jiguang/ay/b;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Lcn/jiguang/ay/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jiguang/ay/b;->b(I)V

    invoke-virtual {v0, p2}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v0, p1}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {v0, p3, p4}, Lcn/jiguang/ay/b;->b(J)V

    sget p1, Lcn/jiguang/internal/JConstants;->tcpSessionId:I

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcn/jiguang/ay/b;->a(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "packageSendData uid:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CorePackage"

    invoke-static {p2, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p3, 0x0

    cmp-long p1, p6, p3

    if-nez p1, :cond_48

    invoke-static {p0}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide p6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "use mine uid:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v0, p6, p7}, Lcn/jiguang/ay/b;->b(J)V

    invoke-virtual {v0, p5}, Lcn/jiguang/ay/b;->a([B)V

    invoke-virtual {v0}, Lcn/jiguang/ay/b;->a()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcn/jiguang/ay/b;->b(II)V

    invoke-virtual {v0}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/av/b;->a(Landroid/content/Context;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;[B)[B
    .registers 14

    const-string v0, "CorePackage"

    if-eqz p1, :cond_ab

    array-length v1, p1

    if-nez v1, :cond_9

    goto/16 :goto_ab

    :cond_9
    array-length v1, p1

    const/16 v2, 0x18

    sub-int/2addr v1, v2

    new-array v3, v2, [B

    new-array v4, v1, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Lcn/jiguang/av/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :try_start_1c
    sget-byte p1, Lcn/jiguang/internal/JConstants;->tcpAlgorithm:B

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "encryptBuf algorithm="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x10

    if-ne p1, v1, :cond_68

    new-instance v1, Lcn/jiguang/bb/b;

    invoke-direct {v1}, Lcn/jiguang/bb/b;-><init>()V

    invoke-static {p0}, Lcn/jiguang/bb/b;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v9, "SM4"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "seed="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "utf-8"

    invoke-virtual {v7, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, v4, v8, p0}, Lcn/jiguang/bb/b;->a([B[B[B)[B

    move-result-object p0

    goto :goto_70

    :cond_68
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p0, v1, v6}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    :goto_70
    array-length v1, p0

    add-int/2addr v1, v2

    new-array v4, v1, [B

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p0

    invoke-static {p0, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 p0, v1, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v4, v5

    and-int/lit16 p0, v1, 0xff

    int-to-byte p0, p0

    aput-byte p0, v4, v6

    aget-byte p0, v4, v5

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, v4, v5

    const/4 p0, 0x4

    aput-byte p1, v4, p0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_91} :catch_92

    return-object v4

    :catch_92
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "encrpt data failed"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_ab
    :goto_ab
    return-object p1
.end method

.method public static a(Ljava/lang/String;[J)[B
    .registers 8

    new-instance v0, Lcn/jiguang/ay/b;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Lcn/jiguang/ay/b;-><init>(I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    const-string v2, "device_id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    if-gtz v3, :cond_22

    aget-wide v4, p1, v2

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_22
    const-string p1, "uids"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_33

    return-object p0

    :catchall_33
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "packageDetachInfo:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CorePackage"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(SSLjava/lang/String;)[B
    .registers 4

    new-instance p1, Lcn/jiguang/ay/b;

    const/16 v0, 0x5000

    invoke-direct {p1, v0}, Lcn/jiguang/ay/b;-><init>(I)V

    invoke-virtual {p1, p0}, Lcn/jiguang/ay/b;->a(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcn/jiguang/ay/b;->a(I)V

    invoke-virtual {p1, p2}, Lcn/jiguang/ay/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/ay/b;->b()[B

    move-result-object p0

    return-object p0
.end method
