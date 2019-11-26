.class public final Lcn/jiguang/f/g;
.super Ljava/lang/Object;


# annotations


# direct methods
.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    const/4 v0, 0x2

    :try_start_6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_28

    :cond_e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_12

    :catch_26
    nop

    goto :goto_12

    :cond_28
    :goto_28
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_25

    if-nez p0, :cond_b

    goto :goto_25

    :cond_b
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_f

    :catch_23
    nop

    goto :goto_f

    :cond_25
    :goto_25
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_14

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/i;->j(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    :cond_14
    :goto_14
    return v0
.end method
