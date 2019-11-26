.class public Lcn/jiguang/au/c;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static a:I

.field private static b:Lcn/jiguang/au/c;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/au/c;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Z)I
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dummy"

    invoke-static {v5, v6}, Lcn/jiguang/f/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wlan"

    invoke-static {v5, v6}, Lcn/jiguang/f/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz p0, :cond_2d

    if-eqz v5, :cond_6

    :cond_2d
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_31

    invoke-static {v6}, Lcn/jiguang/au/c;->a(Ljava/net/InetAddress;)Z

    move-result v6
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_53

    if-eqz v6, :cond_31

    if-eqz v5, :cond_4d

    const/4 p0, 0x3

    return p0

    :cond_4d
    const/4 v2, 0x1

    goto :goto_31

    :cond_4f
    if-eqz v2, :cond_52

    return v0

    :cond_52
    return v4

    :catch_53
    const-string p0, "IpvxHelper"

    const-string v1, "checkIpvxSupport:"

    invoke-static {p0, v1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a()Lcn/jiguang/au/c;
    .registers 2

    sget-object v0, Lcn/jiguang/au/c;->b:Lcn/jiguang/au/c;

    if-nez v0, :cond_17

    const-class v0, Lcn/jiguang/au/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/au/c;->b:Lcn/jiguang/au/c;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/au/c;

    invoke-direct {v1}, Lcn/jiguang/au/c;-><init>()V

    sput-object v1, Lcn/jiguang/au/c;->b:Lcn/jiguang/au/c;

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
    sget-object v0, Lcn/jiguang/au/c;->b:Lcn/jiguang/au/c;

    return-object v0
.end method

.method public static a(I)V
    .registers 2

    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    if-ltz p0, :cond_7

    sput p0, Lcn/jiguang/au/c;->a:I

    :cond_7
    return-void
.end method

.method private static a(Ljava/net/InetAddress;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fe80"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :catchall_18
    :cond_18
    return v0
.end method

.method public static b(I)I
    .registers 4

    sget v0, Lcn/jiguang/au/c;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_10

    :cond_9
    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_e

    return v0

    :cond_e
    return v1

    :cond_f
    return v2

    :cond_10
    :goto_10
    sget p0, Lcn/jiguang/au/c;->a:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .registers 14

    const-string v0, "IpvxHelper"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcn/jiguang/f/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "wifi"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {p1}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {p1}, Lcn/jiguang/f/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_1b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_f3

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    const-string v7, " "

    const-string v8, "net="

    if-eqz v4, :cond_29

    if-eqz v5, :cond_6a

    :cond_29
    :try_start_29
    iget-object v9, p0, Lcn/jiguang/au/c;->c:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_6a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_6a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " get cache support="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_6a
    if-eqz v5, :cond_98

    invoke-static {v3}, Lcn/jiguang/g/a;->g(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v9

    invoke-static {p1, v9}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_7a
    .catchall {:try_start_29 .. :try_end_7a} :catchall_f3

    :try_start_7a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " get wifi history support="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    :cond_98
    const/4 v9, 0x0

    :goto_99
    if-nez v9, :cond_d5

    invoke-static {v4}, Lcn/jiguang/au/c;->a(Z)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " get networkinterface support="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_d5

    new-array v6, v6, [Lcn/jiguang/g/a;

    invoke-static {v3}, Lcn/jiguang/g/a;->g(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p1, v6}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    :try_end_d1
    .catchall {:try_start_7a .. :try_end_d1} :catchall_d2

    goto :goto_d5

    :catchall_d2
    move-exception p1

    move v1, v9

    goto :goto_f4

    :cond_d5
    :goto_d5
    move v1, v9

    if-eqz v4, :cond_da

    if-eqz v5, :cond_105

    :cond_da
    :try_start_da
    iget-object p1, p0, Lcn/jiguang/au/c;->c:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f2
    .catchall {:try_start_da .. :try_end_f2} :catchall_f3

    goto :goto_105

    :catchall_f3
    move-exception p1

    :goto_f4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPreferVx e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    :goto_105
    return v1
.end method

.method public final a(Landroid/content/Context;I)V
    .registers 9

    invoke-static {p1}, Lcn/jiguang/f/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p1}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {p1}, Lcn/jiguang/f/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_17
    const-string v2, ""

    :goto_19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v1, :cond_23

    if-eqz v3, :cond_3b

    :cond_23
    iget-object v1, p0, Lcn/jiguang/au/c;->c:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    if-eqz v3, :cond_51

    new-array v0, v4, [Lcn/jiguang/g/a;

    const/4 v1, 0x0

    invoke-static {v2}, Lcn/jiguang/g/a;->g(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_51
    return-void
.end method
