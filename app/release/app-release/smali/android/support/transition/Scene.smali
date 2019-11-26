.class public Landroid/support/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3
    .parameter
    .end parameter

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 90
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 109
    iput-object p3, p0, Landroid/support/transition/Scene;->mContext:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 111
    iput p2, p0, Landroid/support/transition/Scene;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 125
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;
    .registers 2
    .parameter

    .line 207
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/transition/Scene;

    return-object p0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 63
    sget v0, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 67
    sget v1, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 69
    :cond_14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Scene;

    if-eqz v1, :cond_1d

    return-object v1

    .line 73
    :cond_1d
    new-instance v1, Landroid/support/transition/Scene;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 74
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V
    .registers 3
    .parameter
    .parameter

    .line 196
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 168
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 170
    :cond_8
    invoke-virtual {p0}, Landroid/support/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_21

    .line 173
    iget-object v0, p0, Landroid/support/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_28

    .line 175
    :cond_21
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2f

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_2f
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/support/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_f

    .line 150
    iget-object v0, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .registers 2

    .line 257
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 2
    .parameter
    .end parameter

    .line 228
    iput-object p1, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 2
    .parameter
    .end parameter

    .line 248
    iput-object p1, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    return-void
.end method
