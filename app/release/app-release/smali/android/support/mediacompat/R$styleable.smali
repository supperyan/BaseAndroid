.class public final Landroid/support/mediacompat/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I = null

.field public static final FontFamilyFont:[I = null

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 165
    fill-array-data v0, :array_12

    sput-object v0, Landroid/support/mediacompat/R$styleable;->FontFamily:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 172
    fill-array-data v0, :array_22

    sput-object v0, Landroid/support/mediacompat/R$styleable;->FontFamilyFont:[I

    return-void

    :array_12
    .array-data 0x4
        0xd2t 0x0t 0x3t 0x7ft
        0xd3t 0x0t 0x3t 0x7ft
        0xd4t 0x0t 0x3t 0x7ft
        0xd5t 0x0t 0x3t 0x7ft
        0xd6t 0x0t 0x3t 0x7ft
        0xd7t 0x0t 0x3t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0x32t 0x5t 0x1t 0x1t
        0x33t 0x5t 0x1t 0x1t
        0x3ft 0x5t 0x1t 0x1t
        0x6ft 0x5t 0x1t 0x1t
        0x70t 0x5t 0x1t 0x1t
        0xd0t 0x0t 0x3t 0x7ft
        0xd8t 0x0t 0x3t 0x7ft
        0xd9t 0x0t 0x3t 0x7ft
        0xdat 0x0t 0x3t 0x7ft
        0xf9t 0x1t 0x3t 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
