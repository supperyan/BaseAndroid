.class Landroid/support/design/widget/CircularBorderDrawable$CircularBorderState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CircularBorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CircularBorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircularBorderState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CircularBorderDrawable;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CircularBorderDrawable;)V
    .registers 2
    .parameter

    .line 233
    iput-object p1, p0, Landroid/support/design/widget/CircularBorderDrawable$CircularBorderState;->this$0:Landroid/support/design/widget/CircularBorderDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CircularBorderDrawable;Landroid/support/design/widget/CircularBorderDrawable$1;)V
    .registers 3
    .parameter
    .parameter

    .line 233
    invoke-direct {p0, p1}, Landroid/support/design/widget/CircularBorderDrawable$CircularBorderState;-><init>(Landroid/support/design/widget/CircularBorderDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable$CircularBorderState;->this$0:Landroid/support/design/widget/CircularBorderDrawable;

    return-object v0
.end method
