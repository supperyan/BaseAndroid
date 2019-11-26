.class public final Lcn/jiguang/u/e;
.super Ljava/lang/Object;


# annotations


# direct methods
.method private static a(Ljava/lang/String;ILjava/util/List;)Lcn/jiguang/t/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcn/jiguang/t/b;",
            ">;)",
            "Lcn/jiguang/t/b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_27

    :cond_10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/t/b;

    invoke-static {p0, p1, v1}, Lcn/jiguang/u/e;->a(Ljava/lang/String;ILcn/jiguang/t/b;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-object v1

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jiguang/f/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {p0}, Lcn/jiguang/u/c;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/t/b;

    iget-object v1, v0, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object p1, v0, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    goto :goto_34

    :cond_33
    move-object p1, v0

    :cond_34
    :goto_34
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcn/jiguang/t/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "need get getDefaultApiSimInfo"

    invoke-static {p0, v0, v1}, Lcn/jiguang/internal/JConstants;->isAndroidQ(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_e

    move-object v1, v2

    goto :goto_25

    :cond_e
    new-instance v1, Lcn/jiguang/t/b;

    invoke-direct {v1}, Lcn/jiguang/t/b;-><init>()V

    invoke-static {p0, v3}, Lcn/jiguang/f/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/jiguang/u/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/jiguang/f/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    :goto_25
    invoke-static {p0}, Lcn/jiguang/u/f;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p0}, Lcn/jiguang/u/c;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_3b
    if-ltz v6, :cond_4f

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/jiguang/t/b;

    invoke-virtual {v7}, Lcn/jiguang/t/b;->b()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 v6, v6, -0x1

    goto :goto_3b

    :cond_4f
    if-eqz v4, :cond_a7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_58

    goto :goto_a7

    :cond_58
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/t/b;

    iget-object v2, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v2, v5, p0}, Lcn/jiguang/u/e;->a(Ljava/lang/String;ILjava/util/List;)Lcn/jiguang/t/b;

    move-result-object v2

    if-eqz v2, :cond_5c

    iget-object v2, v2, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    iput-object v2, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    goto :goto_5c

    :cond_85
    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-static {v2, v5, p0}, Lcn/jiguang/u/e;->a(Ljava/lang/String;ILjava/util/List;)Lcn/jiguang/t/b;

    move-result-object v2

    if-eqz v2, :cond_5c

    iget-object v3, v2, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    iput-object v3, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    iget-object v2, v2, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    iput-object v2, v1, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    goto :goto_5c

    :cond_a6
    return-object v4

    :cond_a7
    :goto_a7
    if-eqz v1, :cond_15c

    invoke-virtual {v1}, Lcn/jiguang/t/b;->b()Z

    move-result v4

    if-eqz v4, :cond_b1

    goto/16 :goto_15c

    :cond_b1
    if-eqz p0, :cond_110

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_110

    iget-object v2, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ea

    iget-object v2, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jiguang/t/b;

    iget-object v4, v4, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15c

    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/t/b;

    iget-object v0, v0, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    goto :goto_10c

    :cond_ea
    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10c

    iget-object v2, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/t/b;

    iget-object v0, v0, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iput-object v3, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    iput-object v3, v1, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcn/jiguang/t/b;->b()Z

    move-result v0

    if-nez v0, :cond_15c

    :cond_10c
    :goto_10c
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15c

    :cond_110
    iget-object v3, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-static {v3, v0, p0}, Lcn/jiguang/u/e;->a(Ljava/lang/String;ILjava/util/List;)Lcn/jiguang/t/b;

    move-result-object v3

    if-nez v3, :cond_119

    return-object p0

    :cond_119
    iget-object v3, v3, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15c

    iget-object v3, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-static {v3, v5, p0}, Lcn/jiguang/u/e;->a(Ljava/lang/String;ILjava/util/List;)Lcn/jiguang/t/b;

    move-result-object v3

    if-nez v3, :cond_15c

    iget-object v3, v1, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    if-eqz p0, :cond_15b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15b

    if-nez v1, :cond_13c

    goto :goto_15b

    :cond_13c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_140
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jiguang/t/b;

    invoke-static {v3, v0, v4}, Lcn/jiguang/u/e;->a(Ljava/lang/String;ILcn/jiguang/t/b;)Z

    move-result v5

    if-eqz v5, :cond_140

    iget-object v0, v1, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    iput-object v0, v4, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    iget-object v0, v1, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    iput-object v0, v4, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    goto :goto_15c

    :cond_15b
    :goto_15b
    move-object p0, v2

    :cond_15c
    :goto_15c
    return-object p0
.end method

.method private static a(Ljava/lang/String;ILcn/jiguang/t/b;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    if-eq p1, v0, :cond_12

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    goto :goto_24

    :cond_9
    iget-object p1, p2, Lcn/jiguang/t/b;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_12
    iget-object p1, p2, Lcn/jiguang/t/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_1b
    iget-object p1, p2, Lcn/jiguang/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return p0
.end method
