.class final Lcom/baidu/android/bbalbs/common/util/b;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/16 v2, 0xc

    new-array v3, v2, [B

    fill-array-data v3, :array_32

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v5, 0x1

    aput-object v3, v1, v5

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/b;->a([[B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/android/bbalbs/common/util/b;->e:Ljava/lang/String;

    new-array v0, v0, [[B

    new-array v1, v2, [B

    fill-array-data v1, :array_46

    aput-object v1, v0, v4

    new-array v1, v2, [B

    fill-array-data v1, :array_50

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/b;->a([[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/bbalbs/common/util/b;->f:Ljava/lang/String;

    return-void

    :array_32
    .array-data 0x1
        0x51t
        0x48t
        0x74t
        0x4ft
        0x4bt
        0x48t
        0x45t
        0x34t
        0x4ct
        0x33t
        0x67t
        0x3dt
    .end array-data

    :array_3c
    .array-data 0x1
        0x52t
        0x33t
        0x68t
        0x5at
        0x53t
        0x7at
        0x41t
        0x69t
        0x65t
        0x31t
        0x6bt
        0x3dt
    .end array-data

    :array_46
    .array-data 0x1
        0x4ct
        0x43t
        0x4dt
        0x35t
        0x4dt
        0x46t
        0x5at
        0x49t
        0x51t
        0x6bt
        0x6bt
        0x3dt
    .end array-data

    :array_50
    .array-data 0x1
        0x5at
        0x69t
        0x6ct
        0x79t
        0x4ft
        0x44t
        0x64t
        0x51t
        0x56t
        0x79t
        0x59t
        0x3dt
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/android/bbalbs/common/util/b;->c:I

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 2

    invoke-static {p0, p1}, Lcom/baidu/android/bbalbs/common/util/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/baidu/android/bbalbs/common/util/a;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 3

    if-eqz p0, :cond_16

    new-instance v0, Lcom/baidu/android/bbalbs/common/util/b;

    invoke-direct {v0}, Lcom/baidu/android/bbalbs/common/util/b;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/android/bbalbs/common/util/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/bbalbs/common/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/android/bbalbs/common/util/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/android/bbalbs/common/util/b;->b(Ljava/lang/String;)V

    return-object v0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "arg non-nullable is expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs a([[B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->d(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 7

    new-instance v0, Lcom/baidu/android/bbalbs/common/util/b;

    invoke-direct {v0}, Lcom/baidu/android/bbalbs/common/util/b;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-ge v1, v3, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_36

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/android/bbalbs/common/util/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.baidu"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/baidu/android/bbalbs/common/a/c;->a([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/android/bbalbs/common/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/android/bbalbs/common/util/b;->b(Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p0}, Lcom/baidu/android/bbalbs/common/util/b;->a(I)V

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ZGV2aWNlaWQ="

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/bbalbs/common/util/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ZmxhZw=="

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/bbalbs/common/util/b;->b:Ljava/lang/String;

    if-nez v2, :cond_1e

    const-string v2, "0"

    goto :goto_20

    :cond_1e
    iget-object v2, p0, Lcom/baidu/android/bbalbs/common/util/b;->b:Ljava/lang/String;

    :goto_20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dmVy"

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/baidu/android/bbalbs/common/util/b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "c2Rr"

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/baidu/android/bbalbs/common/util/b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_40} :catch_41

    return-object v0

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static c(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ZmxhZw=="

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "0"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ZGV2aWNlaWQ="

    invoke-static {v2}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c2Rr"

    invoke-static {v3}, Lcom/baidu/android/bbalbs/common/util/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    new-instance v3, Lcom/baidu/android/bbalbs/common/util/b;

    invoke-direct {v3}, Lcom/baidu/android/bbalbs/common/util/b;-><init>()V

    invoke-virtual {v3, v2}, Lcom/baidu/android/bbalbs/common/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/baidu/android/bbalbs/common/util/b;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/baidu/android/bbalbs/common/util/b;->a(I)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_42} :catch_43

    return-object v3

    :catch_43
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_47
    return-object v1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "XL5g0WZAHpIaKspIHIHYg5k"

    invoke-static {p0, v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p1}, Lcom/baidu/android/bbalbs/common/util/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/baidu/android/bbalbs/common/util/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_19
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .registers 6

    invoke-direct {p0}, Lcom/baidu/android/bbalbs/common/util/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_a
    const-string v3, "libcuid_v3.so"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_28

    if-eqz v2, :cond_24

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-static {p1}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    const/4 p1, 0x1

    return p1

    :catchall_26
    move-exception p1

    goto :goto_37

    :catch_28
    move-exception p1

    :try_start_29
    invoke-static {p1}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    if-eqz v2, :cond_36

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    invoke-static {p1}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    return v1

    :goto_37
    if-eqz v2, :cond_41

    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw p1
.end method

.method static d(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->c(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libcuid_v3.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "XL5g0WZAHpIaKspIHIHYg5k"

    invoke-static {p0, v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    sget-object v0, Lcom/baidu/android/bbalbs/common/util/b;->e:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/bbalbs/common/util/b;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/baidu/android/bbalbs/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/baidu/android/bbalbs/common/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    goto :goto_1e

    :catch_1d
    move-exception p0

    :goto_1e
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/bbalbs/common/util/b;->e:Ljava/lang/String;

    sget-object v2, Lcom/baidu/android/bbalbs/common/util/b;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/baidu/android/bbalbs/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    sget-object v0, Lcom/baidu/android/bbalbs/common/util/b;->f:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/bbalbs/common/util/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/baidu/android/bbalbs/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/baidu/android/bbalbs/common/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    goto :goto_1e

    :catch_1d
    move-exception p0

    :goto_1e
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/bbalbs/common/util/b;->f:Ljava/lang/String;

    sget-object v2, Lcom/baidu/android/bbalbs/common/util/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/baidu/android/bbalbs/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/android/bbalbs/common/util/b;->b:Ljava/lang/String;

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/bbalbs/common/util/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/android/bbalbs/common/util/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/bbalbs/common/util/b;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/b;->a:Ljava/lang/String;

    return-void
.end method

.method a(Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/bbalbs/common/util/b;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/b;->b:Ljava/lang/String;

    return-void
.end method
