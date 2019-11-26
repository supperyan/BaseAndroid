.class final Lcn/jiguang/ao/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Lorg/json/JSONObject;Ljava/io/File;)V
    .registers 5

    iput-object p1, p0, Lcn/jiguang/ao/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/ao/m;->b:Ljava/util/Set;

    iput-object p3, p0, Lcn/jiguang/ao/m;->c:Lorg/json/JSONObject;

    iput-object p4, p0, Lcn/jiguang/ao/m;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ao/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/ao/m;->b:Ljava/util/Set;

    iget-object v2, p0, Lcn/jiguang/ao/m;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lcn/jiguang/ao/m;->d:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;Ljava/util/Set;Lorg/json/JSONObject;Ljava/io/File;Lcn/jiguang/api/ReportCallBack;)I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_c

    :catchall_c
    return-void
.end method
