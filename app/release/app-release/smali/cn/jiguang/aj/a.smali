.class public final Lcn/jiguang/aj/a;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/jiguang/aj/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/jiguang/aj/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/io/File;
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcn/jiguang/aj/a;->b(Landroid/content/Context;I)Lcn/jiguang/ak/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/jiguang/aj/a;->a(Landroid/content/Context;Lcn/jiguang/ak/a;Z)Ljava/io/File;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getIIf error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PH"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcn/jiguang/ak/a;Z)Ljava/io/File;
    .registers 9

    const-string p2, "PH"

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    :try_start_6
    iget-object v1, p1, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    iget v2, p1, Lcn/jiguang/ak/a;->k:I

    iget v3, p1, Lcn/jiguang/ak/a;->m:I

    invoke-static {p0, v1, v2, v3}, Lcn/jiguang/aj/b;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pF:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_91

    const/4 v2, 0x0

    const-string v3, "PIU"

    if-eqz v1, :cond_76

    :try_start_2a
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_76

    :cond_31
    iget-object v1, p1, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string p1, "p M error."

    :goto_3b
    invoke-static {v3, p1}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_3f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string p1, "g p M f."

    goto :goto_3b

    :cond_50
    iget-object v4, p1, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "p M not m, c m: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", b f m:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3b

    :cond_74
    const/4 v2, 0x1

    goto :goto_8e

    :cond_76
    :goto_76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "p :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_8d
    .catchall {:try_start_2a .. :try_end_8d} :catchall_91

    goto :goto_3b

    :goto_8e
    if-eqz v2, :cond_a7

    return-object p0

    :catchall_91
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "gIF error:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    const/4 v1, 0x4

    if-eq p1, v1, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "unkown type:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PH"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_24
    const-string p1, "code"

    goto :goto_32

    :cond_27
    const-string p1, "dc"

    goto :goto_32

    :cond_2a
    const-string p1, "iff"

    goto :goto_32

    :cond_2d
    const-string p1, "if"

    goto :goto_32

    :cond_30
    const-string p1, "ic"

    :goto_32
    sget-object v1, Lcn/jiguang/aj/a;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v0, Lcn/jiguang/aj/a;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    return-object v0
.end method

.method private static a()V
    .registers 8

    :try_start_0
    invoke-static {}, Lcn/jiguang/internal/ActionManager;->getInstance()Lcn/jiguang/internal/ActionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/internal/ActionManager;->loadPInfo()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcn/jiguang/aj/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcn/jiguang/internal/JConstants;->SDK_VERSION_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Y24ucC5qaWd1YW5nLkpDb3JlSGVscGVy"

    invoke-static {v1}, Lcn/jiguang/al/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ic"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Y24uamlndWFuZy5pbnRlcm5hbC5KQ29yZUludGVybmFsSGVscGVy"

    invoke-static {v1}, Lcn/jiguang/al/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "if"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v3, :cond_8b

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "Y24uamlndWFuZy5pbnRlcm5hbC5KQ29yZUhlbHBlckFjdGlvbg"

    invoke-static {v7}, Lcn/jiguang/al/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    const-string v1, "PH"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "find filed name:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iff"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_8b
    :goto_8b
    const-string v1, "Y24ucC5qaWd1YW5nLkpDb3JlQ2xhc3NMb2FkZXI"

    invoke-static {v1}, Lcn/jiguang/al/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dc"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/aj/a;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catchall {:try_start_0 .. :try_end_9f} :catchall_9f

    :catchall_9f
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    const-string v0, "use"

    invoke-static {p0, p1, v0, p2}, Lcn/jiguang/al/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jiguang/ak/a;)V
    .registers 5

    :try_start_0
    const-string v0, "PH"

    const-string v1, "clearPlugin..."

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcn/jiguang/ak/a;->k:I

    const-string v1, "use"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcn/jiguang/al/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/jiguang/ak/a;->q:Ljava/lang/String;

    iget v1, p1, Lcn/jiguang/ak/a;->k:I

    iget p1, p1, Lcn/jiguang/ak/a;->m:I

    invoke-static {p0, v0, v1, p1}, Lcn/jiguang/aj/b;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_23

    :catchall_23
    :cond_23
    return-void
.end method

.method public static b(Landroid/content/Context;I)Lcn/jiguang/ak/a;
    .registers 3

    const-string v0, "use"

    invoke-static {p0, p1, v0}, Lcn/jiguang/al/c;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/ak/a;->a(Ljava/lang/String;)Lcn/jiguang/ak/a;

    move-result-object p0

    return-object p0
.end method
