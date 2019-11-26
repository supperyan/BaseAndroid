.class public Lcn/jiguang/as/l;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcn/jiguang/as/l;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Lcn/jiguang/as/h;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcn/jiguang/as/l;

    invoke-direct {v0}, Lcn/jiguang/as/l;-><init>()V

    const-class v1, Lcn/jiguang/as/l;

    monitor-enter v1

    :try_start_8
    sput-object v0, Lcn/jiguang/as/l;->d:Lcn/jiguang/as/l;

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/as/l;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcn/jiguang/as/l;->b:[Lcn/jiguang/as/h;

    const/4 v0, -0x1

    iput v0, p0, Lcn/jiguang/as/l;->c:I

    invoke-direct {p0}, Lcn/jiguang/as/l;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lcn/jiguang/as/l;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget-object v1, p0, Lcn/jiguang/as/l;->a:[Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcn/jiguang/as/l;->b:[Lcn/jiguang/as/h;

    if-nez v1, :cond_38

    :cond_21
    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_33

    invoke-direct {p0}, Lcn/jiguang/as/l;->e()V

    return-void

    :cond_33
    const-string v0, "/etc/resolv.conf"

    invoke-direct {p0, v0}, Lcn/jiguang/as/l;->b(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_c

    if-ltz p0, :cond_c

    return p0

    :catch_c
    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcn/jiguang/as/l;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcn/jiguang/as/l;->a:[Ljava/lang/String;

    :cond_15
    iget-object p1, p0, Lcn/jiguang/as/l;->b:[Lcn/jiguang/as/h;

    if-nez p1, :cond_29

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_29

    new-array p1, v1, [Lcn/jiguang/as/h;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcn/jiguang/as/h;

    iput-object p1, p0, Lcn/jiguang/as/l;->b:[Lcn/jiguang/as/h;

    :cond_29
    return-void
.end method

.method public static declared-synchronized b()Lcn/jiguang/as/l;
    .registers 2

    const-class v0, Lcn/jiguang/as/l;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/jiguang/as/l;->d:Lcn/jiguang/as/l;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_bb

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ad

    const-string v4, "nameserver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcn/jiguang/as/l;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1b

    :cond_39
    const-string v4, "domain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/jiguang/as/l;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1b

    :cond_5d
    const-string v4, "search"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_6e
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :goto_76
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/jiguang/as/l;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_76

    :cond_84
    const-string v4, "options"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_94
    :goto_94
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ndots:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-static {v3}, Lcn/jiguang/as/l;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_94

    :catch_ab
    nop

    goto :goto_b0

    :cond_ad
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_b0} :catch_ab

    :goto_b0
    invoke-direct {p0, p1, v2}, Lcn/jiguang/as/l;->a(Ljava/util/List;Ljava/util/List;)V

    iget p1, p0, Lcn/jiguang/as/l;->c:I

    if-gez p1, :cond_bb

    if-lez v1, :cond_bb

    iput v1, p0, Lcn/jiguang/as/l;->c:I

    :catch_bb
    :cond_bb
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcn/jiguang/as/h;->a:Lcn/jiguang/as/h;

    invoke-static {p0, v0}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Lcn/jiguang/as/h;)Lcn/jiguang/as/h;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_10

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_10
    return-void
.end method

.method private c()Z
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "dns.server"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    if-eqz v3, :cond_28

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcn/jiguang/as/l;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1a

    :cond_28
    const-string v3, "dns.search"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/jiguang/as/l;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_35

    :cond_43
    invoke-direct {p0, v0, v2}, Lcn/jiguang/as/l;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcn/jiguang/as/l;->a:[Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcn/jiguang/as/l;->b:[Lcn/jiguang/as/h;

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    return v0

    :cond_50
    return v1
.end method

.method private d()Z
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_b
    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "sun.net.dns.ResolverConfiguration"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "open"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "nameservers"

    invoke-virtual {v5, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const-string v8, "searchlist"

    invoke-virtual {v5, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_78

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3f

    return v1

    :cond_3f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_59

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0}, Lcn/jiguang/as/l;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_49

    :cond_59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_73

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lcn/jiguang/as/l;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_63

    :cond_73
    invoke-direct {p0, v0, v2}, Lcn/jiguang/as/l;->a(Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :catch_78
    return v1
.end method

.method private e()V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_a
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "net.dns1"

    aput-object v6, v5, v7

    const-string v6, "net.dns2"

    aput-object v6, v5, v4

    const/4 v6, 0x2

    const-string v8, "net.dns3"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "net.dns4"

    aput-object v8, v5, v6

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v3, :cond_61

    new-array v8, v4, [Ljava/lang/Object;

    aget-object v9, v5, v6

    aput-object v9, v8, v7

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_5e

    const-string v9, "^\\d+(\\.\\d+){3}$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_55

    const-string v9, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5e

    :cond_55
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5e} :catch_61

    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :catch_61
    :cond_61
    invoke-direct {p0, v0, v1}, Lcn/jiguang/as/l;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/as/l;->a:[Ljava/lang/String;

    return-object v0
.end method
