.class final Lcn/jiguang/aj/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/aj/c;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/jiguang/aj/c;Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcn/jiguang/aj/d;->a:Lcn/jiguang/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/aj/d;->d:Landroid/content/Context;

    iput p3, p0, Lcn/jiguang/aj/d;->b:I

    iput-object p4, p0, Lcn/jiguang/aj/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/aj/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "https://ce3e75d5.jpush.cn/wi/cjc4sa"

    iput-object v0, p0, Lcn/jiguang/aj/d;->c:Ljava/lang/String;

    :cond_c
    invoke-static {}, Lcn/jiguang/api/JCoreManager;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcn/jiguang/internal/JConstants;->TUU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcn/jiguang/internal/JConstants;->TUU:Ljava/lang/String;

    iput-object v0, p0, Lcn/jiguang/aj/d;->c:Ljava/lang/String;

    :cond_1e
    iget-object v0, p0, Lcn/jiguang/aj/d;->a:Lcn/jiguang/aj/c;

    iget-object v1, p0, Lcn/jiguang/aj/d;->d:Landroid/content/Context;

    iget v2, p0, Lcn/jiguang/aj/d;->b:I

    iget-object v3, p0, Lcn/jiguang/aj/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/jiguang/aj/c;->a(Lcn/jiguang/aj/c;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateAction failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPM"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
