.class final Lcn/jiguang/ao/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcn/jiguang/ao/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcn/jiguang/ao/l;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ao/l;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcn/jiguang/ao/k;->a(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcn/jiguang/ao/k;->a(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ao/l;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/Set;)V

    goto :goto_2c

    :cond_12
    const-string v0, "ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/ao/l;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :goto_2c
    return-void
.end method
