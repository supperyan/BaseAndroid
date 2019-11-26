.class public final Lcn/jiguang/ar/o;
.super Ljava/lang/Object;


# annotations


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcn/jiguang/ar/h;

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:D

.field public i:D

.field public j:J

.field public k:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcn/jiguang/ar/o;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_70

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_70

    :cond_a
    :try_start_a
    new-instance v1, Lcn/jiguang/ar/o;

    invoke-direct {v1}, Lcn/jiguang/ar/o;-><init>()V

    const-string v2, "appkey"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/jiguang/ar/o;->a:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcn/jiguang/ar/o;->b:I

    const-string v2, "addr"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v2

    iput-object v2, v1, Lcn/jiguang/ar/o;->c:Lcn/jiguang/ar/h;

    const-string v2, "rtime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/ar/o;->e:J

    const-string v2, "interval"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/ar/o;->f:J

    const-string v2, "net"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcn/jiguang/ar/o;->g:I

    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcn/jiguang/ar/o;->k:I

    const-string v2, "uid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/ar/o;->d:J

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/ar/o;->h:D

    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/ar/o;->i:D

    const-string v2, "ltime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/jiguang/ar/o;->j:J
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_6b} :catch_6c

    return-object v1

    :catch_6c
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_70
    :goto_70
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcn/jiguang/ar/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    :try_start_b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_25

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/ar/o;->a(Lorg/json/JSONObject;)Lcn/jiguang/ar/o;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_22} :catch_25

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    :catch_25
    :cond_25
    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcn/jiguang/ar/o;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "appkey"

    iget-object v2, p0, Lcn/jiguang/ar/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    const-string v1, "type"

    iget v2, p0, Lcn/jiguang/ar/o;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "addr"

    iget-object v2, p0, Lcn/jiguang/ar/o;->c:Lcn/jiguang/ar/h;

    invoke-virtual {v2}, Lcn/jiguang/ar/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rtime"

    iget-wide v2, p0, Lcn/jiguang/ar/o;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "interval"

    iget-wide v2, p0, Lcn/jiguang/ar/o;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "net"

    iget v2, p0, Lcn/jiguang/ar/o;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "code"

    iget v2, p0, Lcn/jiguang/ar/o;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcn/jiguang/ar/o;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_51

    const-string v1, "uid"

    iget-wide v2, p0, Lcn/jiguang/ar/o;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_51
    iget-wide v1, p0, Lcn/jiguang/ar/o;->h:D

    iget-wide v3, p0, Lcn/jiguang/ar/o;->i:D

    const-wide v5, -0x3fa9800000000000L

    cmpl-double v7, v1, v5

    if-lez v7, :cond_7b

    const-wide v5, 0x4056800000000000L

    cmpg-double v7, v1, v5

    if-gez v7, :cond_7b

    const-wide v1, -0x3f99800000000000L

    cmpl-double v5, v3, v1

    if-lez v5, :cond_7b

    const-wide v1, 0x4066800000000000L

    cmpg-double v5, v3, v1

    if-gez v5, :cond_7b

    const/4 v1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    if-eqz v1, :cond_98

    const-string v1, "lat"

    iget-wide v2, p0, Lcn/jiguang/ar/o;->h:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lng"

    iget-wide v2, p0, Lcn/jiguang/ar/o;->i:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "ltime"

    iget-wide v2, p0, Lcn/jiguang/ar/o;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_93} :catch_94

    goto :goto_98

    :catch_94
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_98
    :goto_98
    return-object v0
.end method
