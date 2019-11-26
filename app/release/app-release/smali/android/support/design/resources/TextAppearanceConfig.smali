.class public Landroid/support/design/resources/TextAppearanceConfig;
.super Ljava/lang/Object;
.source "TextAppearanceConfig.java"


# static fields
.field private static shouldLoadFontSynchronously:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShouldLoadFontSynchronously(Z)V
    .registers 1
    .parameter

    .line 32
    sput-boolean p0, Landroid/support/design/resources/TextAppearanceConfig;->shouldLoadFontSynchronously:Z

    return-void
.end method

.method public static shouldLoadFontSynchronously()Z
    .registers 1

    .line 37
    sget-boolean v0, Landroid/support/design/resources/TextAppearanceConfig;->shouldLoadFontSynchronously:Z

    return v0
.end method
