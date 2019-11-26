.class public final Lcn/jiguang/ar/n;
.super Ljava/lang/Object;


# annotations


# instance fields
.field a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field f:Lorg/json/JSONObject;

.field transient g:Lcn/jiguang/ar/h;

.field h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ips"

    invoke-static {v0, p1}, Lcn/jiguang/ar/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/n;->a:Ljava/util/LinkedHashSet;

    const-string p1, "ssl_ips"

    invoke-static {v0, p1}, Lcn/jiguang/ar/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/n;->b:Ljava/util/LinkedHashSet;

    const-string p1, "http_report"

    invoke-static {v0, p1}, Lcn/jiguang/ar/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/n;->c:Ljava/util/LinkedHashSet;

    const-string p1, "https_report"

    invoke-static {v0, p1}, Lcn/jiguang/ar/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/n;->d:Ljava/util/LinkedHashSet;

    const-string p1, "sis_ips"

    invoke-static {v0, p1}, Lcn/jiguang/ar/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/n;->e:Ljava/util/LinkedHashSet;

    const-string p1, "data_report"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/jiguang/ar/n;->h:Z

    const-string p1, "tcp_report"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/ar/n;->f:Lorg/json/JSONObject;

    const-string p1, "sis"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get sis="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5e

    :catchall_5e
    :cond_5e
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_29

    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_29

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcn/jiguang/ar/h;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_29

    :cond_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :catchall_29
    :cond_29
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcn/jiguang/ar/n;->a:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    iget-object v0, p0, Lcn/jiguang/ar/n;->b:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method
