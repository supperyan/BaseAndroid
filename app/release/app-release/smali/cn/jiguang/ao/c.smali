.class public final Lcn/jiguang/ao/c;
.super Ljava/lang/Object;


# annotations


# instance fields
.field public a:J

.field public b:Lorg/json/JSONObject;

.field private c:Ljava/io/File;

.field private d:Lorg/json/JSONObject;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Ljava/io/File;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ao/c;->c:Ljava/io/File;

    iput-object p2, p0, Lcn/jiguang/ao/c;->d:Lorg/json/JSONObject;

    iput-object p3, p0, Lcn/jiguang/ao/c;->b:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/jiguang/ao/c;->a:J

    iput-boolean p4, p0, Lcn/jiguang/ao/c;->f:Z

    iput-boolean p4, p0, Lcn/jiguang/ao/c;->e:Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/util/Set;)Lcn/jiguang/ao/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/jiguang/ao/c;"
        }
    .end annotation

    invoke-static {p0}, Lcn/jiguang/ao/c;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lcn/jiguang/ao/c;

    invoke-static {v0, p1}, Lcn/jiguang/f/g;->a(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcn/jiguang/ao/c;-><init>(Ljava/io/File;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-object v1

    :cond_11
    invoke-static {p0}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;Lorg/json/JSONObject;)Lcn/jiguang/ao/c;
    .registers 5

    invoke-static {p0}, Lcn/jiguang/ao/c;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Lcn/jiguang/ao/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Lcn/jiguang/ao/c;-><init>(Ljava/io/File;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-object v1

    :cond_d
    invoke-static {p0}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/f/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "content"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1e

    if-lez p0, :cond_1e

    return-object v0

    :catchall_1e
    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcn/jiguang/ao/c;Ljava/io/File;)Z
    .registers 11

    const-string v0, "content"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3e

    :try_start_6
    iget-wide v3, p0, Lcn/jiguang/ao/c;->a:J

    iget-wide v5, p1, Lcn/jiguang/ao/c;->a:J

    add-long/2addr v3, v5

    const-wide/32 v5, 0xa000

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3e

    iget-object p2, p0, Lcn/jiguang/ao/c;->d:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    iget-object v3, p1, Lcn/jiguang/ao/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2f

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2f
    iget-wide v3, p0, Lcn/jiguang/ao/c;->a:J

    iget-wide v5, p1, Lcn/jiguang/ao/c;->a:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcn/jiguang/ao/c;->a:J

    iput-boolean v2, p0, Lcn/jiguang/ao/c;->e:Z

    iget-object p1, p1, Lcn/jiguang/ao/c;->c:Ljava/io/File;

    invoke-static {p1}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    return v2

    :cond_3e
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_47

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_47
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/jiguang/ao/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcn/jiguang/ao/c;->f:Z

    if-eqz p2, :cond_5d

    iget-object p2, p0, Lcn/jiguang/ao/c;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/jiguang/ao/c;->b:Lorg/json/JSONObject;

    invoke-static {p2, v0}, Lcn/jiguang/f/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_5d
    iget-object p2, p0, Lcn/jiguang/ao/c;->c:Ljava/io/File;

    invoke-virtual {p2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_66

    goto :goto_67

    :cond_66
    const/4 v2, 0x0

    :goto_67
    iget-boolean p2, p0, Lcn/jiguang/ao/c;->e:Z

    if-nez p2, :cond_6d

    if-eqz v2, :cond_76

    :cond_6d
    iget-object p2, p0, Lcn/jiguang/ao/c;->d:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/f/e;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_76
    if-eqz v2, :cond_7d

    iget-object p1, p0, Lcn/jiguang/ao/c;->c:Ljava/io/File;

    invoke-static {p1}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V
    :try_end_7d
    .catchall {:try_start_6 .. :try_end_7d} :catchall_7d

    :catchall_7d
    :cond_7d
    return v1
.end method
