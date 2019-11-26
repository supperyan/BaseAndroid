.class public final Lcn/jiguang/n/a;
.super Ljava/lang/Object;


# annotations


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/jiguang/m/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "cat /proc/net/arp"

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Lcn/jiguang/v/f;->a([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_57

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {v2}, Lcn/jiguang/n/a;->b(Ljava/lang/String;)Lcn/jiguang/m/a;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcn/jiguang/m/a;->c:Ljava/lang/String;

    const-string v4, "0x2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v2, Lcn/jiguang/m/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, v2, Lcn/jiguang/m/a;->d:Ljava/lang/String;

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_56
    return-object v1

    :cond_57
    :goto_57
    const-string p0, "JArpHelper"

    const-string v0, "execute command failed"

    invoke-static {p0, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)V
    .registers 4

    new-instance v0, Lcn/jiguang/n/b;

    const/16 v1, 0x12c

    invoke-direct {v0, p0, v1}, Lcn/jiguang/n/b;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x0

    const/16 v1, 0xff

    invoke-virtual {v0, p1, p0, v1}, Lcn/jiguang/n/b;->a([BII)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcn/jiguang/m/a;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v0, Lcn/jiguang/m/a;

    invoke-direct {v0}, Lcn/jiguang/m/a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_14
    :goto_14
    array-length v4, p0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_45

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, p0, v1

    const/16 v6, 0x20

    if-ne v4, v6, :cond_14

    sub-int v4, v1, v2

    if-le v4, v5, :cond_42

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    if-nez v3, :cond_2f

    iput-object v6, v0, Lcn/jiguang/m/a;->a:Ljava/lang/String;

    goto :goto_40

    :cond_2f
    if-ne v3, v5, :cond_34

    iput-object v6, v0, Lcn/jiguang/m/a;->b:Ljava/lang/String;

    goto :goto_40

    :cond_34
    const/4 v2, 0x2

    if-ne v3, v2, :cond_3a

    iput-object v6, v0, Lcn/jiguang/m/a;->c:Ljava/lang/String;

    goto :goto_40

    :cond_3a
    const/4 v2, 0x3

    if-ne v3, v2, :cond_40

    iput-object v6, v0, Lcn/jiguang/m/a;->d:Ljava/lang/String;

    goto :goto_45

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    :cond_42
    add-int/lit8 v2, v1, 0x1

    goto :goto_14

    :cond_45
    :goto_45
    return-object v0
.end method
