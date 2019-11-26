.class public final Lcn/jiguang/ar/g;
.super Ljava/lang/Object;


# annotations


# instance fields
.field private a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/g;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/g;->b:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    return-void
.end method

.method private a(ZZ)Lcn/jiguang/ar/h;
    .registers 9

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcn/jiguang/ar/g;->b:Ljava/util/LinkedHashSet;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcn/jiguang/ar/g;->a:Ljava/util/LinkedHashSet;

    :goto_7
    if-eqz p2, :cond_b

    const/4 p2, 0x0

    goto :goto_12

    :cond_b
    if-eqz p1, :cond_10

    iget-object p2, p0, Lcn/jiguang/ar/g;->a:Ljava/util/LinkedHashSet;

    goto :goto_12

    :cond_10
    iget-object p2, p0, Lcn/jiguang/ar/g;->b:Ljava/util/LinkedHashSet;

    :goto_12
    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_5c

    :cond_1b
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_55

    :cond_24
    iget-object v1, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_30

    goto :goto_53

    :cond_30
    iget-object v1, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_37
    iget-object v5, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-lt v1, v5, :cond_52

    iget-object v5, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, p1, :cond_4f

    goto :goto_53

    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    :cond_52
    const/4 v2, 0x1

    :goto_53
    if-eqz v2, :cond_5c

    :cond_55
    :goto_55
    invoke-static {p2}, Lcn/jiguang/ar/g;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    :goto_59
    check-cast p1, Lcn/jiguang/ar/h;

    return-object p1

    :cond_5c
    :goto_5c
    invoke-static {v0}, Lcn/jiguang/ar/g;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_59
.end method

.method private static a(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1b

    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1b
    :goto_1b
    return-object v0
.end method


# virtual methods
.method public final a(I)Lcn/jiguang/ar/h;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current ipv4List="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ar/g;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ipv6List="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/ar/g;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpPool"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3c

    if-eq p1, v2, :cond_37

    const/4 v3, 0x2

    if-eq p1, v3, :cond_32

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2d

    const/4 p1, 0x0

    goto :goto_40

    :cond_2d
    invoke-direct {p0, v2, v0}, Lcn/jiguang/ar/g;->a(ZZ)Lcn/jiguang/ar/h;

    move-result-object p1

    goto :goto_40

    :cond_32
    invoke-direct {p0, v2, v2}, Lcn/jiguang/ar/g;->a(ZZ)Lcn/jiguang/ar/h;

    move-result-object p1

    goto :goto_40

    :cond_37
    invoke-direct {p0, v0, v2}, Lcn/jiguang/ar/g;->a(ZZ)Lcn/jiguang/ar/h;

    move-result-object p1

    goto :goto_40

    :cond_3c
    invoke-direct {p0, v0, v0}, Lcn/jiguang/ar/g;->a(ZZ)Lcn/jiguang/ar/h;

    move-result-object p1

    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get ipPort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_72

    iget-object v1, p1, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_63
    iget-object v0, p1, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcn/jiguang/ar/g;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    :goto_72
    return-object p1
.end method

.method public final a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ar/g;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcn/jiguang/ar/g;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public final a(Lcn/jiguang/ar/h;)Z
    .registers 3

    invoke-virtual {p1}, Lcn/jiguang/ar/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcn/jiguang/ar/g;->a:Ljava/util/LinkedHashSet;

    :goto_e
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    iget-object v0, p1, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcn/jiguang/ar/g;->b:Ljava/util/LinkedHashSet;

    goto :goto_e

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method
