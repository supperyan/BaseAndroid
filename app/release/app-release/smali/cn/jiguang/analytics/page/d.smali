.class final Lcn/jiguang/analytics/page/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Landroid/content/Context;

.field c:Lcn/jiguang/analytics/page/PushSA;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Lcn/jiguang/analytics/page/PushSA;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jiguang/analytics/page/d;->a:Z

    iput-object p2, p0, Lcn/jiguang/analytics/page/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/jiguang/analytics/page/d;->c:Lcn/jiguang/analytics/page/PushSA;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcn/jiguang/analytics/page/d;->a:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/jiguang/analytics/page/d;->c:Lcn/jiguang/analytics/page/PushSA;

    iget-object v1, p0, Lcn/jiguang/analytics/page/d;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/jiguang/analytics/page/PushSA;->access$000(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V

    goto :goto_13

    :cond_c
    iget-object v0, p0, Lcn/jiguang/analytics/page/d;->c:Lcn/jiguang/analytics/page/PushSA;

    iget-object v1, p0, Lcn/jiguang/analytics/page/d;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/jiguang/analytics/page/PushSA;->access$100(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_13

    :catchall_13
    :goto_13
    return-void
.end method
