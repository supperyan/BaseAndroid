.class public final Lcn/jiguang/u/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static final c:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/jiguang/u/b;

    invoke-direct {v0}, Lcn/jiguang/u/b;-><init>()V

    sput-object v0, Lcn/jiguang/u/a;->c:Ljava/io/FileFilter;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "ChinaTelecom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    goto :goto_25

    :cond_12
    const-string v0, "ChinaMobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    goto :goto_25

    :cond_1c
    const-string v0, "ChinaUnicom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    :cond_25
    :goto_25
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .registers 12

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, -0x1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, p1, :cond_66

    aget-byte v5, v1, v4

    const/16 v6, 0xa

    if-eq v5, v6, :cond_15

    if-nez v4, :cond_63

    :cond_15
    aget-byte v5, v1, v4

    if-ne v5, v6, :cond_1b

    add-int/lit8 v4, v4, 0x1

    :cond_1b
    move v5, v4

    :goto_1c
    if-ge v5, p1, :cond_63

    sub-int v7, v5, v4

    aget-byte v8, v1, v5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_63

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_60

    :goto_30
    if-ge v5, v0, :cond_5f

    aget-byte p0, v1, v5

    if-eq p0, v6, :cond_5f

    aget-byte p0, v1, v5

    const/16 p1, 0x30

    if-lt p0, p1, :cond_5c

    aget-byte p0, v1, v5

    const/16 v4, 0x39

    if-gt p0, v4, :cond_5c

    add-int/lit8 p0, v5, 0x1

    :goto_44
    if-ge p0, v0, :cond_51

    aget-byte v6, v1, p0

    if-lt v6, p1, :cond_51

    aget-byte v6, v1, p0

    if-gt v6, v4, :cond_51

    add-int/lit8 p0, p0, 0x1

    goto :goto_44

    :cond_51
    new-instance p1, Ljava/lang/String;

    sub-int/2addr p0, v5

    invoke-direct {p1, v1, v3, v5, p0}, Ljava/lang/String;-><init>([BIII)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_66

    return p0

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_5f
    return v2

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :catchall_66
    :cond_66
    return v2
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcn/jiguang/u/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcn/jiguang/u/a;->a:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-static {}, Lcn/jiguang/u/a;->f()V

    sget-object v0, Lcn/jiguang/u/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "0*0"

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_2f

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-string v1, "cn.jpush.preferences.v2"

    const/4 v2, 0x0

    const/16 v3, 0x35

    if-eq p1, v3, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    new-instance p1, Lcn/jiguang/g/a;

    const-string v4, "n_udp_report_device_info"

    invoke-direct {p1, v1, v4, v0}, Lcn/jiguang/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    new-instance p1, Lcn/jiguang/g/a;

    const-string v4, "udp_report_device_info"

    invoke-direct {p1, v1, v4, v0}, Lcn/jiguang/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {p0, p1}, Lcn/jiguang/u/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3f

    :cond_34
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    :cond_3f
    :goto_3f
    const-string v0, "JDeviceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "read deviceinfo:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {p0}, Lcn/jiguang/u/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_5c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "rom_type"

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {p0}, Lcn/jiguang/at/b;->a(Landroid/content/Context;)B

    move-result v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "regid"

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {p0}, Lcn/jiguang/at/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "rom_info"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "cmd"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "content"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_96} :catch_97

    return-object p0

    :catch_97
    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/jiguang/g/a;

    const-string v2, "cn.jpush.preferences.v2"

    const-string v3, "n_udp_report_device_info"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcn/jiguang/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/jiguang/g/a;

    invoke-virtual {v1, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "save device info:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JDeviceHelper"

    invoke-static {p1, p0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)D
    .registers 7

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_34

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1e

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_34

    :cond_1e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_28

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_34

    :cond_28
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_34
    :goto_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-wide/high16 v2, 0x4000

    if-eqz v1, :cond_4e

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v4, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_5b

    :cond_4e
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_5b
    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)J
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string p0, "\\s+"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_30

    int-to-long v0, p0

    return-wide v0

    :catchall_30
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcn/jiguang/u/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcn/jiguang/u/a;->b:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-static {}, Lcn/jiguang/u/a;->f()V

    sget-object v0, Lcn/jiguang/u/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()J
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-wide v0

    :catchall_1d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)J
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_25

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-wide v0

    :catchall_25
    :cond_25
    const-string p0, "MemTotal"

    invoke-static {p0}, Lcn/jiguang/u/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/u/a;->c:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_18

    :catchall_17
    const/4 v0, -0x1

    :goto_18
    return v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/u/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2c

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/t/b;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcn/jiguang/t/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    :cond_2b
    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_4
    :try_start_4
    invoke-static {}, Lcn/jiguang/u/a;->d()I

    move-result v4

    if-ge v2, v4, :cond_63

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_60

    const/16 v4, 0x80

    new-array v6, v4, [B

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_83

    :try_start_31
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    const/4 v5, 0x0

    :goto_35
    aget-byte v8, v6, v5

    const/16 v9, 0x30

    if-lt v8, v9, :cond_46

    aget-byte v8, v6, v5

    const/16 v9, 0x39

    if-gt v8, v9, :cond_46

    if-ge v5, v4, :cond_46

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_46
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v0, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v3, :cond_5d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_5d
    .catchall {:try_start_31 .. :try_end_5d} :catchall_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_5d} :catch_5d

    :catch_5d
    :catchall_5d
    :cond_5d
    :try_start_5d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_63
    if-ne v3, v1, :cond_82

    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_83

    :try_start_6c
    const-string v2, "cpu MHz"

    invoke-static {v2, v0}, Lcn/jiguang/u/a;->a(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v2
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_7d

    mul-int/lit16 v2, v2, 0x3e8

    if-le v2, v3, :cond_77

    goto :goto_78

    :cond_77
    move v2, v3

    :goto_78
    :try_start_78
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move v1, v2

    goto :goto_83

    :catchall_7d
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v2
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_83

    :cond_82
    move v1, v3

    :catchall_83
    :goto_83
    return v1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/ay/a;->a(Landroid/content/Context;)Lcn/jiguang/ay/a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "sim_slots"

    invoke-static {p0}, Lcn/jiguang/u/a;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appkey"

    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "apkversion"

    iget-object v4, v0, Lcn/jiguang/ay/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "systemversion"

    iget-object v4, v0, Lcn/jiguang/ay/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "modelnumber"

    iget-object v4, v0, Lcn/jiguang/ay/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "basebandversion"

    iget-object v4, v0, Lcn/jiguang/ay/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "buildnumber"

    iget-object v4, v0, Lcn/jiguang/ay/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    iget-object v4, v0, Lcn/jiguang/ay/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "PushSDKVer"

    invoke-static {v3}, Lcn/jiguang/o/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "StatisticSDKVer"

    const/4 v4, 0x1

    invoke-static {v4}, Lcn/jiguang/o/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ShareSDKVer"

    const/4 v4, 0x2

    invoke-static {v4}, Lcn/jiguang/o/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CoreSDKVer"

    const/4 v4, 0x3

    invoke-static {v4}, Lcn/jiguang/o/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "SspSDKVer"

    const/4 v4, 0x4

    invoke-static {v4}, Lcn/jiguang/o/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "VerificationSDKVer"

    const/4 v4, 0x5

    invoke-static {v4}, Lcn/jiguang/o/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdkver"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "installation"

    iget v3, v0, Lcn/jiguang/ay/a;->g:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "resolution"

    iget-object v3, v0, Lcn/jiguang/ay/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "business"

    invoke-static {}, Lcn/jiguang/at/b;->a()Lcn/jiguang/at/b;

    invoke-static {}, Lcn/jiguang/at/b;->b()S

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "device_id_status"

    sget v3, Lcn/jiguang/bb/a;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-static {p0}, Lcn/jiguang/d/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "android_id"

    iget-object v3, v0, Lcn/jiguang/ay/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mac_address"

    const-string v3, ""

    invoke-static {p0, v3}, Lcn/jiguang/f/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "serial_number"

    iget-object v0, v0, Lcn/jiguang/ay/a;->j:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e1} :catch_e2

    goto :goto_e3

    :catch_e2
    const/4 p0, 0x0

    :goto_e3
    return-object p0
.end method

.method private static f()V
    .registers 7

    const-string v0, "/proc/cpuinfo"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :catchall_22
    :cond_22
    :goto_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    const-string v4, "Processor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_7b

    const-string v5, ":"

    if-eqz v4, :cond_59

    :try_start_32
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_4a

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4a
    if-eqz v0, :cond_59

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_59
    const-string v4, "Hardware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5f
    .catchall {:try_start_32 .. :try_end_5f} :catchall_7b

    if-eqz v4, :cond_22

    :try_start_61
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    sput-object v3, Lcn/jiguang/u/a;->b:Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_22

    goto :goto_22

    :cond_78
    :try_start_78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7b

    :catchall_7b
    :cond_7b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/u/a;->a:Ljava/lang/String;

    return-void
.end method
