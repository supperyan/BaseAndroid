.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .parameter
    .parameter

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_1b

    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_19

    .line 34
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    if-nez p1, :cond_2c

    .line 36
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2a

    .line 37
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 39
    :cond_2c
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 40
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_41

    .line 41
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 42
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .parameter
    .parameter

    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_7

    const/4 v2, -0x1

    goto :goto_b

    .line 47
    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_b
    if-nez p1, :cond_f

    const/4 v0, -0x1

    goto :goto_13

    .line 48
    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_13
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_19

    const/4 p0, -0x1

    goto :goto_1d

    .line 50
    :cond_19
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_1d
    if-nez p1, :cond_21

    const/4 p1, -0x1

    goto :goto_25

    .line 52
    :cond_21
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_25
    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v1, :cond_34

    if-ne p0, v1, :cond_2f

    goto :goto_34

    :cond_2f
    mul-int v2, v2, p0

    add-int/2addr p0, v2

    sub-int/2addr p0, v5

    goto :goto_38

    :cond_34
    :goto_34
    const p0, 0x7fffffff

    const/4 v2, 0x0

    :goto_38
    if-eq v0, v1, :cond_43

    if-ne p1, v1, :cond_3d

    goto :goto_43

    :cond_3d
    mul-int v0, v0, p1

    add-int/2addr p1, v0

    add-int/lit8 v3, p1, -0x1

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x0

    :goto_44
    if-gt v2, v0, :cond_49

    if-gt v0, p0, :cond_49

    return v5

    :cond_49
    if-gt v2, v3, :cond_4e

    if-gt v3, p0, :cond_4e

    return v5

    :cond_4e
    return v4
.end method
