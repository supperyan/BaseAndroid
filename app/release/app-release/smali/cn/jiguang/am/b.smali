.class public final Lcn/jiguang/am/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile i:Lcn/jiguang/am/b;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/am/b;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->a:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->b:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->c:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->d:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->e:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->f:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->g:Z

    iput-boolean v0, p0, Lcn/jiguang/am/b;->h:Z

    invoke-static {}, Lcn/jiguang/am/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->a:Z

    invoke-static {}, Lcn/jiguang/am/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->b:Z

    invoke-static {}, Lcn/jiguang/am/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->c:Z

    invoke-static {}, Lcn/jiguang/am/b;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->d:Z

    invoke-static {}, Lcn/jiguang/am/b;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->e:Z

    invoke-static {}, Lcn/jiguang/am/b;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->f:Z

    invoke-static {}, Lcn/jiguang/am/b;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->g:Z

    invoke-static {}, Lcn/jiguang/am/b;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/am/b;->h:Z

    return-void
.end method

.method public static a()Lcn/jiguang/am/b;
    .registers 2

    sget-object v0, Lcn/jiguang/am/b;->i:Lcn/jiguang/am/b;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/am/b;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/am/b;->i:Lcn/jiguang/am/b;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/am/b;

    invoke-direct {v1}, Lcn/jiguang/am/b;-><init>()V

    sput-object v1, Lcn/jiguang/am/b;->i:Lcn/jiguang/am/b;

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
    sget-object v0, Lcn/jiguang/am/b;->i:Lcn/jiguang/am/b;

    return-object v0
.end method

.method private static e()Z
    .registers 4

    const-string v0, "isPluginJpushSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jpush.android.api.JPushInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static f()Z
    .registers 4

    const-string v0, "isPluginJMessageSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jpush.im.android.api.JMessageClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static g()Z
    .registers 4

    const-string v0, "isPluginJanalyticsSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jiguang.analytics.android.api.JAnalyticsInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static h()Z
    .registers 4

    const-string v0, "isPluginJshareSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jiguang.share.android.api.JShareInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static i()Z
    .registers 4

    const-string v0, "isPluginJSspSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jiguang.adsdk.api.JSSPInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static j()Z
    .registers 4

    const-string v0, "isPluginJCommonSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jiguang.h.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static k()Z
    .registers 4

    const-string v0, "isPluginJVerificationSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jiguang.verifysdk.api.JVerificationInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static l()Z
    .registers 4

    const-string v0, "isPluginJMLinkSDK:"

    const-string v1, "JClientsHelper"

    :try_start_4
    const-string v2, "cn.jiguang.jmlinksdk.core.JMlinkInterfaceImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    goto :goto_20

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcn/jiguang/am/b;->b:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcn/jiguang/am/b;->a:Z

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcn/jiguang/am/b;->b:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/jiguang/am/b;->a:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method
