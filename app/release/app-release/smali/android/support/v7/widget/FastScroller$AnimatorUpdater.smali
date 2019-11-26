.class Landroid/support/v7/widget/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .registers 2
    .parameter

    .line 586
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .parameter

    .line 591
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    iget-object v0, v0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    iget-object v0, v0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    iget-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    return-void
.end method
