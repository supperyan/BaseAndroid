.class public final Lcn/jiguang/ar/k;
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

.field private b:Lcn/jiguang/ar/l;

.field private c:Lcn/jiguang/ar/i;

.field private d:Lcn/jiguang/ar/r;

.field private e:Lcn/jiguang/ar/g;

.field private f:Lcn/jiguang/ar/q;


# direct methods
.method public constructor <init>(Lcn/jiguang/ar/l;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Lcn/jiguang/ar/r;

    const/4 v1, 0x5

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/jiguang/ar/r;-><init>(IILcn/jiguang/ar/a;)V

    iput-object v0, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    new-instance v0, Lcn/jiguang/ar/g;

    invoke-direct {v0}, Lcn/jiguang/ar/g;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/k;->e:Lcn/jiguang/ar/g;

    iput-object p1, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    return-void
.end method

.method private a()V
    .registers 7

    iget-object v0, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect: use last good v4 address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SisConn"

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/h;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-void

    :cond_2d
    iget-object v0, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connect: use last good v6 address="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/h;)Z

    move-result v0

    if-eqz v0, :cond_58

    return-void

    :cond_58
    invoke-direct {p0}, Lcn/jiguang/ar/k;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v1, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_63
    invoke-static {v0}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connect: use defaultConn="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/ar/h;

    invoke-direct {p0, v3}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/h;)Z

    move-result v3

    if-eqz v3, :cond_7c

    return-void

    :cond_8f
    invoke-static {}, Lcn/jiguang/as/m;->a()Lcn/jiguang/as/m;

    move-result-object v1

    iget-object v3, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v3, v3, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/aq/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcn/jiguang/as/m;->a(Ljava/lang/String;J)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    if-eqz v1, :cond_af

    iget-object v0, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connect: use srv address"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/ar/h;

    invoke-direct {p0, v1}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/h;)Z

    move-result v1

    if-eqz v1, :cond_c4

    :cond_d6
    return-void
.end method

