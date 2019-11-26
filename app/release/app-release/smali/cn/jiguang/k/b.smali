.class public final Lcn/jiguang/k/b;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^zygote[0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jiguang/k/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static a(Ljava/util/LinkedList;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    if-ne p0, v1, :cond_16

    move p0, p2

    :cond_16
    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Lcn/jiguang/j/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcn/jiguang/j/b;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_13

    return-object v1

    :cond_13
    :try_start_13
    new-instance v2, Lcn/jiguang/j/b;

    invoke-direct {v2}, Lcn/jiguang/j/b;-><init>()V

    if-eqz p1, :cond_62

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_62

    :cond_21
    const-string v0, "USER"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p0, v0

    iput-object v0, v2, Lcn/jiguang/j/b;->a:Ljava/lang/String;

    const-string v0, "PID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p0, v0

    iput-object v0, v2, Lcn/jiguang/j/b;->b:Ljava/lang/String;

    const-string v0, "PPID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p0, v0

    iput-object v0, v2, Lcn/jiguang/j/b;->c:Ljava/lang/String;

    const-string v0, "NAME"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    :goto_5f
    iput-object p0, v2, Lcn/jiguang/j/b;->d:Ljava/lang/String;

    goto :goto_75

    :cond_62
    :goto_62
    const/4 p1, 0x0

    aget-object p1, p0, p1

    iput-object p1, v2, Lcn/jiguang/j/b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    aget-object v3, p0, p1

    iput-object v3, v2, Lcn/jiguang/j/b;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    iput-object v3, v2, Lcn/jiguang/j/b;->c:Ljava/lang/String;

    sub-int/2addr v0, p1

    aget-object p0, p0, v0
    :try_end_74
    .catchall {:try_start_13 .. :try_end_74} :catchall_76

    goto :goto_5f

    :goto_75
    return-object v2

    :catchall_76
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parseCommandResult throwable:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JProcessHelper"

    invoke-static {p1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(I)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/jiguang/j/b;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    const-string v1, "JProcessHelper"

    const-string v2, "ps"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_8
    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5, v4}, Lcn/jiguang/v/f;->a([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_100

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto/16 :goto_100

    :cond_1b
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_33

    :goto_31
    move-object v11, v3

    goto :goto_6d

    :cond_33
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v11, "\\s+"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "USER"

    invoke-static {v10, v12, v6}, Lcn/jiguang/k/b;->a(Ljava/util/LinkedList;Ljava/lang/String;I)I

    move-result v12

    const-string v13, "PID"

    invoke-static {v10, v13, v4}, Lcn/jiguang/k/b;->a(Ljava/util/LinkedList;Ljava/lang/String;I)I

    move-result v13

    const-string v14, "PPID"

    const/4 v15, 0x2

    invoke-static {v10, v14, v15}, Lcn/jiguang/k/b;->a(Ljava/util/LinkedList;Ljava/lang/String;I)I

    move-result v14

    const-string v6, "NAME"

    invoke-static {v10, v6, v9}, Lcn/jiguang/k/b;->a(Ljava/util/LinkedList;Ljava/lang/String;I)I

    move-result v6

    if-nez v12, :cond_6d

    if-ne v13, v4, :cond_6d

    if-ne v14, v15, :cond_6d

    if-ne v6, v9, :cond_6d

    goto :goto_31

    :cond_6d
    :goto_6d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_71
    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v11}, Lcn/jiguang/k/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcn/jiguang/j/b;

    move-result-object v6

    if-eqz v6, :cond_71

    const/4 v9, 0x3

    if-eq v0, v9, :cond_ba

    iget-object v9, v6, Lcn/jiguang/j/b;->c:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a3

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a3

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a1

    goto :goto_a3

    :cond_a1
    const/4 v9, 0x0

    goto :goto_a4

    :cond_a3
    :goto_a3
    const/4 v9, 0x1

    :goto_a4
    if-eqz v9, :cond_ba

    iget-object v9, v6, Lcn/jiguang/j/b;->d:Ljava/lang/String;

    sget-object v10, Lcn/jiguang/k/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_71

    iget-object v6, v6, Lcn/jiguang/j/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_ba
    iget-object v9, v6, Lcn/jiguang/j/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_c6
    if-ne v0, v4, :cond_fe

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fe

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_d4
    if-nez v2, :cond_ff

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x1

    :cond_db
    :goto_db
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jiguang/j/b;

    iget-object v9, v6, Lcn/jiguang/j/b;->c:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_db

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Lcn/jiguang/j/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v5, 0x0

    goto :goto_db

    :cond_fc
    move v2, v5

    goto :goto_d4

    :cond_fe
    move-object v0, v8

    :cond_ff
    return-object v0

    :cond_100
    :goto_100
    const-string v0, "execute command failed"

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_8 .. :try_end_105} :catchall_106

    return-object v3

    :catchall_106
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getRunningProcessInfo throwable:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
