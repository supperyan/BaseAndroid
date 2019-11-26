.class public final Lcn/jiguang/g/b;
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

    sput-object v0, Lcn/jiguang/g/b;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/jiguang/g/a<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    iget-object p0, p1, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    return-object p0
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

.method private static a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/jiguang/g/a<",
            "TT;>;",
            "Lcn/jiguang/g/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {p0, p2}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    new-array v2, v1, [Lcn/jiguang/g/a;

    iput-object v0, p1, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-array p1, v1, [Lcn/jiguang/g/a;

    const/4 v1, 0x0

    iput-object v1, p2, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_21
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

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

.method public static varargs a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcn/jiguang/g/a<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_a2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_8a

    aget-object v3, p1, v2

    iget-object v4, v3, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences$Editor;

    if-nez v4, :cond_29

    iget-object v5, v3, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-static {p0, v5}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, v3, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget-object v5, v3, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    iget-object v6, v3, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    iget-boolean v3, v3, Lcn/jiguang/g/a;->g:Z

    if-eqz v4, :cond_87

    if-nez v6, :cond_37

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_87

    :cond_37
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_45

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_87

    :cond_45
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5e

    if-eqz v3, :cond_58

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_58

    invoke-static {v3}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_58
    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_87

    :cond_5e
    instance-of v3, v6, Ljava/lang/Integer;

    if-eqz v3, :cond_6c

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_87

    :cond_6c
    instance-of v3, v6, Ljava/lang/Long;

    if-eqz v3, :cond_7a

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_87

    :cond_7a
    instance-of v3, v6, Ljava/lang/Float;

    if-eqz v3, :cond_87

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_8a
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_92
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_92

    :cond_a2
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcn/jiguang/g/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-nez v0, :cond_110

    invoke-static {p0}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_110

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcn/jiguang/g/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/jiguang/g/a;->v()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_110

    :cond_3a
    sget-object v1, Lcn/jiguang/g/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cn.jpush.android.user.profile"

    if-eqz v1, :cond_6d

    invoke-static {}, Lcn/jiguang/g/a;->i()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->i()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->j()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->j()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->k()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->k()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    :goto_68
    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    goto/16 :goto_110

    :cond_6d
    const-string v1, "cn.jiguang.sdk.user.set.profile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-static {}, Lcn/jiguang/g/a;->l()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->l()Lcn/jiguang/g/a;

    move-result-object v1

    const-string v3, "cn.jpush.preferences.v2"

    iput-object v3, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->m()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->m()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    goto :goto_68

    :cond_8f
    const-string v1, "cn.jiguang.sdk.user.profile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    const-string v3, "device_uid"

    iput-object v3, v1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->d()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->d()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    const-string v3, "device_registration_id"

    iput-object v3, v1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->e()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->e()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    const-string v2, "device_password"

    :goto_c5
    iput-object v2, v1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    goto :goto_68

    :cond_c8
    const-string v1, "cn.jiguang.sdk.address"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {}, Lcn/jiguang/g/a;->N()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->N()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    const-string v3, "conn"

    iput-object v3, v1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->O()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->O()Lcn/jiguang/g/a;

    move-result-object v1

    iput-object v2, v1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    const-string v2, "srv"

    goto :goto_c5

    :cond_ee
    sget-object v1, Lcn/jiguang/g/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_110

    invoke-static {}, Lcn/jiguang/g/a;->A()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->A()Lcn/jiguang/g/a;

    move-result-object v1

    const-string v2, "device_registered_appkey"

    iput-object v2, v1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;Lcn/jiguang/g/a;)V

    invoke-static {}, Lcn/jiguang/g/a;->B()Lcn/jiguang/g/a;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/g/a;->B()Lcn/jiguang/g/a;

    move-result-object v1

    const-string v2, "imei"

    goto :goto_c5

    :cond_110
    :goto_110
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/jiguang/g/a<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/jiguang/g/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_36

    iget-boolean v2, p1, Lcn/jiguang/g/a;->f:Z

    if-eqz v2, :cond_36

    iget-object v0, p1, Lcn/jiguang/g/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_27

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    :cond_27
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    move-object p0, v1

    :goto_2e
    iget-object v0, p1, Lcn/jiguang/g/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_36
    if-eqz v0, :cond_50

    iget-boolean p0, p1, Lcn/jiguang/g/a;->g:Z

    if-eqz p0, :cond_4d

    instance-of p0, v0, Ljava/lang/String;

    if-eqz p0, :cond_4d

    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4d

    invoke-static {p0}, Lcn/jiguang/bb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4d
    iput-object v0, p1, Lcn/jiguang/g/a;->e:Ljava/lang/Object;

    return-object v0

    :cond_50
    return-object v1
.end method
