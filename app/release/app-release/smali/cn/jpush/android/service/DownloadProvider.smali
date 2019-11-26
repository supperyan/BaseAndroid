.class public Lcn/jpush/android/service/DownloadProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private init()V
    .registers 3

    const-string v0, "DownloadProvider"

    :try_start_2
    sget-boolean v1, Lcn/jiguang/internal/JConstants;->AT_I:Z

    if-nez v1, :cond_c

    const-string v1, "please call init"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/api/JCoreManager;->init(Landroid/content/Context;)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-string v0, "DownloadProvider"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", arg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/internal/JCoreInternalHelper;->getInstance()Lcn/jiguang/internal/JCoreInternalHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcn/jiguang/internal/JCoreInternalHelper;->directHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "call e:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DownloadProvider query:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadProvider"

    invoke-static {p2, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13
    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "type"

    const/4 p4, 0x4

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "waked"

    invoke-static {p3, p4, p1}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_41

    :catchall_2b
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "wake error:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    invoke-direct {p0}, Lcn/jpush/android/service/DownloadProvider;->init()V

    const/4 p1, 0x0

    return p1
.end method
