.class Landroid/support/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroid/support/transition/ViewUtilsBase; = null

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field static final TRANSITION_ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_e

    .line 46
    new-instance v0, Landroid/support/transition/ViewUtilsApi22;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_31

    .line 47
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 48
    new-instance v0, Landroid/support/transition/ViewUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_31

    .line 49
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2a

    .line 50
    new-instance v0, Landroid/support/transition/ViewUtilsApi19;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_31

    .line 52
    :cond_2a
    new-instance v0, Landroid/support/transition/ViewUtilsBase;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsBase;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    .line 59
    :goto_31
    new-instance v0, Landroid/support/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 74
    new-instance v0, Landroid/support/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .parameter
    .end parameter

    .line 131
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->clearNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method private static fetchViewFlagsField()V
    .registers 3

    .line 214
    sget-boolean v0, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 216
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 217
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string v1, "ViewUtils"

    const-string v2, "fetchViewFlagsField: "

    .line 219
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_1c
    sput-boolean v0, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    :cond_1e
    return-void
.end method

.method static getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .registers 3
    .parameter
    .end parameter

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 94
    new-instance v0, Landroid/support/transition/ViewOverlayApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 96
    :cond_c
    invoke-static {p0}, Landroid/support/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;

    move-result-object p0

    return-object p0
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .registers 2
    .parameter
    .end parameter

    .line 114
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->getTransitionAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .registers 3
    .parameter
    .end parameter

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 104
    new-instance v0, Landroid/support/transition/WindowIdApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 106
    :cond_c
    new-instance v0, Landroid/support/transition/WindowIdApi14;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/transition/WindowIdApi14;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .parameter
    .end parameter

    .line 122
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->saveNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 198
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 11
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 210
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/ViewUtilsBase;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .registers 3
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 110
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 148
    invoke-static {}, Landroid/support/transition/ViewUtils;->fetchViewFlagsField()V

    .line 149
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_13

    .line 151
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 152
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p1, v0

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-void
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 172
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
    .end parameter

    .line 188
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
