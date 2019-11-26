.class Landroid/support/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 32
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    :cond_9
    return-void
.end method

.method static pause(Landroid/animation/Animator;)V
    .registers 6
    .parameter
    .end parameter

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 38
    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    goto :goto_29

    .line 40
    :cond_a
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_15
    if-ge v1, v2, :cond_29

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 44
    instance-of v4, v3, Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_26

    .line 45
    check-cast v3, Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    invoke-interface {v3, p0}, Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    :goto_29
    return-void
.end method

.method static resume(Landroid/animation/Animator;)V
    .registers 6
    .parameter
    .end parameter

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 54
    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    goto :goto_29

    .line 56
    :cond_a
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_15
    if-ge v1, v2, :cond_29

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 60
    instance-of v4, v3, Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_26

    .line 61
    check-cast v3, Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    invoke-interface {v3, p0}, Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    :goto_29
    return-void
.end method
