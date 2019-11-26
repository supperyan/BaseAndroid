.class public final Lcn/jiguang/ar/d;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcn/jiguang/ar/h;

.field b:I

.field c:J

.field d:J

.field e:I


# direct methods
.method public constructor <init>(Lcn/jiguang/ar/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/jiguang/ar/d;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ip"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "port"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcn/jiguang/ar/h;

    invoke-direct {v3, p0, v2}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lcn/jiguang/ar/d;

    invoke-direct {p0, v3}, Lcn/jiguang/ar/d;-><init>(Lcn/jiguang/ar/h;)V

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jiguang/ar/d;->b:I

    const-string v2, "fetch_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/jiguang/ar/d;->c:J

    const-string v2, "cost"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/jiguang/ar/d;->d:J

    const-string v2, "prefer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jiguang/ar/d;->e:I
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ip"

    iget-object v2, p0, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    iget-object v2, v2, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "port"

    iget-object v2, p0, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    iget v2, v2, Lcn/jiguang/ar/h;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcn/jiguang/ar/d;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fetch_time"

    iget-wide v2, p0, Lcn/jiguang/ar/d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "cost"

    iget-wide v2, p0, Lcn/jiguang/ar/d;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "prefer"

    iget v2, p0, Lcn/jiguang/ar/d;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_38

    return-object v0

    :catch_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcn/jiguang/ar/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcn/jiguang/ar/d;

    iget v1, p0, Lcn/jiguang/ar/d;->b:I

    iget v3, p1, Lcn/jiguang/ar/d;->b:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcn/jiguang/ar/d;->c:J

    iget-wide v5, p1, Lcn/jiguang/ar/d;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lcn/jiguang/ar/d;->d:J

    iget-wide v5, p1, Lcn/jiguang/ar/d;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcn/jiguang/ar/d;->e:I

    iget v3, p1, Lcn/jiguang/ar/d;->e:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    iget-object p1, p1, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    if-eqz v1, :cond_37

    invoke-virtual {v1, p1}, Lcn/jiguang/ar/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_37
    if-nez p1, :cond_3a

    return v0

    :cond_3a
    return v2
.end method

.method public final hashCode()I
    .registers 7

    iget-object v0, p0, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/jiguang/ar/h;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcn/jiguang/ar/d;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcn/jiguang/ar/d;->c:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcn/jiguang/ar/d;->d:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcn/jiguang/ar/d;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IpInfo{ipPort="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ar/d;->a:Lcn/jiguang/ar/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/ar/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fetchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/ar/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/ar/d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", prefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/ar/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
