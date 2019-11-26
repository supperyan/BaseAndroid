.class public Lcn/jpush/android/cache/Sp;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/jpush/android/cache/Sp;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcn/jpush/android/cache/Sp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-nez v0, :cond_25

    invoke-static {p0}, Lcn/jpush/android/a;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/cache/Sp;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcn/jpush/android/cache/Sp;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_61

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_61

    :cond_a
    :try_start_a
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1d
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_28

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3b

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3b
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4e

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4e
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_61

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_60
    .catchall {:try_start_a .. :try_end_60} :catchall_61

    return-object p0

    :catchall_61
    :cond_61
    :goto_61
    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_49

    if-nez p2, :cond_8

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_49

    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_49

    :cond_16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_20

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_49

    :cond_20
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_49

    :cond_2e
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3c

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_49

    :cond_3c
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_49

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_49
    :goto_49
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static clear(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/jpush/android/cache/Sp;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_11
    return-void
.end method

.method public static get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/jpush/android/cache/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/jpush/android/cache/Sp;->getWithNull(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    iget-object p0, p1, Lcn/jpush/android/cache/Key;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static getWithNull(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/jpush/android/cache/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p1, Lcn/jpush/android/cache/Key;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jpush/android/cache/Sp;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p1, Lcn/jpush/android/cache/Key;->b:Ljava/lang/String;

    iget-object v2, p1, Lcn/jpush/android/cache/Key;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/cache/Sp;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    iget-boolean v1, p1, Lcn/jpush/android/cache/Key;->d:Z

    if-eqz v1, :cond_22

    iget-object v0, p1, Lcn/jpush/android/cache/Key;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jpush/android/cache/Sp;->reload(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    iget-object v0, p1, Lcn/jpush/android/cache/Key;->b:Ljava/lang/String;

    iget-object v1, p1, Lcn/jpush/android/cache/Key;->c:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcn/jpush/android/cache/Sp;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_22
    if-eqz v0, :cond_28

    invoke-virtual {p1, v0}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    return-object v0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs read(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcn/jpush/android/cache/Key<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_11

    array-length v0, p1

    if-lez v0, :cond_11

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public static reload(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    invoke-static {p0}, Lcn/jpush/android/a;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcn/jpush/android/cache/Key<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_26

    array-length v0, p1

    if-lez v0, :cond_26

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v1, v1, Lcn/jpush/android/cache/Key;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcn/jpush/android/cache/Sp;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    array-length v1, p1

    :goto_15
    if-ge v0, v1, :cond_23

    aget-object v2, p1, v0

    iget-object v3, v2, Lcn/jpush/android/cache/Key;->b:Ljava/lang/String;

    iget-object v2, v2, Lcn/jpush/android/cache/Key;->c:Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcn/jpush/android/cache/Sp;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_26
    return-void
.end method
