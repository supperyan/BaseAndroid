.class public Lcn/jpush/android/f/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 6

    const-string v0, "ResourceHelper"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpush_notification_icon"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2f

    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    const-string p0, "JPush.mPackageInconId == 0 ?, get icon from application info."

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_29

    goto :goto_2f

    :catchall_29
    move-exception p0

    const-string v2, "failed to get application info and icon."

    invoke-static {v0, v2, p0}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    return v1
.end method
