.class Lcn/jpush/android/ui/PushActivity$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/ui/PushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/jpush/android/ui/PushActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/jpush/android/ui/PushActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/jpush/android/d/d;

    iget-object v1, p0, Lcn/jpush/android/ui/PushActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/ui/PushActivity;

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Lcn/jpush/android/ui/PushActivity;->b()V

    goto :goto_22

    :cond_1c
    invoke-virtual {v1, v2}, Lcn/jpush/android/ui/PushActivity;->setRequestedOrientation(I)V

    invoke-static {v1, v0}, Lcn/jpush/android/ui/PushActivity;->a(Lcn/jpush/android/ui/PushActivity;Lcn/jpush/android/d/d;)V

    :goto_22
    return-void
.end method
