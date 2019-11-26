.class public Lcn/jpush/android/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/f/a$a;
    }
.end annotation


# direct methods
.method private static a(I)I
    .registers 4

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, -0x1

    const/4 v2, 0x2

    if-eq p0, v0, :cond_10

    if-eq p0, v1, :cond_e

    if-eq p0, v2, :cond_e

    const/4 p0, 0x3

    return p0

    :cond_e
    const/4 p0, 0x4

    return p0

    :cond_10
    return v2

    :cond_11
    return v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 6

    const-string v0, "ChannelHelper"

    const/4 v1, 0x0

    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_a

    return-object v1

    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_1f

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    goto :goto_20

    :cond_1f
    move-object p0, v1

    :goto_20
    if-eqz p0, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel has created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_37
    const-string p0, "not found channed id from user set,will use sdk default channel ID"

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    goto :goto_52

    :catchall_3d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config channelID error,will use sdk default channel ID:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-object v1
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 14

    const-string v0, "ChannelHelper"

    const-string v1, "HIGH"

    const-string v2, "LOW"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-eq p1, v5, :cond_19

    if-eq p1, v4, :cond_17

    if-eq p1, v6, :cond_15

    if-eq p1, v3, :cond_15

    const-string v7, "DEFAULT"

    goto :goto_1b

    :cond_15
    move-object v7, v1

    goto :goto_1b

    :cond_17
    move-object v7, v2

    goto :goto_1b

    :cond_19
    const-string v7, "MIN"

    :goto_1b
    const-string v8, ""

    :try_start_1d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jg_channel_name_p_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_67

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from resource by name:"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_63
    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not found string value from resource by name:"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_1d .. :try_end_78} :catchall_79

    goto :goto_63

    :catchall_79
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get resource channel ID failed:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_99

    return-object v8

    :cond_99
    :try_start_99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v7, "zh"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_a8

    goto :goto_c2

    :catchall_a8
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get language failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_c2
    if-eq p1, v5, :cond_d8

    if-eq p1, v4, :cond_d8

    if-eq p1, v6, :cond_d2

    if-eq p1, v3, :cond_d2

    if-eqz p0, :cond_cf

    const-string p0, "\u666e\u901a"

    goto :goto_dd

    :cond_cf
    const-string p0, "NORMAL"

    goto :goto_dd

    :cond_d2
    if-eqz p0, :cond_d6

    const-string v1, "\u91cd\u8981"

    :cond_d6
    move-object p0, v1

    goto :goto_dd

    :cond_d8
    if-eqz p0, :cond_dc

    const-string v2, "\u4e0d\u91cd\u8981"

    :cond_dc
    move-object p0, v2

    :goto_dd
    return-object p0
.end method

