.class public Lcn/jpush/android/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jpush/android/b/d;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcn/jpush/android/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/b/d;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcn/jpush/android/b/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/b/d;
    .registers 3

    sget-object v0, Lcn/jpush/android/b/d;->a:Lcn/jpush/android/b/d;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jpush/android/b/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jpush/android/b/d;->a:Lcn/jpush/android/b/d;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/b/d;

    invoke-direct {v1, p0}, Lcn/jpush/android/b/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/jpush/android/b/d;->a:Lcn/jpush/android/b/d;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcn/jpush/android/b/d;->a:Lcn/jpush/android/b/d;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_a

    const-string p1, "GeofenceManager"

    const-string v0, "context is null,init failed"

    invoke-static {p1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcn/jpush/android/b/a;

    invoke-direct {v0, p1}, Lcn/jpush/android/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v0}, Lcn/jpush/android/b/c;->b()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v0, p1}, Lcn/jpush/android/b/c;->a(I)V

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/b/c;->a(J)V

    return-void
.end method

.method public a(Lcn/jpush/android/b/b;)V
    .registers 4

    const-string v0, "GeofenceManager"

    const-string v1, "recv geofence..."

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v0, p1}, Lcn/jpush/android/b/c;->c(Lcn/jpush/android/b/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v0, p1}, Lcn/jpush/android/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "GeofenceManager"

    :try_start_2
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_af

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_af

    const-string v1, "op"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "geofenceid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_94

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto/16 :goto_94

    :cond_2a
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x178a1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_55

    const v5, 0x1840b

    if-eq v4, v5, :cond_4b

    const v5, 0x1c529

    if-eq v4, v5, :cond_41

    goto :goto_5e

    :cond_41
    const-string v4, "upd"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v3, 0x1

    goto :goto_5e

    :cond_4b
    const-string v4, "del"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v3, 0x2

    goto :goto_5e

    :cond_55
    const-string v4, "add"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v3, 0x0

    :cond_5e
    :goto_5e
    if-eqz v3, :cond_8a

    if-eq v3, v7, :cond_84

    if-eq v3, v6, :cond_7e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operation "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    :cond_7e
    iget-object p1, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {p1, v2}, Lcn/jpush/android/b/c;->a(Ljava/lang/String;)V

    goto :goto_af

    :cond_84
    iget-object v1, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v1, v2, p1}, Lcn/jpush/android/b/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_af

    :cond_8a
    invoke-static {p1}, Lcn/jpush/android/b/b;->a(Lorg/json/JSONObject;)Lcn/jpush/android/b/b;

    move-result-object p1

    iget-object v1, p0, Lcn/jpush/android/b/d;->c:Lcn/jpush/android/b/c;

    invoke-virtual {v1, p1}, Lcn/jpush/android/b/c;->c(Lcn/jpush/android/b/b;)V

    goto :goto_af

    :cond_94
    :goto_94
    const-string p1, "json error: required key not found"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_2 .. :try_end_99} :catchall_9a

    return-void

    :catchall_9a
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    :goto_af
    return-void
.end method
