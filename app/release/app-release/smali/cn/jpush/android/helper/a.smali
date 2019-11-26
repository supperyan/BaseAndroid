.class public Lcn/jpush/android/helper/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/helper/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcn/jpush/android/helper/a;


# instance fields
.field private c:Lcn/jpush/android/helper/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/helper/a;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JPUSH"

    const/16 v3, 0xd

    const-string v4, "ActionHelper"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcn/jpush/android/helper/a;
    .registers 2

    sget-object v0, Lcn/jpush/android/helper/a;->b:Lcn/jpush/android/helper/a;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jpush/android/helper/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jpush/android/helper/a;->b:Lcn/jpush/android/helper/a;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/helper/a;

    invoke-direct {v1}, Lcn/jpush/android/helper/a;-><init>()V

    sput-object v1, Lcn/jpush/android/helper/a;->b:Lcn/jpush/android/helper/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcn/jpush/android/helper/a;->b:Lcn/jpush/android/helper/a;

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/android/helper/a;)Lcn/jpush/android/helper/d;
    .registers 1

    iget-object p0, p0, Lcn/jpush/android/helper/a;->c:Lcn/jpush/android/helper/d;

    return-object p0
.end method

.method static synthetic a(Lcn/jpush/android/helper/a;Lcn/jpush/android/helper/d;)Lcn/jpush/android/helper/d;
    .registers 2

    iput-object p1, p0, Lcn/jpush/android/helper/a;->c:Lcn/jpush/android/helper/d;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionHelper"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    new-instance v0, Lcn/jpush/android/helper/a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/jpush/android/helper/a$a;-><init>(Lcn/jpush/android/helper/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v0, v6, p2

    const-string v2, "JPUSH"

    const/16 v3, 0xb

    const-string v4, "ActionHelper"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
