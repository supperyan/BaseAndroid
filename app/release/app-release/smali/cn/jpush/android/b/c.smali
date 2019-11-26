.class public abstract Lcn/jpush/android/b/c;
.super Ljava/lang/Object;


# annotations


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcn/jpush/android/b/b;",
            ">;"
        }
    .end annotation
.end field

.field protected c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcn/jpush/android/b/c;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/b/c;->a:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcn/jpush/android/cache/a;->d(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/b/c;->c:I

    invoke-direct {p0, p1}, Lcn/jpush/android/b/c;->a(Landroid/content/Context;)V

    iget p1, p0, Lcn/jpush/android/b/c;->c:I

    invoke-direct {p0, p1}, Lcn/jpush/android/b/c;->b(I)V

    return-void
.end method

.method private static a(Lcn/jpush/android/d/d;)Lcn/jpush/android/b/b;
    .registers 4

    new-instance v0, Lcn/jpush/android/b/b;

    invoke-direct {v0}, Lcn/jpush/android/b/b;-><init>()V

    iget-object v1, p0, Lcn/jpush/android/d/d;->Y:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcn/jpush/android/d/d;->Z:J

    iput-wide v1, v0, Lcn/jpush/android/b/b;->b:J

    iget-object v1, p0, Lcn/jpush/android/d/d;->aa:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/b/b;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcn/jpush/android/d/d;->ab:Z

    iput-boolean v1, v0, Lcn/jpush/android/b/b;->d:Z

    iget-wide v1, p0, Lcn/jpush/android/d/d;->ad:J

    iput-wide v1, v0, Lcn/jpush/android/b/b;->e:J

    iget-wide v1, p0, Lcn/jpush/android/d/d;->ae:D

    iput-wide v1, v0, Lcn/jpush/android/b/b;->f:D

    iget-wide v1, p0, Lcn/jpush/android/d/d;->af:D

    iput-wide v1, v0, Lcn/jpush/android/b/b;->g:D

    iget-object p0, p0, Lcn/jpush/android/d/d;->ag:Ljava/lang/String;

    iput-object p0, v0, Lcn/jpush/android/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    const-string v0, "GeofenceAction"

    :try_start_2
    const-string v1, "jpush_geofence_v4"

    invoke-static {p1, v1}, Lcn/jpush/android/j/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v1}, Lcn/jpush/android/j/b;->a(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    goto/16 :goto_a4

    :cond_1a
    invoke-static {}, Lcn/jpush/android/cache/Key;->PushVerCode()Lcn/jpush/android/cache/Key;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13e

    if-lt v1, v2, :cond_a4

    const/16 v2, 0x14a

    if-gt v1, v2, :cond_a4

    const-string v1, "jpush_geofence_v3"

    invoke-static {p1, v1}, Lcn/jpush/android/j/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/jpush/android/j/b;->a(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old geofences:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jpush/android/d/d;

    invoke-static {v2}, Lcn/jpush/android/b/c;->a(Lcn/jpush/android/d/d;)Lcn/jpush/android/b/b;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_83
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a4

    iput-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcn/jpush/android/b/c;->c()V
    :try_end_8e
    .catchall {:try_start_2 .. :try_end_8e} :catchall_8f

    goto :goto_a4

    :catchall_8f
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recover geofence failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    iget-object p1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    if-nez p1, :cond_af

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    :cond_af
    invoke-direct {p0}, Lcn/jpush/android/b/c;->d()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recover geofence size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcn/jpush/android/b/b;)V
    .registers 14

    const-string v0, "GeofenceAction"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geofence report id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "geofence_id"

    iget-object p2, p2, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p2, 0x2

    new-array v8, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v8, v2

    const-string v9, "geo_fence"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static/range {v3 .. v8}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_68

    const-string v5, "JPUSH"

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, p2, [Ljava/lang/Object;

    aput-object v1, v9, v2

    new-instance p2, Lcn/jpush/android/b/c$1;

    invoke-direct {p2, p0}, Lcn/jpush/android/b/c$1;-><init>(Lcn/jpush/android/b/c;)V

    aput-object p2, v9, v10

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_53

    goto :goto_68

    :catchall_53
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report geofence error:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geofence count= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",need remove earliest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeofenceAction"

    invoke-static {v2, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    if-le v0, p1, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jpush/android/b/b;

    if-eqz v2, :cond_48

    invoke-virtual {p0, v2}, Lcn/jpush/android/b/c;->b(Lcn/jpush/android/b/b;)V

    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_4e
    return-void
.end method

.method private d()V
    .registers 9

    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jpush/android/b/b;

    if-eqz v2, :cond_b

    iget-wide v3, v2, Lcn/jpush/android/b/b;->e:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_b

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Geofence "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is out of date!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GeofenceAction"

    invoke-static {v4, v3}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v2}, Lcn/jpush/android/b/c;->b(Lcn/jpush/android/b/b;)V

    goto :goto_b

    :cond_52
    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lcn/jpush/android/b/c;->c()V

    :cond_57
    return-void
.end method

.method private e()V
    .registers 2

    invoke-virtual {p0}, Lcn/jpush/android/b/c;->c()V

    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcn/jpush/android/b/c;->a()V

    goto :goto_12

    :cond_f
    invoke-virtual {p0}, Lcn/jpush/android/b/c;->b()V

    :goto_12
    return-void
.end method

.method private e(Lcn/jpush/android/b/b;)Z
    .registers 7

    if-eqz p1, :cond_41

    iget-object v0, p1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-wide v0, p1, Lcn/jpush/android/b/b;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_41

    iget-wide v0, p1, Lcn/jpush/android/b/b;->g:D

    const-wide v2, -0x3fa9800000000000L

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_41

    iget-wide v0, p1, Lcn/jpush/android/b/b;->g:D

    const-wide v2, 0x4056800000000000L

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_41

    iget-wide v0, p1, Lcn/jpush/android/b/b;->f:D

    const-wide v2, -0x3f99800000000000L

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_41

    iget-wide v0, p1, Lcn/jpush/android/b/b;->f:D

    const-wide v2, 0x4066800000000000L

    cmpl-double p1, v0, v2

    if-lez p1, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p1, 0x1

    return p1

    :cond_41
    :goto_41
    const-string p1, "GeofenceAction"

    const-string v0, "The geofence is invalid, won\'t operate!"

    invoke-static {p1, v0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcn/jpush/android/b/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/jpush/android/cache/a;->c(Landroid/content/Context;I)V

    iput p1, p0, Lcn/jpush/android/b/c;->c:I

    iget p1, p0, Lcn/jpush/android/b/c;->c:I

    invoke-direct {p0, p1}, Lcn/jpush/android/b/c;->b(I)V

    return-void
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method protected abstract a(Lcn/jpush/android/b/b;)V
.end method

.method protected abstract a(Lcn/jpush/android/b/b;Lcn/jpush/android/b/b;)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/b/b;

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Lcn/jpush/android/b/c;->b(Lcn/jpush/android/b/b;)V

    invoke-direct {p0}, Lcn/jpush/android/b/c;->e()V

    goto :goto_33

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geofence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already not exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeofenceAction"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6f

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current geofence size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceAction"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/b/b;

    if-nez v0, :cond_3b

    const-string p1, "can not update geofence because origin one not found"

    :goto_37
    invoke-static {v1, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    const-string v2, "type"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iget v3, v0, Lcn/jpush/android/b/b;->i:I

    if-eq v3, v2, :cond_4f

    const-string p1, "can not update geofence because type can\'t change"

    goto :goto_37

    :cond_4f
    invoke-virtual {v0, p2}, Lcn/jpush/android/b/b;->b(Lorg/json/JSONObject;)V

    iget-wide v1, v0, Lcn/jpush/android/b/b;->e:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-gtz p2, :cond_69

    iget-object p2, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/jpush/android/b/c;->b(Lcn/jpush/android/b/b;)V

    goto :goto_6c

    :cond_69
    invoke-virtual {p0, v0, v0}, Lcn/jpush/android/b/c;->a(Lcn/jpush/android/b/b;Lcn/jpush/android/b/b;)V

    :goto_6c
    invoke-direct {p0}, Lcn/jpush/android/b/c;->e()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method protected abstract b(Lcn/jpush/android/b/b;)V
.end method

.method protected c()V
    .registers 3

    const-string v0, "GeofenceAction"

    const-string v1, "save geofence to file"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/b/c;->a:Landroid/content/Context;

    const-string v1, "jpush_geofence_v4"

    invoke-static {v0, v1}, Lcn/jpush/android/j/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcn/jpush/android/j/b;->a(Ljava/io/File;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcn/jpush/android/b/b;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current geofence size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceAction"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jpush/android/b/c;->e(Lcn/jpush/android/b/b;)Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/b/b;

    const-wide/16 v2, 0x3e8

    iget-wide v4, p1, Lcn/jpush/android/b/b;->e:J

    mul-long v4, v4, v2

    if-eqz v0, :cond_56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-gtz v3, :cond_48

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/jpush/android/b/c;->b(Lcn/jpush/android/b/b;)V

    goto :goto_8b

    :cond_48
    invoke-virtual {p1, v0}, Lcn/jpush/android/b/b;->a(Lcn/jpush/android/b/b;)V

    iget-object v1, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcn/jpush/android/b/c;->a(Lcn/jpush/android/b/b;Lcn/jpush/android/b/b;)V

    goto :goto_8b

    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-gtz v0, :cond_7a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The geofence "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is out of date, will not create!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7a
    iget v0, p0, Lcn/jpush/android/b/c;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcn/jpush/android/b/c;->b(I)V

    iget-object v0, p0, Lcn/jpush/android/b/c;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcn/jpush/android/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/jpush/android/b/c;->a(Lcn/jpush/android/b/b;)V

    :goto_8b
    invoke-direct {p0}, Lcn/jpush/android/b/c;->e()V

    return-void
.end method

.method protected d(Lcn/jpush/android/b/b;)V
    .registers 5

    const-string v0, "GeofenceAction"

    if-eqz p1, :cond_36

    :try_start_4
    iget v1, p1, Lcn/jpush/android/b/b;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcn/jpush/android/b/c;->a:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/jpush/android/b/c;->a(Landroid/content/Context;Lcn/jpush/android/b/b;)V

    goto :goto_36

    :cond_f
    iget-object v1, p1, Lcn/jpush/android/b/b;->t:Lcn/jpush/android/d/d;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcn/jpush/android/b/c;->a:Landroid/content/Context;

    iget-object p1, p1, Lcn/jpush/android/b/b;->t:Lcn/jpush/android/d/d;

    invoke-static {v1, p1}, Lcn/jpush/android/d/b;->a(Landroid/content/Context;Lcn/jpush/android/d/d;)V

    goto :goto_36

    :cond_1b
    const-string p1, "there is no push entity, won\'t show notification"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_21

    goto :goto_36

    :catchall_21
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process geofence error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method
