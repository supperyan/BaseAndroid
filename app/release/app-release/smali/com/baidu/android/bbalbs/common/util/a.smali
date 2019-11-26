.class final Lcom/baidu/android/bbalbs/common/util/a;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [B

    fill-array-data v2, :array_30

    invoke-static {v2}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_3a

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/bbalbs/common/util/a;->e:Ljava/lang/String;

    return-void

    :array_30
    .array-data 0x1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_3a
    .array-data 0x1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->d:I

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method static b(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/a;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->d(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Z
    .registers 2

    const/16 v0, 0xe

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static c(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/a;
    .registers 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_87
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_94

    :try_start_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const-string p0, "ZGV2aWNlaWQ="

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "dmVy"

    invoke-static {v2}, Lcom/baidu/android/bbalbs/common/util/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_83
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_85

    const/4 v3, 0x2

    const-string v4, "0"

    const-string v5, ""

    move-object v6, v5

    move-object v5, v4

    const/4 v4, 0x2

    :goto_29
    :try_start_29
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_29

    :cond_3e
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_29

    :cond_49
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_29

    :cond_4e
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    const/4 p0, 0x0

    if-ne v4, v3, :cond_5f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_5f

    :cond_5b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_5f
    .catchall {:try_start_29 .. :try_end_5f} :catchall_83
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_5f} :catch_85

    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :goto_67
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    new-instance v0, Lcom/baidu/android/bbalbs/common/util/a;

    invoke-direct {v0}, Lcom/baidu/android/bbalbs/common/util/a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/baidu/android/bbalbs/common/util/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/baidu/android/bbalbs/common/util/a;->a(I)V

    invoke-virtual {v0}, Lcom/baidu/android/bbalbs/common/util/a;->d()Z

    move-result p0

    if-nez p0, :cond_81

    invoke-virtual {v0, v5}, Lcom/baidu/android/bbalbs/common/util/a;->b(Ljava/lang/String;)V

    :cond_81
    return-object v0

    :cond_82
    return-object v1

    :catchall_83
    move-exception p0

    goto :goto_89

    :catch_85
    nop

    goto :goto_95

    :catchall_87
    move-exception p0

    move-object v0, v1

    :goto_89
    if-eqz v0, :cond_93

    :try_start_8b
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    throw p0

    :catch_94
    move-object v0, v1

    :goto_95
    if-eqz v0, :cond_9f

    :try_start_97
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_9f
    :goto_9f
    return-object v1
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libcuid.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/a;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->c(Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/bbalbs/common/util/a;->e:Ljava/lang/String;

    sget-object v2, Lcom/baidu/android/bbalbs/common/util/a;->e:Ljava/lang/String;

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

.method private static g(Ljava/lang/String;)Ljava/lang/String;
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
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/bbalbs/common/util/a;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/a;->b:Ljava/lang/String;

    return-void
.end method

.method c()Z
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/android/bbalbs/common/util/a;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const-string v0, "O"

    :goto_9
    iput-object v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->b:Ljava/lang/String;

    return v1

    :cond_c
    invoke-virtual {p0}, Lcom/baidu/android/bbalbs/common/util/a;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "0"

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->c:I

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/a;->b(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/a;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
