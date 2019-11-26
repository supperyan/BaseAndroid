.class public Lcom/baidu/location/Jni;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x1

.field private static c:I = 0x2

.field private static d:I = 0xb

.field private static e:I = 0xc

.field private static f:I = 0xd

.field private static g:I = 0xe

.field private static h:I = 0xf

.field private static i:I = 0x400

.field private static j:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "locSDK8a"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/Jni;->j:Z

    :goto_d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native a([BI)Ljava/lang/String;
.end method

.method private static native b(DDII)Ljava/lang/String;
.end method

.method private static native c([BI)Ljava/lang/String;
.end method

.method public static coorEncrypt(DDLjava/lang/String;)[D
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_88

    sget-boolean v1, Lcom/baidu/location/Jni;->j:Z

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const/4 v1, -0x1

    const-string v2, "bd09"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget v1, Lcom/baidu/location/Jni;->a:I

    goto :goto_58

    :cond_17
    const-string v2, "bd09ll"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget v1, Lcom/baidu/location/Jni;->b:I

    goto :goto_58

    :cond_22
    const-string v2, "gcj02"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget v1, Lcom/baidu/location/Jni;->c:I

    goto :goto_58

    :cond_2d
    const-string v2, "gps2gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget v1, Lcom/baidu/location/Jni;->d:I

    goto :goto_58

    :cond_38
    const-string v2, "bd092gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget v1, Lcom/baidu/location/Jni;->e:I

    goto :goto_58

    :cond_43
    const-string v2, "bd09ll2gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    sget v1, Lcom/baidu/location/Jni;->f:I

    goto :goto_58

    :cond_4e
    const-string v2, "wgs842mc"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    sget v1, Lcom/baidu/location/Jni;->h:I

    :cond_58
    :goto_58
    const-string v2, "gcj2wgs"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_65

    const/16 v1, 0x10

    const/16 v6, 0x10

    goto :goto_66

    :cond_65
    move v6, v1

    :goto_66
    const v7, 0x20568

    move-wide v2, p0

    move-wide v4, p2

    :try_start_6b
    invoke-static/range {v2 .. v7}, Lcom/baidu/location/Jni;->b(DDII)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p2, p0, p1

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    aput-wide p2, v0, p1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    aput-wide p2, v0, p1
    :try_end_87
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6b .. :try_end_87} :catch_87

    :catch_87
    return-object v0

    :array_88
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static native ee(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static en1(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const-string v1, "err!"

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    if-nez p0, :cond_c

    const-string p0, "null"

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget v0, Lcom/baidu/location/Jni;->i:I

    new-array v0, v0, [B

    array-length v2, p0

    const/16 v3, 0x2e4

    if-le v2, v3, :cond_1b

    const/16 v2, 0x2e4

    :cond_1b
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v3, v2, :cond_2c

    aget-byte v5, p0, v3

    if-eqz v5, :cond_29

    aget-byte v5, p0, v3

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2c
    const p0, 0x20568

    :try_start_2f
    invoke-static {v0, p0}, Lcom/baidu/location/Jni;->a([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2f .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_38
    return-object v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    if-eqz v0, :cond_7

    const-string p0, "err!"

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/location/Jni;->en1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|tp=3"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const-string v1, "err!"

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    if-nez p0, :cond_c

    const-string p0, "null"

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const v0, 0x20568

    :try_start_13
    invoke-static {p0, v0}, Lcom/baidu/location/Jni;->c([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_1c
    return-object v1
.end method

.method public static encode3(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    const-string v0, ""

    :goto_14
    :try_start_14
    invoke-static {v0}, Lcom/baidu/location/Jni;->murmur(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_21
    return-object v1
.end method

.method private static native encodeNotLimit(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static encodeOfflineLocationUpdateRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const-string v1, "err!"

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_15

    :catch_13
    const-string v0, ""

    :goto_15
    const p0, 0x20568

    :try_start_18
    invoke-static {v0, p0}, Lcom/baidu/location/Jni;->encodeNotLimit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|tp=3"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeTp4(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const-string v1, "err!"

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_15

    :catch_13
    const-string v0, ""

    :goto_15
    const p0, 0x20568

    :try_start_18
    invoke-static {v0, p0}, Lcom/baidu/location/Jni;->ee(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|tp=4"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGpsSwiftRadius(FDD)D
    .registers 8

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    return-wide v1

    :cond_7
    :try_start_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/location/Jni;->gsr(FDD)D

    move-result-wide v1
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_b} :catch_b

    :catch_b
    return-wide v1
.end method

.method public static getldkaiv()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/baidu/location/Jni;->ldkaiv()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_f
    return-object v1
.end method

.method private static native gsr(FDD)D
.end method

.method private static native ldkaiv()Ljava/lang/String;
.end method

.method private static native murmur(Ljava/lang/String;)J
.end method
