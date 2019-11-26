.class final Lcom/baidu/android/bbalbs/common/util/d;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2c

    const/16 p0, 0x2000

    :try_start_8
    new-array p0, p0, [C

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_f
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_f

    :cond_1a
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_27

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :goto_26
    return-object p0

    :catch_27
    move-exception p0

    goto :goto_2e

    :catchall_29
    move-exception p0

    move-object v1, v0

    goto :goto_3d

    :catch_2c
    move-exception p0

    move-object v1, v0

    :goto_2e
    :try_start_2e
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3c

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    return-object v0

    :catchall_3c
    move-exception p0

    :goto_3d
    if-eqz v1, :cond_47

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    goto :goto_49

    :goto_48
    throw p0

    :goto_49
    goto :goto_48
.end method

.method static a(Ljava/lang/Throwable;)V
    .registers 1

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p1, :cond_9

    goto :goto_10

    :cond_9
    const-string p1, "^[a-zA-Z0-9]{1,5}$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method static b(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/android/bbalbs/common/util/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method