.method private static a(Landroid/content/Context;II)Ljava/lang/String;
    .registers 10

    invoke-static {p1}, Lcn/jpush/android/f/a;->a(I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p1}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channelId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",channelName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChannelHelper"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_4a

    return-object v6

    :cond_4a
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcn/jpush/android/f/a$a;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/f/a$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/jpush/android/f/a$a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    if-eqz v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_35
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v1, v0}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;II)Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;II)Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V
    .registers 14

    new-instance v6, Lcn/jpush/android/f/a$a;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/jpush/android/f/a$a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-static {p0, v6}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Lcn/jpush/android/f/a$a;)V

    invoke-static {p1, v6}, Lcn/jpush/android/f/b;->a(Landroid/app/Notification$Builder;Lcn/jpush/android/f/a$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V
    .registers 14

    new-instance v6, Lcn/jpush/android/f/a$a;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/jpush/android/f/a$a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-static {p0, v6}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Lcn/jpush/android/f/a$a;)V

    invoke-static {p1, v6}, Lcn/jpush/android/f/b;->a(Landroid/app/Notification;Lcn/jpush/android/f/a$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/f/a$a;)V
    .registers 11

    invoke-static {p0}, Lcn/jpush/android/f/b;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ChannelHelper"

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1b

    const-string v0, "in silence push time,change defaults to 0"

    invoke-static {v2, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    iput v1, p1, Lcn/jpush/android/f/a$a;->e:I

    iput-object v5, p1, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    goto :goto_56

    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_56

    iget-object v0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcn/jpush/android/f/a$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    iput p0, p1, Lcn/jpush/android/f/a$a;->d:I

    iget p0, p1, Lcn/jpush/android/f/a$a;->d:I

    invoke-static {p0}, Lcn/jpush/android/f/a;->b(I)I

    move-result p0

    iput p0, p1, Lcn/jpush/android/f/a$a;->c:I

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    iget-object p0, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    if-eqz p0, :cond_53

    iget-object p0, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    :cond_53
    iput-boolean v4, p1, Lcn/jpush/android/f/a$a;->h:Z

    return-void

    :cond_56
    :goto_56
    iget v0, p1, Lcn/jpush/android/f/a$a;->c:I

    const/4 v6, -0x2

    if-eq v0, v6, :cond_74

    iget v0, p1, Lcn/jpush/android/f/a$a;->c:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_61

    goto :goto_74

    :cond_61
    iget v0, p1, Lcn/jpush/android/f/a$a;->c:I

    if-ltz v0, :cond_78

    iget v0, p1, Lcn/jpush/android/f/a$a;->e:I

    if-nez v0, :cond_78

    iget-object v0, p1, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    iput v7, p1, Lcn/jpush/android/f/a$a;->c:I

    goto :goto_78

    :cond_74
    :goto_74
    iput v1, p1, Lcn/jpush/android/f/a$a;->e:I

    iput-object v5, p1, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    :cond_78
    :goto_78
    iget v0, p1, Lcn/jpush/android/f/a$a;->e:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p1, Lcn/jpush/android/f/a$a;->e:I

    iget v0, p1, Lcn/jpush/android/f/a$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    iput v4, p1, Lcn/jpush/android/f/a$a;->c:I

    :cond_85
    iget v0, p1, Lcn/jpush/android/f/a$a;->c:I

    invoke-static {v0}, Lcn/jpush/android/f/a;->a(I)I

    move-result v0

    iput v0, p1, Lcn/jpush/android/f/a$a;->d:I

    iget v0, p1, Lcn/jpush/android/f/a$a;->d:I

    invoke-static {v0}, Lcn/jpush/android/f/a;->b(I)I

    move-result v0

    iput v0, p1, Lcn/jpush/android/f/a$a;->c:I

    iget-object v0, p1, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jpush/android/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    iget-object v0, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    if-eqz v0, :cond_a7

    iget v0, p1, Lcn/jpush/android/f/a$a;->e:I

    and-int/2addr v0, v6

    iput v0, p1, Lcn/jpush/android/f/a$a;->e:I

    goto :goto_a9

    :cond_a7
    iput-object v5, p1, Lcn/jpush/android/f/a$a;->f:Ljava/lang/String;

    :goto_a9
    iget-object v0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-static {p1}, Lcn/jpush/android/f/a;->a(Lcn/jpush/android/f/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_d2

    iget-object v0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcn/jpush/android/f/a$a;->b:Ljava/lang/CharSequence;

    iput-boolean v4, p1, Lcn/jpush/android/f/a$a;->h:Z

    return-void

    :cond_d2
    iget-object v0, p1, Lcn/jpush/android/f/a$a;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    iget v0, p1, Lcn/jpush/android/f/a$a;->c:I

    invoke-static {p0, v0}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/jpush/android/f/a$a;->b:Ljava/lang/CharSequence;

    :cond_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",channelName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/jpush/android/f/a$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " soundUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcn/jpush/android/f/a$a;->a:Ljava/lang/String;

    iget-object v5, p1, Lcn/jpush/android/f/a$a;->b:Ljava/lang/CharSequence;

    iget v6, p1, Lcn/jpush/android/f/a$a;->d:I

    iget v7, p1, Lcn/jpush/android/f/a$a;->e:I

    iget-object v8, p1, Lcn/jpush/android/f/a$a;->g:Landroid/net/Uri;

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/net/Uri;)Z

    move-result p0

    iput-boolean p0, p1, Lcn/jpush/android/f/a$a;->h:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/net/Uri;)Z
    .registers 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const-string v3, "ChannelHelper"

    if-lt v0, v1, :cond_128

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_13

    goto/16 :goto_128

    :cond_13
    :try_start_13
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_23

    const-string p0, "NotificationManager is null!"

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare NotificationChannel, channelId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_112

    const/4 v1, 0x1

    :try_start_3d
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v4, p2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4a

    return v1

    :catchall_4a
    move-exception v4

    :try_start_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check channelID failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_112

    :try_start_68
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_8b

    const/16 p2, 0x1c

    const-string p3, "JIGUANG_CHANNEL_GROUP"

    if-lt p1, p2, :cond_78

    :try_start_70
    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    if-eqz p1, :cond_78

    const/4 p1, 0x0

    goto :goto_79

    :cond_78
    const/4 p1, 0x1

    :goto_79
    if-eqz p1, :cond_87

    new-instance p1, Landroid/app/NotificationChannelGroup;

    invoke-static {p0}, Lcn/jpush/android/j/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_87
    invoke-virtual {v4, p3}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_8b

    goto :goto_a4

    :catchall_8b
    move-exception p0

    :try_start_8c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "config channel group failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_8c .. :try_end_a4} :catchall_112

    :goto_a4
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_aa

    const/4 p0, 0x1

    goto :goto_ab

    :cond_aa
    const/4 p0, 0x0

    :goto_ab
    :try_start_ab
    invoke-virtual {v4, p0}, Landroid/app/NotificationChannel;->enableLights(Z)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_c4

    :catchall_af
    move-exception p0

    :try_start_b0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableLights fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_112

    :goto_c4
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_ca

    const/4 p0, 0x1

    goto :goto_cb

    :cond_ca
    const/4 p0, 0x0

    :goto_cb
    :try_start_cb
    invoke-virtual {v4, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_e4

    :catchall_cf
    move-exception p0

    :try_start_d0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableVibration fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_d0 .. :try_end_e4} :catchall_112

    :goto_e4
    const/4 p0, 0x0

    if-eqz p5, :cond_ed

    :try_start_e7
    invoke-virtual {v4, p5, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_10e

    :catchall_eb
    move-exception p0

    goto :goto_fa

    :cond_ed
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f3

    const/4 p1, 0x1

    goto :goto_f4

    :cond_f3
    const/4 p1, 0x0

    :goto_f4
    if-nez p1, :cond_10e

    invoke-virtual {v4, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_f9
    .catchall {:try_start_e7 .. :try_end_f9} :catchall_eb

    goto :goto_10e

    :goto_fa
    :try_start_fa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSound fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10e
    :goto_10e
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_111
    .catchall {:try_start_fa .. :try_end_111} :catchall_112

    return v1

    :catchall_112
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "new NotificationChannel fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_128
    :goto_128
    const-string p0, "sdkversion < 26, no need use notificationChannel!"

    invoke-static {v3, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static b(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0

    :cond_f
    const/4 p0, -0x1

    return p0

    :cond_11
    const/4 p0, -0x2

    return p0
.end method
