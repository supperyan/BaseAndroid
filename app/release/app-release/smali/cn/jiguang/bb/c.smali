.class public final Lcn/jiguang/bb/c;
.super Ljava/lang/Object;


# direct methods
.method public static a()I
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0xa

    rem-long v0, p0, v0

    long-to-int v1, v0

    packed-switch v1, :pswitch_data_64

    const-wide/16 v0, 0x8

    mul-long v0, v0, p0

    const-wide/16 v2, 0x4a

    :goto_e
    rem-long/2addr p0, v2

    add-long/2addr v0, p0

    goto :goto_50

    :pswitch_11
    const-wide/16 v0, 0x25

    mul-long v0, v0, p0

    const-wide/16 v2, 0x5b

    goto :goto_e

    :pswitch_18
    const-wide/16 v0, 0x1d

    mul-long v0, v0, p0

    const-wide/16 v2, 0x29

    goto :goto_e

    :pswitch_1f
    const-wide/16 v0, 0x1f

    mul-long v0, v0, p0

    const-wide/16 v2, 0x27

    goto :goto_e

    :pswitch_26
    const-wide/16 v0, 0x7

    mul-long v0, v0, p0

    const-wide/16 v2, 0x44

    goto :goto_e

    :pswitch_2d
    const-wide/16 v0, 0x11

    mul-long v0, v0, p0

    const-wide/16 v2, 0x31

    goto :goto_e

    :pswitch_34
    const-wide/16 v0, 0xd

    mul-long v0, v0, p0

    const-wide/16 v2, 0x60

    goto :goto_e

    :pswitch_3b
    const-wide/16 v0, 0x3

    mul-long v0, v0, p0

    const-wide/16 v2, 0x49

    goto :goto_e

    :pswitch_42
    const-wide/16 v0, 0x17

    mul-long v0, v0, p0

    const-wide/16 v2, 0xf

    goto :goto_e

    :pswitch_49
    const-wide/16 v0, 0x5

    mul-long v0, v0, p0

    const-wide/16 v2, 0x58

    goto :goto_e

    :goto_50
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "JCKP"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "DFA84B10B7ACDD25"

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v0, v0}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const-string p0, ""

    const-string v0, "Unexpected - failed to AES encrypt."

    invoke-static {p0, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcn/jiguang/bb/c;->c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static a([BJ)Ljava/lang/String;
    .registers 6

    invoke-static {p1, p2}, Lcn/jiguang/bb/c;->b(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    xor-long/2addr p1, v1

    invoke-static {p1, p2}, Lcn/jiguang/bb/c;->b(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljavax/crypto/spec/IvParameterSpec;
    .registers 5

    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-array p0, v1, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)[B
    .registers 5

    const-class v0, Lcn/jiguang/bb/c;

    monitor-enter v0

    :try_start_3
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a([BLjava/lang/String;Ljava/lang/String;Z)[B
    .registers 11

    const-class v0, Lcn/jiguang/bb/c;

    monitor-enter v0

    if-nez p1, :cond_8

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_8
    :try_start_8
    const-string v1, "UTF-8"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    div-int/2addr v6, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v1, v3

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v3

    array-length v3, p1

    invoke-static {p1, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p1, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcn/jiguang/bb/c;->a([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz p3, :cond_4f

    const/4 v4, 0x1

    :cond_4f
    invoke-virtual {v1, v4, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_58

    monitor-exit v0

    return-object p0

    :catchall_58
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(J)Ljava/lang/String;
    .registers 4

    const-wide v0, 0x38d7ea4c68000L

    rem-long/2addr p0, v0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "%016d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "DFA84B10B7ACDD25"

    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, v0, v0}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    const-string p0, ""

    const-string v0, "Unexpected - failed to AES decrypt."

    invoke-static {p0, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    const/4 p0, 0x0

    return-object p0
.end method
