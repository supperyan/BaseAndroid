.class public Lcn/jpush/android/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jpush/android/a/b;

.field private static b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/jpush/android/a/b;
    .registers 2

    sget-object v0, Lcn/jpush/android/a/b;->a:Lcn/jpush/android/a/b;

    if-nez v0, :cond_17

    const-class v0, Lcn/jpush/android/a/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jpush/android/a/b;->a:Lcn/jpush/android/a/b;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/a/b;

    invoke-direct {v1}, Lcn/jpush/android/a/b;-><init>()V

    sput-object v1, Lcn/jpush/android/a/b;->a:Lcn/jpush/android/a/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcn/jpush/android/a/b;->a:Lcn/jpush/android/a/b;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_53

    sget-object v0, Lcn/jpush/android/a/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_53

    if-eqz p0, :cond_53

    const-class v0, Lcn/jpush/android/a/b;

    monitor-enter v0

    :try_start_f
    sget-object v1, Lcn/jpush/android/a/b;->b:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_50

    if-nez v1, :cond_4e

    :try_start_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_21

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_21
    invoke-static {p0}, Lcn/jpush/android/a/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcn/jpush/android/a/b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_4e

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_4e

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_37

    goto :goto_4e

    :catchall_37
    move-exception p0

    :try_start_38
    const-string v1, "CopyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCopyManager e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    sget-object p0, Lcn/jpush/android/a/b;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "CopyManager"

    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_e

    const-string p1, "sdk below 11, won\'t deal"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_a2

    return-void

    :cond_e
    :try_start_e
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GIONEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "LG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "give up because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    :cond_3b
    :try_start_3b
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "app"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "board"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string p1, "content is empty"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_59
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_80

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_63
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_78

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcn/jpush/android/j/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v2, 0x1

    goto :goto_78

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_78
    :goto_78
    if-nez v2, :cond_80

    const-string p1, "no target app"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_80
    invoke-static {p1}, Lcn/jpush/android/a/b;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b7

    invoke-static {p2}, Lcn/jpush/android/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jpush/android/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copy="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_3b .. :try_end_a1} :catchall_a2

    goto :goto_b7

    :catchall_a2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deal 57 e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    :goto_b7
    return-void
.end method
