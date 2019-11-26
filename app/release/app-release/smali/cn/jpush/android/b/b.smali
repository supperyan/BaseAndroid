.class public Lcn/jpush/android/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:J

.field public f:D

.field public g:D

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:J

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Lcn/jpush/android/d/d;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4069

    iput-wide v0, p0, Lcn/jpush/android/b/b;->f:D

    iput-wide v0, p0, Lcn/jpush/android/b/b;->g:D

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcn/jpush/android/b/b;
    .registers 7

    const-string v0, "Geofence"

    if-eqz p0, :cond_95

    :try_start_4
    new-instance v1, Lcn/jpush/android/b/b;

    invoke-direct {v1}, Lcn/jpush/android/b/b;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geofence message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/b/b;->k:Ljava/lang/String;

    const-string v0, "geofenceid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/b/b;->j:Ljava/lang/String;

    const-string v0, "radius"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jpush/android/b/b;->b:J

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/b/b;->c:Ljava/lang/String;

    const-string v0, "repeat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcn/jpush/android/b/b;->d:Z

    const-string v0, "repeat_week_num"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/jpush/android/b/b;->l:I

    const-string v0, "repeat_day_num"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/jpush/android/b/b;->m:I

    const-string v0, "repeat_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/jpush/android/b/b;->n:I

    const-string v0, "expiration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jpush/android/b/b;->e:J

    const-string v0, "type"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcn/jpush/android/b/b;->i:I

    const-string v0, "center"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_94

    const-string v0, "lon"

    const-wide/high16 v2, 0x4069

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcn/jpush/android/b/b;->f:D

    const-string v0, "lat"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/jpush/android/b/b;->g:D

    :cond_94
    return-object v1

    :cond_95
    const-string p0, "geofence json is null"

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_4 .. :try_end_9a} :catchall_9a

    :catchall_9a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lcn/jpush/android/b/b;)V
    .registers 4

    iget-object v0, p1, Lcn/jpush/android/b/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/b/b;->h:Ljava/lang/String;

    iget-wide v0, p1, Lcn/jpush/android/b/b;->o:J

    iput-wide v0, p0, Lcn/jpush/android/b/b;->o:J

    iget-object v0, p1, Lcn/jpush/android/b/b;->p:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/b/b;->p:Ljava/lang/String;

    iget-object v0, p1, Lcn/jpush/android/b/b;->r:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/b/b;->r:Ljava/lang/String;

    iget v0, p1, Lcn/jpush/android/b/b;->q:I

    iput v0, p0, Lcn/jpush/android/b/b;->q:I

    iget p1, p1, Lcn/jpush/android/b/b;->s:I

    iput p1, p0, Lcn/jpush/android/b/b;->s:I

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 13

    const-string v0, "repeat_time"

    const-string v1, "repeat_day_num"

    const-string v2, "repeat_week_num"

    const-string v3, "expiration"

    const-string v4, "repeat"

    const-string v5, "status"

    const-string v6, "name"

    :try_start_e
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/jpush/android/b/b;->j:Ljava/lang/String;

    :cond_1a
    const-string v6, "radius"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2a

    iput-wide v6, p0, Lcn/jpush/android/b/b;->b:J

    :cond_2a
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/jpush/android/b/b;->c:Ljava/lang/String;

    :cond_36
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcn/jpush/android/b/b;->d:Z

    iget-boolean v4, p0, Lcn/jpush/android/b/b;->d:Z

    if-eqz v4, :cond_6a

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jpush/android/b/b;->l:I

    :cond_52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/jpush/android/b/b;->m:I

    :cond_5e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/b/b;->n:I

    :cond_6a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/b/b;->e:J

    :cond_76
    const-string v0, "center"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d8

    const-string v0, "lon"

    const-wide/high16 v1, 0x4069

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-string v0, "lat"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v5, -0x3f99800000000000L

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_b5

    const-wide v5, 0x4066800000000000L

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_b5

    const-wide v5, -0x3fa9800000000000L

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_b5

    const-wide v5, 0x4056800000000000L

    cmpg-double p1, v0, v5

    if-gtz p1, :cond_b5

    iput-wide v3, p0, Lcn/jpush/android/b/b;->f:D

    iput-wide v0, p0, Lcn/jpush/android/b/b;->g:D

    goto :goto_d8

    :cond_b5
    const-string p1, "Geofence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update center failed because value invalid, ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_e .. :try_end_d8} :catchall_d8

    :catchall_d8
    :cond_d8
    :goto_d8
    return-void
.end method
