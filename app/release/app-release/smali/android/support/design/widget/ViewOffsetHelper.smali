.class Landroid/support/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    return-void
.end method

.method private updateOffsets()V
    .registers 5

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 53
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutLeft:I

    return v0
.end method

.method public getLayoutTop()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutTop:I

    return v0
.end method

.method public getLeftAndRightOffset()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutTop:I

    .line 45
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutLeft:I

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3
    .parameter

    .line 78
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    if-eq v0, p1, :cond_b

    .line 79
    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    .line 80
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3
    .parameter

    .line 63
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    if-eq v0, p1, :cond_b

    .line 64
    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    .line 65
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
