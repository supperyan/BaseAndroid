.class public Landroid/support/v7/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 1395
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .line 1385
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1374
    iput p1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    const p1, 0x800013

    .line 1386
    iput p1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 1390
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1374
    iput p1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1391
    iput p3, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 1377
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1374
    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1379
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1380
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionBarLayout_android_layout_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1381
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .registers 3
    .parameter

    .line 1399
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 1374
    iput v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 1401
    iget p1, p1, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    iput p1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .parameter

    .line 1405
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1374
    iput p1, p0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method