.class Landroid/support/transition/Styleable;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Styleable$PatternPathMotion;,
        Landroid/support/transition/Styleable$ArcMotion;,
        Landroid/support/transition/Styleable$TransitionSet;,
        Landroid/support/transition/Styleable$Slide;,
        Landroid/support/transition/Styleable$ChangeTransform;,
        Landroid/support/transition/Styleable$Fade;,
        Landroid/support/transition/Styleable$VisibilityTransition;,
        Landroid/support/transition/Styleable$ChangeBounds;,
        Landroid/support/transition/Styleable$Transition;,
        Landroid/support/transition/Styleable$TransitionManager;,
        Landroid/support/transition/Styleable$TransitionTarget;
    }
.end annotation


# static fields
.field static final ARC_MOTION:[I

.field static final CHANGE_BOUNDS:[I

.field static final CHANGE_TRANSFORM:[I

.field static final FADE:[I

.field static final PATTERN_PATH_MOTION:[I

.field static final SLIDE:[I

.field static final TRANSITION:[I

.field static final TRANSITION_MANAGER:[I

.field static final TRANSITION_SET:[I

.field static final TRANSITION_TARGET:[I

.field static final VISIBILITY_TRANSITION:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_60

    sput-object v0, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_70

    sput-object v1, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 71
    fill-array-data v1, :array_7a

    sput-object v1, Landroid/support/transition/Styleable;->TRANSITION:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10104cf

    aput v4, v2, v3

    .line 90
    sput-object v2, Landroid/support/transition/Styleable;->CHANGE_BOUNDS:[I

    new-array v2, v1, [I

    const v4, 0x101047c

    aput v4, v2, v3

    .line 100
    sput-object v2, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    new-array v2, v1, [I

    const v4, 0x10103e1

    aput v4, v2, v3

    .line 110
    sput-object v2, Landroid/support/transition/Styleable;->FADE:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 120
    fill-array-data v2, :array_86

    sput-object v2, Landroid/support/transition/Styleable;->CHANGE_TRANSFORM:[I

    new-array v2, v1, [I

    const v4, 0x1010430

    aput v4, v2, v3

    .line 133
    sput-object v2, Landroid/support/transition/Styleable;->SLIDE:[I

    new-array v2, v1, [I

    const v4, 0x10103e0

    aput v4, v2, v3

    .line 143
    sput-object v2, Landroid/support/transition/Styleable;->TRANSITION_SET:[I

    new-array v0, v0, [I

    .line 153
    fill-array-data v0, :array_8e

    sput-object v0, Landroid/support/transition/Styleable;->ARC_MOTION:[I

    new-array v0, v1, [I

    const v1, 0x10104ca

    aput v1, v0, v3

    .line 169
    sput-object v0, Landroid/support/transition/Styleable;->PATTERN_PATH_MOTION:[I

    return-void

    :array_60
    .array-data 0x4
        0x2ft 0x0t 0x1t 0x1t
        0xdct 0x3t 0x1t 0x1t
        0x41t 0x4t 0x1t 0x1t
        0x42t 0x4t 0x1t 0x1t
        0x4dt 0x4t 0x1t 0x1t
        0x4et 0x4t 0x1t 0x1t
    .end array-data

    :array_70
    .array-data 0x4
        0xddt 0x3t 0x1t 0x1t
        0xdet 0x3t 0x1t 0x1t
        0xdft 0x3t 0x1t 0x1t
    .end array-data

    :array_7a
    .array-data 0x4
        0x41t 0x1t 0x1t 0x1t
        0x98t 0x1t 0x1t 0x1t
        0xe2t 0x3t 0x1t 0x1t
        0x4ft 0x4t 0x1t 0x1t
    .end array-data

    :array_86
    .array-data 0x4
        0xbct 0x4t 0x1t 0x1t
        0xbdt 0x4t 0x1t 0x1t
    .end array-data

    :array_8e
    .array-data 0x4
        0x7dt 0x4t 0x1t 0x1t
        0x7et 0x4t 0x1t 0x1t
        0x7ft 0x4t 0x1t 0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
