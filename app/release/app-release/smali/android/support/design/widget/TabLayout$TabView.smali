.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Landroid/support/design/widget/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .line 1962
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1963
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 1960
    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 1964
    invoke-direct {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1965
    iget p2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    iget v0, p1, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    .line 1967
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1968
    iget-boolean p1, p1, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1969
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1971
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 1970
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V
    .registers 2
    .parameter
    .parameter

    .line 1950
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .registers 2
    .parameter
    .parameter

    .line 1950
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout$TabView;)I
    .registers 1
    .parameter

    .line 1950
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 2366
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    return p2
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .line 2030
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 2031
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2032
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1c
    return-void
.end method

.method private getContentWidth()I
    .registers 10

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 2349
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-ge v2, v1, :cond_44

    aget-object v7, v0, v2

    if-eqz v7, :cond_41

    .line 2350
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_41

    if-eqz v6, :cond_2d

    .line 2351
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_31

    :cond_2d
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_31
    if-eqz v6, :cond_3c

    .line 2352
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_40

    :cond_3c
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    :goto_40
    const/4 v6, 0x1

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_44
    sub-int/2addr v4, v5

    return v4
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .registers 8
    .parameter

    .line 1975
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1976
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1977
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1978
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_27

    .line 1981
    :cond_25
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1985
    :cond_27
    :goto_27
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1986
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1988
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_80

    .line 1989
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac

    .line 1993
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    .line 1994
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1996
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1997
    invoke-static {v3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 2001
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6b

    .line 2002
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_5f

    move-object p1, v1

    :cond_5f
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_66

    move-object v0, v1

    :cond_66
    invoke-direct {v2, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    goto :goto_80

    .line 2008
    :cond_6b
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2009
    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2010
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    .line 2015
    :cond_80
    :goto_80
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2016
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->invalidate()V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 8
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 2279
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2280
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2281
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 2283
    :goto_1b
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_25

    :cond_24
    move-object v2, v1

    :goto_25
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3c

    if-eqz v0, :cond_36

    .line 2287
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2288
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2289
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_3c

    .line 2291
    :cond_36
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2296
    :cond_3c
    :goto_3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_56

    if-eqz v0, :cond_50

    .line 2299
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2300
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2301
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_56

    .line 2303
    :cond_50
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_56
    :goto_56
    if-eqz p2, :cond_95

    .line 2309
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6d

    .line 2311
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6d

    .line 2313
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v2

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    .line 2315
    :goto_6e
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_86

    .line 2316
    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_95

    .line 2317
    invoke-static {p1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2318
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2320
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_95

    .line 2324
    :cond_86
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_95

    .line 2325
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2326
    invoke-static {p1, v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2328
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2329
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2334
    :cond_95
    :goto_95
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz p1, :cond_9e

    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_9f

    :cond_9e
    move-object p1, v1

    :goto_9f
    if-eqz v0, :cond_a2

    move-object p1, v1

    .line 2335
    :cond_a2
    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    .line 2038
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2040
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    .line 2041
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2042
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_19
    if-eqz v2, :cond_23

    .line 2046
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->invalidate()V

    .line 2047
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->invalidate()V

    :cond_23
    return-void
.end method

.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 2

    .line 2361
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter

    .line 2092
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2094
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter

    .line 2100
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2102
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .line 2107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2109
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1e

    if-eqz v1, :cond_14

    if-le v0, v2, :cond_1e

    .line 2117
    :cond_14
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget p1, p1, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    const/high16 v0, -0x8000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2124
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2127
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_9c

    .line 2128
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabTextSize:F

    .line 2129
    iget v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2131
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_38

    const/4 v1, 0x1

    goto :goto_46

    .line 2134
    :cond_38
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_46

    .line 2136
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabTextMultiLineSize:F

    .line 2139
    :cond_46
    :goto_46
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2140
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 2141
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v6, v0, v2

    if-nez v6, :cond_60

    if-ltz v5, :cond_9c

    if-eq v1, v5, :cond_9c

    .line 2147
    :cond_60
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v5, v5, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_8d

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8d

    if-ne v4, v3, :cond_8d

    .line 2153
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 2155
    invoke-direct {p0, v2, v6, v0}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v2

    .line 2156
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8d

    :cond_8c
    const/4 v3, 0x0

    :cond_8d
    if-eqz v3, :cond_9c

    .line 2162
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2163
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2164
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_9c
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 2053
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2055
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_14

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 2057
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 2059
    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2178
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2179
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 4
    .parameter

    .line 2068
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2070
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 2072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x4

    .line 2074
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2079
    :cond_1a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 2080
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2082
    :cond_21
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    .line 2083
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2085
    :cond_28
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_2f

    .line 2086
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_2f
    return-void
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .parameter
    .end parameter

    .line 2171
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_9

    .line 2172
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2173
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_9
    return-void
.end method

.method final update()V
    .registers 6

    .line 2183
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2184
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    if-eqz v2, :cond_55

    .line 2186
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_1d

    if-eqz v3, :cond_1a

    .line 2189
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2191
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2193
    :cond_1d
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2194
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_28

    .line 2195
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2197
    :cond_28
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_34

    .line 2198
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2199
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    const v3, 0x1020014

    .line 2202
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2203
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_49

    .line 2204
    invoke-static {v3}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    :cond_49
    const v3, 0x1020006

    .line 2206
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_62

    .line 2209
    :cond_55
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_5e

    .line 2210
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2211
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2213
    :cond_5e
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2214
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2217
    :goto_62
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_eb

    .line 2219
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_80

    .line 2222
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    .line 2223
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2224
    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 2225
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    :cond_80
    if-eqz v0, :cond_94

    .line 2228
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 2229
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_94
    if-eqz v1, :cond_aa

    .line 2232
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2233
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_aa

    .line 2234
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2238
    :cond_aa
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_cb

    .line 2241
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_text:I

    .line 2242
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2243
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2244
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2245
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2247
    :cond_cb
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2248
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e3

    .line 2249
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2251
    :cond_e3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_fa

    .line 2254
    :cond_eb
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_f3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_fa

    .line 2255
    :cond_f3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_fa
    :goto_fa
    if-eqz v0, :cond_10d

    .line 2259
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10d

    .line 2262
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10d
    if-eqz v0, :cond_116

    .line 2265
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_116

    const/4 v3, 0x1

    :cond_116
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final updateOrientation()V
    .registers 3

    .line 2269
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v0, v0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 2270
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 2273
    :cond_12
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_21

    .line 2271
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_21
    return-void
.end method
