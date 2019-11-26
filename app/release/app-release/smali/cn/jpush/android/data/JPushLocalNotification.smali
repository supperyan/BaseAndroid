.class public Lcn/jpush/android/data/JPushLocalNotification;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcn/jpush/android/data/JPushLocalNotification;->b:Ljava/lang/String;

    const-string v2, "00"

    iput-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    iput v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->k:I

    iput-object v1, p0, Lcn/jpush/android/data/JPushLocalNotification;->l:Ljava/lang/String;

    iput-object v1, p0, Lcn/jpush/android/data/JPushLocalNotification;->m:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1f

    :cond_12
    check-cast p1, Lcn/jpush/android/data/JPushLocalNotification;

    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    iget-wide v4, p1, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public getBroadcastTime()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-wide v0
.end method

.method public getBuilderId()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public setBroadcastTime(IIIIII)V
    .registers 16

    if-ltz p1, :cond_49

    const/4 v0, 0x1

    if-lt p2, v0, :cond_49

    const/16 v1, 0xc

    if-gt p2, v1, :cond_49

    if-lt p3, v0, :cond_49

    const/16 v1, 0x1f

    if-gt p3, v1, :cond_49

    if-ltz p4, :cond_49

    const/16 v1, 0x17

    if-gt p4, v1, :cond_49

    if-ltz p5, :cond_49

    const/16 v1, 0x3b

    if-gt p5, v1, :cond_49

    if-ltz p6, :cond_49

    if-le p6, v1, :cond_20

    goto :goto_49

    :cond_20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    add-int/lit8 v4, p2, -0x1

    move-object v2, v1

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p4

    cmp-long p6, p4, p2

    if-gez p6, :cond_42

    iput-wide p2, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    goto :goto_48

    :cond_42
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    :goto_48
    return-void

    :cond_49
    :goto_49
    const-string p1, "JPushLocalNotification"

    const-string p2, "Set time fail! Please check your args!"

    invoke-static {p1, p2}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBroadcastTime(J)V
    .registers 3

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-void
.end method

.method public setBroadcastTime(Ljava/util/Date;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-void
.end method

.method public setBuilderId(J)V
    .registers 3

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(J)V
    .registers 3

    long-to-int p2, p1

    int-to-long p1, p2

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .registers 6

    const-string v0, "n_content"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "n_extras"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v3, "n_title"

    iget-object v4, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "ad_t"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "m_content"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "content_type"

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "override_msg_id"

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "n_only"

    iget v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "n_builder_id"

    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "show_type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "notificaion_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
