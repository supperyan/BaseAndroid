.class final Lcn/jiguang/ao/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ao/j;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcn/jiguang/ao/j;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "ReportSis"

    :try_start_2
    iget-object v1, p0, Lcn/jiguang/ao/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/ao/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ao/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/ao/i;->b(Landroid/content/Context;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {}, Lcn/jiguang/ao/i;->a()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sis urls="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " post json="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/ao/j;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/f/a;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v1, "give up sis, because network is not connected"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_6a

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6a

    const-string v3, "won\'t use http at device since 28"

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_6a
    iget-object v4, p0, Lcn/jiguang/ao/j;->a:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Lcn/jiguang/ao/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_70
    .catchall {:try_start_2 .. :try_end_70} :catchall_72

    if-eqz v3, :cond_44

    :catchall_72
    :cond_72
    return-void
.end method
