.class Lcn/jpush/android/f/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/jpush/android/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/d/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jpush/android/f/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/f/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    invoke-static {v0, v1}, Lcn/jpush/android/f/b;->d(Landroid/content/Context;Lcn/jpush/android/d/d;)V

    iget-object v0, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    iget v0, v0, Lcn/jpush/android/d/d;->R:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    iget v0, v0, Lcn/jpush/android/d/d;->R:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    goto :goto_1d

    :cond_15
    iget-object v0, p0, Lcn/jpush/android/f/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    invoke-static {v0, v1}, Lcn/jpush/android/f/b;->f(Landroid/content/Context;Lcn/jpush/android/d/d;)V

    goto :goto_4b

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    iget-object v0, v0, Lcn/jpush/android/d/d;->c:Ljava/lang/String;

    const/16 v1, 0x3e3

    iget-object v2, p0, Lcn/jpush/android/f/b$a;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helper/g;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/f/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/f/b$a;->b:Lcn/jpush/android/d/d;

    invoke-static {v0, v1}, Lcn/jpush/android/f/b;->e(Landroid/content/Context;Lcn/jpush/android/d/d;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    goto :goto_4b

    :catchall_30
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run NotifyAction failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationHelper"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method
