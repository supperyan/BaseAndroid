.class public final Lcn/jiguang/as/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;

.field private b:S

.field private c:S


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-short v0, p0, Lcn/jiguang/as/i;->b:S

    iput-short v0, p0, Lcn/jiguang/as/i;->c:S

    return-void
.end method

.method public constructor <init>(Lcn/jiguang/as/j;)V
    .registers 2

    invoke-direct {p0}, Lcn/jiguang/as/i;-><init>()V

    invoke-direct {p0, p1}, Lcn/jiguang/as/i;->b(Lcn/jiguang/as/j;)V

    return-void
.end method

.method private static a(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/as/j;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcn/jiguang/as/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZZ)Ljava/util/Iterator;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_e

    iget-short v1, p0, Lcn/jiguang/as/i;->b:S

    sub-int v1, v0, v1

    goto :goto_10

    :cond_e
    iget-short v1, p0, Lcn/jiguang/as/i;->b:S

    :goto_10
    if-nez v1, :cond_1a

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_5c

    monitor-exit p0

    return-object p1

    :cond_1a
    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    if-nez p2, :cond_21

    const/4 p2, 0x0

    goto :goto_33

    :cond_21
    :try_start_21
    iget-short p2, p0, Lcn/jiguang/as/i;->c:S

    if-lt p2, v1, :cond_27

    iput-short v2, p0, Lcn/jiguang/as/i;->c:S

    :cond_27
    iget-short p2, p0, Lcn/jiguang/as/i;->c:S

    add-int/lit8 v3, p2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lcn/jiguang/as/i;->c:S

    goto :goto_33

    :cond_2f
    iget-short p2, p0, Lcn/jiguang/as/i;->b:S

    sub-int p2, v0, p2

    :goto_33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_56

    iget-object p1, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {p1, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :goto_4b
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_56

    :cond_4f
    iget-object p1, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_4b

    :cond_56
    :goto_56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_5a
    .catchall {:try_start_21 .. :try_end_5a} :catchall_5c

    monitor-exit p0

    return-object p1

    :catchall_5c
    move-exception p1

    monitor-exit p0

    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method private b(Lcn/jiguang/as/j;)V
    .registers 5

    iget-short v0, p0, Lcn/jiguang/as/i;->b:S

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-short v2, p0, Lcn/jiguang/as/i;->b:S

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized c()J
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcn/jiguang/as/i;->b()Lcn/jiguang/as/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/as/j;->f()J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Iterator;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0, v0}, Lcn/jiguang/as/i;->a(ZZ)Ljava/util/Iterator;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcn/jiguang/as/j;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcn/jiguang/as/i;->b(Lcn/jiguang/as/j;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_75

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcn/jiguang/as/i;->b()Lcn/jiguang/as/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/jiguang/as/j;->a(Lcn/jiguang/as/j;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p1}, Lcn/jiguang/as/j;->f()J

    move-result-wide v1

    invoke-virtual {v0}, Lcn/jiguang/as/j;->f()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_60

    invoke-virtual {p1}, Lcn/jiguang/as/j;->f()J

    move-result-wide v1

    invoke-virtual {v0}, Lcn/jiguang/as/j;->f()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_3c

    invoke-virtual {p1}, Lcn/jiguang/as/j;->g()Lcn/jiguang/as/j;

    move-result-object p1

    invoke-virtual {v0}, Lcn/jiguang/as/j;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/jiguang/as/j;->a(J)V

    goto :goto_60

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iget-object v1, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    iget-object v1, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/as/j;

    invoke-virtual {v1}, Lcn/jiguang/as/j;->g()Lcn/jiguang/as/j;

    move-result-object v1

    invoke-virtual {p1}, Lcn/jiguang/as/j;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jiguang/as/j;->a(J)V

    iget-object v2, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_60
    :goto_60
    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-direct {p0, p1}, Lcn/jiguang/as/i;->b(Lcn/jiguang/as/j;)V
    :try_end_6b
    .catchall {:try_start_e .. :try_end_6b} :catchall_75

    :cond_6b
    monitor-exit p0

    return-void

    :cond_6d
    :try_start_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "record does not match rrset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    monitor-exit p0

    goto :goto_79

    :goto_78
    throw p1

    :goto_79
    goto :goto_78
.end method

.method public final declared-synchronized b()Lcn/jiguang/as/j;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/as/j;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rrset is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcn/jiguang/as/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "{empty}"

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/jiguang/as/i;->b()Lcn/jiguang/as/j;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/as/j;->b()Lcn/jiguang/as/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/jiguang/as/i;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/jiguang/as/i;->a(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/as/i;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lcn/jiguang/as/i;->b:S

    if-lez v1, :cond_68

    const-string v1, " sigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2, v2}, Lcn/jiguang/as/i;->a(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/as/i;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_68
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
