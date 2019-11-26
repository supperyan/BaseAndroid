.class public Landroid/support/design/resources/MaterialResources;
.super Ljava/lang/Object;
.source "MaterialResources.java"


# annotations


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_14

    .line 46
    invoke-static {p0, v0}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    .line 52
    :cond_14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_14

    .line 67
    invoke-static {p0, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    .line 73
    :cond_14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static getIndexWithValue(Landroid/content/res/TypedArray;II)I
    .registers 3
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return p1

    :cond_7
    return p2
.end method

.method public static getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/resources/TextAppearance;
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_13

    .line 87
    new-instance p2, Landroid/support/design/resources/TextAppearance;

    invoke-direct {p2, p0, p1}, Landroid/support/design/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    return-object p2

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method
