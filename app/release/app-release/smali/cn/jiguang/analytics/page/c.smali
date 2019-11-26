.class final Lcn/jiguang/analytics/page/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/jiguang/analytics/page/PushSA;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcn/jiguang/analytics/page/c;->b:Lcn/jiguang/analytics/page/PushSA;

    iput-object p2, p0, Lcn/jiguang/analytics/page/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/page/c;->b:Lcn/jiguang/analytics/page/PushSA;

    iget-object v1, p0, Lcn/jiguang/analytics/page/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/jiguang/analytics/page/PushSA;->access$100(Lcn/jiguang/analytics/page/PushSA;Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method
