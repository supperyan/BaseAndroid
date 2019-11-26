.class Lcn/jpush/android/ui/FullScreenView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/ui/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/FullScreenView;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/FullScreenView;)V
    .registers 2

    iput-object p1, p0, Lcn/jpush/android/ui/FullScreenView$1;->a:Lcn/jpush/android/ui/FullScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcn/jpush/android/ui/FullScreenView$1;->a:Lcn/jpush/android/ui/FullScreenView;

    invoke-static {p1}, Lcn/jpush/android/ui/FullScreenView;->access$000(Lcn/jpush/android/ui/FullScreenView;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcn/jpush/android/ui/FullScreenView$1;->a:Lcn/jpush/android/ui/FullScreenView;

    invoke-static {p1}, Lcn/jpush/android/ui/FullScreenView;->access$000(Lcn/jpush/android/ui/FullScreenView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_13
    return-void
.end method