.method private a(Ljava/util/LinkedHashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/jiguang/ar/e;->a(Landroid/content/Context;Ljava/util/LinkedHashSet;J)Ljava/util/LinkedHashSet;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect: last good sis info"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SisConn"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/ar/h;

    invoke-direct {p0, v0}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/h;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_2c

    :cond_3f
    return-void
.end method

.method private a(Ljava/util/LinkedHashSet;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/ar/k;->e:Lcn/jiguang/ar/g;

    invoke-virtual {v0}, Lcn/jiguang/ar/g;->a()V

    iget-object v0, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    invoke-virtual {v0}, Lcn/jiguang/ar/r;->b()V

    iget-object v0, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v0, v0, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcn/jiguang/ar/e;->a(Landroid/content/Context;Ljava/util/LinkedHashSet;J)Ljava/util/LinkedHashSet;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect: new sis info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SisConn"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/ar/h;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gez v5, :cond_53

    invoke-direct {p0, v2}, Lcn/jiguang/ar/k;->a(Lcn/jiguang/ar/h;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_53
    return-void

    :cond_54
    const-string v0, "after connect use new sis, wait connect Result"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_66

    return-void

    :cond_66
    iget-object v0, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/ar/r;->a(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6f

    return-void

    :cond_6f
    iget-object v0, p0, Lcn/jiguang/ar/k;->f:Lcn/jiguang/ar/q;

    if-eqz v0, :cond_74

    return-void

    :cond_74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7d
    :goto_7d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/ar/h;

    iget-object v3, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v2, v2, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_97
    iget-object p1, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    invoke-virtual {p1}, Lcn/jiguang/ar/l;->a()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a6

    if-nez p1, :cond_a4

    goto :goto_a6

    :cond_a4
    const/4 p1, 0x0

    goto :goto_a7

    :cond_a6
    :goto_a6
    const/4 p1, 0x1

    :goto_a7
    iget-object v4, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v4, v4, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/ar/h;->a(Ljava/lang/String;)Lcn/jiguang/ar/h;

    move-result-object p1

    if-eqz p1, :cond_14c

    invoke-static {}, Lcn/jiguang/au/a;->a()Lcn/jiguang/au/a;

    move-result-object v4

    iget-object v5, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v5, v5, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    iget-object v6, p1, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    const-wide/16 v7, 0xbb8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcn/jiguang/au/a;->a(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_14c

    array-length v5, v4

    if-lez v5, :cond_14c

    aget-object v4, v4, v2

    iput-object v4, p1, Lcn/jiguang/ar/h;->c:Ljava/net/InetAddress;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0xa

    cmp-long v8, v4, v6

    if-gez v8, :cond_e2

    return-void

    :cond_e2
    new-instance v6, Lcn/jiguang/ar/q;

    iget-object v7, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    invoke-direct {v6, v7, p1, v0}, Lcn/jiguang/ar/q;-><init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/h;Ljava/util/Set;)V

    iput-object v6, p0, Lcn/jiguang/ar/k;->f:Lcn/jiguang/ar/q;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "second sis, addr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", failIps="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcn/jiguang/ar/k;->f:Lcn/jiguang/ar/q;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xb

    :try_start_10f
    const-string v9, "ASYNC"

    const/4 v10, 0x0

    new-array v11, v3, [Ljava/lang/Object;

    aput-object p1, v11, v2

    invoke-static/range {v6 .. v11}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/jiguang/ar/n;

    if-eqz p1, :cond_126

    iget-object v0, p1, Lcn/jiguang/ar/n;->a:Ljava/util/LinkedHashSet;

    goto :goto_127

    :cond_126
    const/4 v0, 0x0

    :goto_127
    if-eqz v0, :cond_139

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_139

    iget-object v2, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object p1, p1, Lcn/jiguang/ar/n;->g:Lcn/jiguang/ar/h;

    invoke-virtual {v2, p1}, Lcn/jiguang/ar/l;->a(Lcn/jiguang/ar/h;)V

    invoke-direct {p0, v0, p2, p3}, Lcn/jiguang/ar/k;->a(Ljava/util/LinkedHashSet;J)V
    :try_end_139
    .catchall {:try_start_10f .. :try_end_139} :catchall_13a

    :cond_139
    return-void

    :catchall_13a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "second sis e:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    return-void
.end method

.method private a(Lcn/jiguang/ar/h;)Z
    .registers 13

    iget-object v0, p0, Lcn/jiguang/ar/k;->c:Lcn/jiguang/ar/i;

    iget-boolean v0, v0, Lcn/jiguang/ar/i;->a:Z

    const/4 v1, 0x0

    const/16 v2, -0x3df

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    new-instance p1, Lcn/jiguang/at/e;

    invoke-direct {p1, v2, v1}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    :goto_f
    iget-object v0, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    invoke-virtual {v0, p1}, Lcn/jiguang/ar/r;->a(Ljava/lang/Object;)V

    return v3

    :cond_15
    iget-object v0, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    invoke-virtual {v0}, Lcn/jiguang/ar/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    return v3

    :cond_1e
    const/4 v0, 0x0

    if-eqz p1, :cond_a6

    invoke-virtual {p1}, Lcn/jiguang/ar/h;->a()Z

    move-result v4

    if-eqz v4, :cond_a6

    iget-object v4, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto/16 :goto_a6

    :cond_31
    invoke-static {}, Lcn/jiguang/au/a;->a()Lcn/jiguang/au/a;

    move-result-object v5

    iget-object v4, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v6, v4, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    iget-object v7, p1, Lcn/jiguang/ar/h;->a:Ljava/lang/String;

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcn/jiguang/au/a;->a(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_a6

    array-length v5, v4

    if-nez v5, :cond_48

    goto :goto_a6

    :cond_48
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    iget-object v6, p0, Lcn/jiguang/ar/k;->c:Lcn/jiguang/ar/i;

    iget-boolean v6, v6, Lcn/jiguang/ar/i;->a:Z

    if-eqz v6, :cond_6c

    new-instance p1, Lcn/jiguang/at/e;

    invoke-direct {p1, v2, v1}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    goto :goto_f

    :cond_6c
    iget-object v6, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    invoke-virtual {v6}, Lcn/jiguang/ar/r;->a()Z

    move-result v6

    if-eqz v6, :cond_75

    return v3

    :cond_75
    new-instance v6, Lcn/jiguang/ar/h;

    iget v7, p1, Lcn/jiguang/ar/h;->b:I

    invoke-direct {v6, v5, v7}, Lcn/jiguang/ar/h;-><init>(Ljava/net/InetAddress;I)V

    iget-object v5, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    iget-object v5, p0, Lcn/jiguang/ar/k;->e:Lcn/jiguang/ar/g;

    invoke-virtual {v5, v6}, Lcn/jiguang/ar/g;->a(Lcn/jiguang/ar/h;)Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v1, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    new-instance v2, Lcn/jiguang/ar/b;

    iget-object v3, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v4, p0, Lcn/jiguang/ar/k;->e:Lcn/jiguang/ar/g;

    iget-object v5, p0, Lcn/jiguang/ar/k;->c:Lcn/jiguang/ar/i;

    invoke-direct {v2, v3, v1, v4, v5}, Lcn/jiguang/ar/b;-><init>(Lcn/jiguang/ar/l;Lcn/jiguang/ar/r;Lcn/jiguang/ar/g;Lcn/jiguang/ar/i;)V

    invoke-virtual {v1, v2}, Lcn/jiguang/ar/r;->a(Ljava/util/concurrent/Callable;)V

    :cond_a1
    iget-object v1, p0, Lcn/jiguang/ar/k;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_a6
    :goto_a6
    return v0
.end method

.method private b()Ljava/util/LinkedHashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/ar/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v1, v1, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "SisConn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load Default Conn, from host="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    return-object v0

    :cond_23
    invoke-static {}, Lcn/jiguang/au/a;->a()Lcn/jiguang/au/a;

    move-result-object v2

    iget-object v1, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v3, v1, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/jiguang/au/a;->a(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_b2

    array-length v2, v1

    if-nez v2, :cond_38

    goto :goto_b2

    :cond_38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    return-object v0

    :cond_47
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b58

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b5a

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b5b

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b5c

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b5d

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b5e

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b5f

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b60

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcn/jiguang/ar/h;

    const/16 v4, 0x1b61

    invoke-direct {v3, v1, v4}, Lcn/jiguang/ar/h;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catchall {:try_start_1 .. :try_end_b1} :catchall_b2

    return-object v2

    :catchall_b2
    :cond_b2
    :goto_b2
    return-object v0
.end method


# virtual methods
.method public final a(Lcn/jiguang/ar/i;)Lcn/jiguang/aw/a;
    .registers 15

    iput-object p1, p0, Lcn/jiguang/ar/k;->c:Lcn/jiguang/ar/i;

    const-string p1, "SisConn"

    const-string v0, "start sisAndConnect..."

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/ar/g;

    invoke-direct {v0}, Lcn/jiguang/ar/g;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ar/k;->e:Lcn/jiguang/ar/g;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    add-long/2addr v0, v2

    iget-object v4, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v4, v4, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->H()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcn/jiguang/ar/h;->b(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iget-object v7, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v7, v7, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v7}, Lcn/jiguang/f/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v8, v8, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_44

    :goto_42
    const/4 v7, 0x1

    goto :goto_6f

    :cond_44
    invoke-static {}, Lcn/jiguang/g/a;->D()Lcn/jiguang/g/a;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "newType="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " last="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6e

    goto :goto_42

    :cond_6e
    const/4 v7, 0x0

    :goto_6f
    iget-object v8, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v8, v8, Lcn/jiguang/ar/l;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/g/a;->K()Lcn/jiguang/g/a;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    if-nez v7, :cond_8d

    const-wide/32 v11, 0x2bf20

    invoke-static {v8, v9, v11, v12}, Lcn/jiguang/f/k;->a(JJ)Z

    move-result v7

    if-nez v7, :cond_8d

    const/4 v10, 0x1

    :cond_8d
    if-eqz v5, :cond_94

    if-eqz v10, :cond_94

    invoke-direct {p0, v4}, Lcn/jiguang/ar/k;->a(Ljava/util/LinkedHashSet;)V

    :cond_94
    iget-object v7, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    invoke-virtual {v7, v2, v3}, Lcn/jiguang/ar/l;->a(J)Lcn/jiguang/ar/n;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a0

    iget-object v7, v2, Lcn/jiguang/ar/n;->a:Ljava/util/LinkedHashSet;

    goto :goto_a1

    :cond_a0
    move-object v7, v3

    :goto_a1
    if-eqz v7, :cond_b4

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b4

    iget-object v4, p0, Lcn/jiguang/ar/k;->b:Lcn/jiguang/ar/l;

    iget-object v2, v2, Lcn/jiguang/ar/n;->g:Lcn/jiguang/ar/h;

    invoke-virtual {v4, v2}, Lcn/jiguang/ar/l;->a(Lcn/jiguang/ar/h;)V

    invoke-direct {p0, v7, v0, v1}, Lcn/jiguang/ar/k;->a(Ljava/util/LinkedHashSet;J)V

    goto :goto_bb

    :cond_b4
    if-eqz v5, :cond_bb

    if-nez v10, :cond_bb

    invoke-direct {p0, v4}, Lcn/jiguang/ar/k;->a(Ljava/util/LinkedHashSet;)V

    :cond_bb
    :goto_bb
    invoke-direct {p0}, Lcn/jiguang/ar/k;->a()V

    const-string v0, "wait final result..."

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/ar/k;->d:Lcn/jiguang/ar/r;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/ar/r;->a(J)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/jiguang/aw/a;

    if-eqz v1, :cond_d8

    const-string v1, "connect succeed"

    invoke-static {p1, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcn/jiguang/aw/a;

    return-object v0

    :cond_d8
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_f0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "all sis and connect failed, e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    throw v0

    :cond_f0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "all sis and connect failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcn/jiguang/at/e;

    invoke-direct {p1, v6, v3}, Lcn/jiguang/at/e;-><init>(ILjava/lang/String;)V

    goto :goto_108

    :goto_107
    throw p1

    :goto_108
    goto :goto_107
.end method
