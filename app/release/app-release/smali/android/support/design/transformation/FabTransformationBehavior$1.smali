.class Landroid/support/design/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/FabTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/transformation/FabTransformationBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dependency:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .line 149
    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->this$0:Landroid/support/design/transformation/FabTransformationBehavior;

    iput-boolean p2, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$expanded:Z

    iput-object p3, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    iput-object p4, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .line 162
    iget-boolean p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-nez p1, :cond_17

    .line 163
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 166
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .line 152
    iget-boolean p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$expanded:Z

    if-eqz p1, :cond_16

    .line 153
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 156
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method
