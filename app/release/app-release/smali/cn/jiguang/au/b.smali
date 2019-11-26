.class final Lcn/jiguang/au/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcn/jiguang/au/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/jiguang/au/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/au/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/au/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/jiguang/au/b;->c:Lcn/jiguang/au/a;

    return-void
.end method

.method private a()[Ljava/net/InetAddress;
    .registers 15

    const-string v0, "DNSLoader"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcn/jiguang/au/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_1d

    :catch_a
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dns resolve failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_1d
    if-eqz v2, :cond_df

    array-length v3, v2

    if-lez v3, :cond_df

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_31
    const/4 v10, 0x1

    if-ge v7, v5, :cond_69

    aget-object v11, v2, v7

    const/4 v12, 0x3

    if-ge v8, v12, :cond_43

    instance-of v13, v11, Ljava/net/Inet4Address;

    if-eqz v13, :cond_43

    add-int/lit8 v8, v8, 0x1

    :goto_3f
    move v13, v9

    move v9, v8

    const/4 v8, 0x1

    goto :goto_4f

    :cond_43
    if-ge v9, v12, :cond_4c

    instance-of v13, v11, Ljava/net/Inet6Address;

    if-eqz v13, :cond_4c

    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    :cond_4c
    move v13, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_4f
    if-eqz v8, :cond_60

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    if-ne v9, v12, :cond_64

    if-eq v13, v12, :cond_69

    :cond_64
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    move v9, v13

    goto :goto_31

    :cond_69
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e0

    new-array v1, v6, [Ljava/net/InetAddress;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "update dns cache url="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/jiguang/au/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " resolved="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/au/b;->c:Lcn/jiguang/au/a;

    invoke-static {v0}, Lcn/jiguang/au/a;->a(Lcn/jiguang/au/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcn/jiguang/au/b;->b:Ljava/lang/String;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_ae
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jiguang/au/b;->a:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Lcn/jiguang/g/a;

    iget-object v7, p0, Lcn/jiguang/au/b;->b:Ljava/lang/String;

    invoke-static {v7}, Lcn/jiguang/g/a;->b(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v4

    aput-object v4, v5, v6

    iget-object v4, p0, Lcn/jiguang/au/b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcn/jiguang/g/a;->c(Ljava/lang/String;)Lcn/jiguang/g/a;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-static {v0, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    :try_end_de
    .catchall {:try_start_ae .. :try_end_de} :catchall_e0

    goto :goto_e0

    :cond_df
    move-object v1, v2

    :catchall_e0
    :cond_e0
    :goto_e0
    return-object v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/au/b;->a()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
