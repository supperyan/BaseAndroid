.class public final Lcn/jiguang/ar/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/ar/n;",
        ">;"
    }
.end annotation


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

.field private b:Lcn/jiguang/ar/l;


# direct methods
.method public constructor <init>(Lcn/jiguang/ar/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Lcn/jiguang/ar/j;->b:Lcn/jiguang/ar/l;

    return-void
.end method

.method private a(Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)V
    .registers 9

    iget-object v0, p0, Lcn/jiguang/ar/j;->b:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->M()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ar/h;->b(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcn/jiguang/aq/a;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v0

    :cond_20
    iget-object v1, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "main sis: default sis"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sis"

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/ar/h;

    invoke-direct {p0, v3, p1, p2}, Lcn/jiguang/ar/j;->a(Lcn/jiguang/ar/h;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)Z

    move-result v3

    if-eqz v3, :cond_40

    return-void

    :cond_53
    invoke-static {}, Lcn/jiguang/as/m;->a()Lcn/jiguang/as/m;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/aq/a;->c()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcn/jiguang/as/m;->a(Ljava/lang/String;J)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_6f

    iget-object v0, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "main sis: sis srv"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/ar/h;

    invoke-direct {p0, v1, p1, p2}, Lcn/jiguang/ar/j;->a(Lcn/jiguang/ar/h;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)Z

    move-result v1

    if-eqz v1, :cond_84

    :cond_96
    return-void
.end method

.method private a(Lcn/jiguang/ar/h;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)Z
    .registers 13

    invoke-virtual {p2}, Lcn/jiguang/ar/r;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Lcn/jiguang/ar/h;->a()Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_79

    :cond_1a
    invoke-static {}, Lcn/jiguang/au/a;->a()Lcn/jiguang/au/a;

    move-result-object v3

    iget-object v2, p0, Lcn/jiguang/ar/j;->b:Lcn/jiguang/ar/l;

    iget-object v4, v2, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    iget-object v5, p1, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcn/jiguang/au/a;->a(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_79

    array-length v3, v2

    if-nez v3, :cond_31

    goto :goto_79

    :cond_31
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {p2}, Lcn/jiguang/ar/r;->a()Z

    move-result v4

    if-eqz v4, :cond_50

    return v1

    :cond_50
    new-instance v4, Lcn/jiguang/ar/h;

    iget v5, p1, Lcn/jiguang/ar/h;->b:I

    invoke-direct {v4, v3, v5}, Lcn/jiguang/ar/h;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p3, v4}, Lcn/jiguang/ar/g;->a(Lcn/jiguang/ar/h;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v1, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcn/jiguang/ar/q;

    iget-object v2, p0, Lcn/jiguang/ar/j;->b:Lcn/jiguang/ar/l;

    invoke-direct {v1, v2, p2, p3}, Lcn/jiguang/ar/q;-><init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)V

    invoke-virtual {p2, v1}, Lcn/jiguang/ar/r;->a(Ljava/util/concurrent/Callable;)V

    :cond_74
    iget-object p2, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_79
    :goto_79
    return v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 9

    new-instance v0, Lcn/jiguang/ar/g;

    invoke-direct {v0}, Lcn/jiguang/ar/g;-><init>()V

    new-instance v1, Lcn/jiguang/ar/r;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x7d0

    invoke-direct {v1, v3, v4, v2}, Lcn/jiguang/ar/r;-><init>(IILcn/jiguang/ar/a;)V

    invoke-static {}, Lcn/jiguang/aq/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/ar/h;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v3

    iget-object v4, p0, Lcn/jiguang/ar/j;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "main sis: sis host="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sis"

    invoke-static {v5, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jiguang/ar/h;

    invoke-direct {p0, v4, v1, v0}, Lcn/jiguang/ar/j;->a(Lcn/jiguang/ar/h;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)Z

    move-result v4

    if-nez v4, :cond_9a

    goto :goto_36

    :cond_49
    iget-object v3, p0, Lcn/jiguang/ar/j;->b:Lcn/jiguang/ar/l;

    iget-object v3, v3, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v4}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "main sis: last good sis v4 address="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1, v0}, Lcn/jiguang/ar/j;->a(Lcn/jiguang/ar/h;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)Z

    move-result v3

    if-nez v3, :cond_9a

    iget-object v3, p0, Lcn/jiguang/ar/j;->b:Lcn/jiguang/ar/l;

    iget-object v3, v3, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v4}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "main sis: last good sis v6 address="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1, v0}, Lcn/jiguang/ar/j;->a(Lcn/jiguang/ar/h;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)Z

    :cond_9a
    const-string v3, "main sis: after host and last good, wait Result"

    invoke-static {v5, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v3, v4}, Lcn/jiguang/ar/r;->a(J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcn/jiguang/ar/n;

    if-eqz v7, :cond_ad

    check-cast v6, Lcn/jiguang/ar/n;

    return-object v6

    :cond_ad
    invoke-direct {p0, v1, v0}, Lcn/jiguang/ar/j;->a(Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;)V

    const-string v0, "main sis: after default and srv, wait Result"

    invoke-static {v5, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcn/jiguang/ar/r;->a(J)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/jiguang/ar/n;

    if-eqz v1, :cond_c0

    check-cast v0, Lcn/jiguang/ar/n;

    return-object v0

    :cond_c0
    return-object v2
.end method
