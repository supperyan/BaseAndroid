.class public Lcn/jpush/android/helper/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/helper/i$a;
    }
.end annotation


# static fields
.field private static a:I = -0x1

.field private static b:I = -0x1

.field private static c:F = -1.0f

.field private static d:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static synthetic a(F)F
    .registers 1

    sput p0, Lcn/jpush/android/helper/i;->c:F

    return p0
.end method

.method public static a()I
    .registers 1

    sget v0, Lcn/jpush/android/helper/i;->a:I

    return v0
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcn/jpush/android/helper/i;->a:I

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    sget v0, Lcn/jpush/android/helper/i;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    sget v0, Lcn/jpush/android/helper/i;->b:I

    if-ne v0, v1, :cond_17

    :cond_9
    invoke-static {p0}, Lcn/jpush/android/helper/i;->c(Landroid/content/Context;)V

    sget v0, Lcn/jpush/android/helper/i;->a:I

    if-eq v0, v1, :cond_14

    sget v0, Lcn/jpush/android/helper/i;->b:I

    if-ne v0, v1, :cond_17

    :cond_14
    invoke-static {p0}, Lcn/jpush/android/helper/i;->b(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method private static a(Landroid/view/View;Lcn/jpush/android/helper/i$a;)V
    .registers 4

    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    :cond_5
    invoke-interface {p1, p0}, Lcn/jpush/android/helper/i$a;->a(Landroid/view/View;)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/jpush/android/helper/i;->a(Landroid/view/View;Lcn/jpush/android/helper/i$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic b(F)F
    .registers 1

    sput p0, Lcn/jpush/android/helper/i;->d:F

    return p0
.end method

.method public static b()I
    .registers 1

    sget v0, Lcn/jpush/android/helper/i;->b:I

    return v0
.end method

.method static synthetic b(I)I
    .registers 1

    sput p0, Lcn/jpush/android/helper/i;->b:I

    return p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 6

    const-string v0, "NotificationStyleHelper"

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1c

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    :goto_20
    :try_start_20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2b

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_2d

    :cond_2b
    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_2d
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begain fetch colors by internal , root view is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/jpush/android/helper/i$1;

    invoke-direct {v1}, Lcn/jpush/android/helper/i$1;-><init>()V

    invoke-static {p0, v1}, Lcn/jpush/android/helper/i;->a(Landroid/view/View;Lcn/jpush/android/helper/i$a;)V
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_55

    goto :goto_6e

    :catchall_55
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationColorInternal error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method public static c()F
    .registers 1

    sget v0, Lcn/jpush/android/helper/i;->c:F

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 6

    const-string v0, "NotificationStyleHelper"

    :try_start_2
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1c

    const-string v2, "subtext"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_25

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    :goto_29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_34

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_36

    :cond_34
    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_36
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begain fetch colors by compat, root view is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/jpush/android/helper/i$2;

    invoke-direct {v1}, Lcn/jpush/android/helper/i$2;-><init>()V

    invoke-static {p0, v1}, Lcn/jpush/android/helper/i;->a(Landroid/view/View;Lcn/jpush/android/helper/i$a;)V
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_62

    goto :goto_7b

    :catchall_62
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationColorCompat error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    return-void
.end method

.method public static d()F
    .registers 1

    sget v0, Lcn/jpush/android/helper/i;->d:F

    return v0
.end method

.method static synthetic e()I
    .registers 1

    sget v0, Lcn/jpush/android/helper/i;->a:I

    return v0
.end method

.method static synthetic f()I
    .registers 1

    sget v0, Lcn/jpush/android/helper/i;->b:I

    return v0
.end method
