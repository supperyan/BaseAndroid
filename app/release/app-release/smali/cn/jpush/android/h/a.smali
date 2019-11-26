.class public Lcn/jpush/android/h/a;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private static a(J)I
    .registers 9

    sget-object v0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_15

    :cond_b
    sget-object v0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return v1

    :cond_15
    sget-object v0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p0, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_30

    sget-object p0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 p0, 0x2

    return p0

    :cond_30
    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_44

    :goto_36
    sget-object v0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lt v0, v2, :cond_b

    sget-object v0, Lcn/jpush/android/h/a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_36

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IJ)J
    .registers 14

    const-string v0, "TagAliasHelper"

    const-string v1, "action - onRecvTagAliasCallBack"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    sget v2, Lcn/jpush/android/api/JPushInterface$ErrorCode;->j:I

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-nez p2, :cond_1c

    const-string p3, "sequence"

    invoke-virtual {v7, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p3

    :cond_1c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-nez p2, :cond_2a

    const-string v2, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_28
    move-object v8, v1

    goto :goto_50

    :cond_2a
    invoke-static {p0}, Lcn/jpush/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    new-instance v1, Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_3d
    const-string v2, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_7d

    const-string v2, "message_type"

    const/4 v3, 0x1

    if-ne p2, v3, :cond_4b

    :try_start_47
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_28

    :cond_4b
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_28

    :goto_50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "proto_type"

    invoke-virtual {v8, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tagalias_errorcode"

    invoke-virtual {v8, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "tagalias_seqid"

    invoke-virtual {v8, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcn/jpush/android/h/b;->a()Lcn/jpush/android/h/b;

    move-result-object v2

    move-object v3, p0

    move-wide v4, p3

    invoke-virtual/range {v2 .. v8}, Lcn/jpush/android/h/b;->a(Landroid/content/Context;JILorg/json/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_7c

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7c
    .catchall {:try_start_47 .. :try_end_7c} :catchall_7d

    :cond_7c
    return-wide p3

    :catchall_7d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tagalias msgContent:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;JI)Ljava/lang/String;
    .registers 9

    invoke-static {p4}, Lcn/jpush/android/h/a;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "TagAliasHelper"

    if-eqz v0, :cond_6c

    :try_start_a
    invoke-static {p4}, Lcn/jpush/android/h/a;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2, p4}, Lcn/jpush/android/h/a;->b(II)Z

    move-result p4

    if-eqz p4, :cond_31

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_25

    const-string p1, "alias was empty. Give up action."

    invoke-static {v3, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcn/jpush/android/api/JPushInterface$ErrorCode;->b:I

    invoke-static {p0, v2, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-object v1

    :cond_25
    invoke-static {p0, v2, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result p4

    if-nez p4, :cond_2c

    return-object v1

    :cond_2c
    const-string p4, "alias"

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alias str:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_50

    return-object p1

    :cond_50
    const-string p1, "alias request action was empty"

    invoke-static {v3, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_56

    goto :goto_76

    :catchall_56
    move-exception p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alias exception:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_6c
    const-string p1, "unsupport alias action type"

    invoke-static {v3, p1}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    sget p1, Lcn/jpush/android/api/JPushInterface$ErrorCode;->j:I

    invoke-static {p0, v2, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    :goto_76
    return-object v1
.end method

.method protected static a(Landroid/content/Context;Ljava/util/List;JIII)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JIII)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p5, 0x0

    const-string v0, "TagAliasHelper"

    const/4 v1, 0x1

    if-eqz p4, :cond_b5

    :try_start_6
    invoke-static {p4}, Lcn/jpush/android/h/a;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, p4}, Lcn/jpush/android/h/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6e

    if-eqz p1, :cond_63

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_63

    :cond_19
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1, v3, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;J)Z

    move-result v4

    if-nez v4, :cond_25

    return-object p5

    :cond_25
    invoke-static {v3}, Lcn/jpush/android/h/a;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2, p3, v1}, Lcn/jpush/android/h/a;->b(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v4
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_9f

    if-nez v4, :cond_30

    return-object p5

    :cond_30
    const/4 v4, 0x6

    const-string v5, "tags"

    if-ne p4, v4, :cond_4a

    :try_start_35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "stags was empty. Give up action."

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcn/jpush/android/api/JPushInterface$ErrorCode;->b:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-object p5

    :cond_46
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6e

    :cond_4a
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_53

    :cond_63
    :goto_63
    const-string p1, "tags was empty. Give up action."

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcn/jpush/android/api/JPushInterface$ErrorCode;->b:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-object p5

    :cond_6e
    :goto_6e
    const/4 p1, 0x5

    if-ne p4, p1, :cond_7a

    const-string p1, "curr"

    const/4 p4, -0x1

    if-ne p6, p4, :cond_77

    const/4 p6, 0x1

    :cond_77
    invoke-virtual {v2, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "tag str:"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_99

    return-object p1

    :cond_99
    const-string p1, "tag request action was empty"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_35 .. :try_end_9e} :catchall_9f

    goto :goto_bf

    :catchall_9f
    move-exception p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "tag exception:"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :cond_b5
    const-string p1, "unsupport tag action type"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ba
    sget p1, Lcn/jpush/android/api/JPushInterface$ErrorCode;->j:I

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    :goto_bf
    return-object p5
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    const/4 p1, 0x0

    if-eqz p2, :cond_14

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_14

    return-object v0

    :cond_14
    if-eqz v1, :cond_1d

    invoke-static {p0, p1, v1, p3, p4}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;ILjava/util/Set;J)Z

    move-result v2

    if-nez v2, :cond_1d

    return-object v0

    :cond_1d
    invoke-static {v1}, Lcn/jpush/android/h/a;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p3, p4, p1}, Lcn/jpush/android/h/a;->b(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v3

    if-nez v3, :cond_28

    return-object v0

    :cond_28
    const-string v3, "TagAliasHelper"

    if-nez v2, :cond_39

    if-nez p2, :cond_39

    const-string p2, "NULL alias and tags. Give up action."

    invoke-static {v3, p2}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcn/jpush/android/api/JPushInterface$ErrorCode;->b:I

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-object v0

    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:setAliasAndTags - alias:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tags:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_55
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "platform"

    const-string v6, "a"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_68

    const-string v5, "alias"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_68
    if-eqz v1, :cond_6f

    const-string p2, "tags"

    invoke-virtual {v4, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6f
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tagalias str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    return-object p2

    :cond_8e
    const-string p2, "tagalias request action was empty"

    invoke-static {v3, p2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_55 .. :try_end_93} :catchall_94

    goto :goto_ae

    :catchall_94
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tagalias exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcn/jpush/android/api/JPushInterface$ErrorCode;->j:I

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    :goto_ae
    return-object v0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "TagAliasHelper"

    if-nez v3, :cond_3e

    invoke-static {v2}, Lcn/jpush/android/j/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_15

    const-string p0, "The lenght of tags maybe more than 1000."

    invoke-static {v4, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid tag : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_53
    return-object v0
.end method

.method private static a(I)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "platform"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcn/jpush/android/h/a;->b(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "op"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIJ)V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_1b

    const-string p1, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_38

    :cond_1b
    const-string v1, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcn/jpush/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_46

    const-string v1, "message_type"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_34

    :try_start_30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_38

    :cond_34
    const/4 p1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_38
    const-string p1, "tagalias_errorcode"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "tagalias_seqid"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_46

    goto :goto_61

    :catchall_46
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NotifyTagAliasError:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TagAliasHelper"

    invoke-static {p1, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    return-void
.end method

.method protected static a(Landroid/content/Context;IJLjava/lang/String;)V
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tagalias:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TagAliasHelper"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_43

    const/4 v0, 0x1

    if-nez p1, :cond_20

    const/16 v1, 0xa

    const/16 v4, 0xa

    goto :goto_2b

    :cond_20
    if-ne p1, v0, :cond_27

    const/16 v1, 0x1c

    const/16 v4, 0x1c

    goto :goto_2b

    :cond_27
    const/16 v1, 0x1d

    const/16 v4, 0x1d

    :goto_2b
    if-nez p1, :cond_30

    const/4 v0, 0x4

    const/4 v5, 0x4

    goto :goto_31

    :cond_30
    const/4 v5, 0x1

    :goto_31
    invoke-static {p0}, Lcn/jpush/android/helper/JCoreHelper;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, p4}, Lcn/jpush/android/g/b;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v10

    const-wide/16 v8, 0x4e20

    const-string v3, "JPUSH"

    move-object v2, p0

    move-wide v6, p2

    invoke-static/range {v2 .. v10}, Lcn/jpush/android/helper/JCoreHelper;->sendRequest(Landroid/content/Context;Ljava/lang/String;IIJJ[B)V

    goto :goto_48

    :cond_43
    const-string p0, "tagaliasRequest was null"

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;II)V
    .registers 14

    if-eqz p0, :cond_15

    const/4 v0, 0x0

    new-instance v8, Lcn/jpush/android/api/CallBackParams;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/jpush/android/api/CallBackParams;-><init>(ILjava/lang/String;JII)V

    invoke-static {p0, p2, v0, v8}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/CallBackParams;)V

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;ILjava/util/Set;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    if-eqz p0, :cond_15

    const/4 v0, 0x0

    new-instance v8, Lcn/jpush/android/api/CallBackParams;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/jpush/android/api/CallBackParams;-><init>(ILjava/util/Set;JII)V

    invoke-static {p0, v0, p2, v8}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/CallBackParams;)V

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 21

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const-string v9, "TagAliasHelper"

    const-string v10, "alias"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "tags"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v0, "seq"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v2, 0x0

    :try_start_1b
    const-string v0, "proto_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_27

    move v15, v0

    goto :goto_42

    :catchall_27
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load tag/alias proto type failed - error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->j:I

    invoke-static {v8, v2, v0, v13, v14}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    const/4 v15, 0x0

    :goto_42
    :try_start_42
    const-string v0, "action_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4d

    goto :goto_68

    :catchall_4d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load tag/alias action type failed - error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->j:I

    invoke-static {v8, v15, v0, v13, v14}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    const/4 v0, 0x0

    :goto_68
    invoke-static/range {p0 .. p0}, Lcn/jpush/android/cache/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_74

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->m:I

    :goto_70
    invoke-static {v8, v15, v0, v13, v14}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-void

    :cond_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/jpush/android/h/a;->a(J)I

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_94

    if-ne v1, v7, :cond_84

    const-string v0, "set tags/alias too soon,over 10 times in 10s"

    goto :goto_86

    :cond_84
    const-string v0, "set tags/alias failed,time shaft error\uff0cplease try again"

    :goto_86
    invoke-static {v9, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v7, :cond_8e

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->l:I

    goto :goto_90

    :cond_8e
    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->n:I

    :goto_90
    invoke-static {v8, v15, v0, v13, v14}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-void

    :cond_94
    invoke-static {}, Lcn/jpush/android/h/b;->a()Lcn/jpush/android/h/b;

    move-result-object v1

    invoke-virtual {v1, v8, v15, v13, v14}, Lcn/jpush/android/h/b;->a(Landroid/content/Context;IJ)Z

    move-result v1

    if-eqz v1, :cond_a1

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->u:I

    goto :goto_70

    :cond_a1
    const/4 v1, 0x0

    const/4 v6, 0x2

    if-nez v15, :cond_b3

    const-string v1, "old tag/alias proto"

    invoke-static {v9, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v12, v11, v13, v14}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object/from16 v18, v10

    const/4 v10, 0x2

    goto :goto_d4

    :cond_b3
    if-ne v15, v7, :cond_ca

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide v3, v13

    move v5, v0

    move-object/from16 v18, v10

    const/4 v10, 0x2

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/util/List;JIII)Ljava/lang/String;

    move-result-object v1

    goto :goto_d3

    :cond_ca
    move-object/from16 v18, v10

    const/4 v10, 0x2

    if-ne v15, v10, :cond_d3

    invoke-static {v8, v11, v13, v14, v0}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    :cond_d3
    :goto_d3
    move-object v7, v1

    :goto_d4
    if-eqz v7, :cond_119

    const/4 v1, 0x1

    if-eq v15, v1, :cond_db

    if-ne v15, v10, :cond_119

    :cond_db
    invoke-static {}, Lcn/jpush/android/h/b;->a()Lcn/jpush/android/h/b;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcn/jpush/android/h/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-static {}, Lcn/jpush/android/h/b;->a()Lcn/jpush/android/h/b;

    move-result-object v1

    move v2, v15

    move v3, v0

    move-wide v4, v13

    move-object v6, v12

    move-object v0, v7

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Lcn/jpush/android/h/b;->a(IIJLjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_11a

    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v15, v1, :cond_fd

    const-string v10, "tag"

    goto :goto_ff

    :cond_fd
    move-object/from16 v10, v18

    :goto_ff
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is operatoring, please wait last operator complete"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v15, v1, :cond_113

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->v:I

    goto :goto_115

    :cond_113
    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->w:I

    :goto_115
    invoke-static {v8, v15, v0, v13, v14}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    return-void

    :cond_119
    move-object v0, v7

    :goto_11a
    invoke-static {v8, v15, v13, v14, v0}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IJLjava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/CallBackParams;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/CallBackParams;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcn/jpush/android/helper/k;->a()J

    move-result-wide v0

    if-eqz p3, :cond_11

    invoke-static {}, Lcn/jpush/android/h/c;->a()Lcn/jpush/android/h/c;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3, p3}, Lcn/jpush/android/h/c;->a(Landroid/content/Context;Ljava/lang/Long;Lcn/jpush/android/api/CallBackParams;)V

    :cond_11
    instance-of v2, p0, Landroid/app/Application;

    if-nez v2, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_19
    if-eqz p3, :cond_26

    iget v2, p3, Lcn/jpush/android/api/CallBackParams;->e:I

    if-nez v2, :cond_26

    invoke-static {}, Lcn/jpush/android/h/c;->a()Lcn/jpush/android/h/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/jpush/android/h/c;->a(Landroid/content/Context;)V

    :cond_26
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "alias"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_38

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_38
    const-string p2, "tags"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "seq"

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    if-eqz p3, :cond_4d

    iget v0, p3, Lcn/jpush/android/api/CallBackParams;->e:I

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "proto_type"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_68

    iget p2, p3, Lcn/jpush/android/api/CallBackParams;->f:I

    :cond_68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_type"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "JPUSH"

    const-string p2, "tagalis"

    invoke-static {p0, p1, p2, v2}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            "II)V"
        }
    .end annotation

    if-eqz p0, :cond_15

    new-instance v8, Lcn/jpush/android/api/CallBackParams;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/jpush/android/api/CallBackParams;-><init>(Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;JII)V

    invoke-static {p0, p1, p2, v8}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/CallBackParams;)V

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(II)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    if-eq p1, v0, :cond_10

    const/4 p0, 0x2

    if-eq p1, p0, :cond_10

    const/4 p0, 0x3

    if-eq p1, p0, :cond_10

    const/4 p0, 0x6

    if-ne p1, p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;J)Z
    .registers 8

    invoke-static {p2}, Lcn/jpush/android/j/d;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", will not set alias this time."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TagAliasHelper"

    invoke-static {v1, p2}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, p3, p4}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    const/4 p0, 0x0

    return p0

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;ILjava/util/Set;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    invoke-static {p2}, Lcn/jpush/android/j/d;->a(Ljava/util/Set;)I

    move-result p2

    if-eqz p2, :cond_12

    const-string v0, "TagAliasHelper"

    const-string v1, "Invalid tags, will not set tags this time."

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/2addr p0, v1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tags length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TagAliasHelper"

    invoke-static {v2, v0}, Lcn/jpush/android/helper/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    const/16 p1, 0x1388

    if-gt p0, p1, :cond_32

    goto :goto_33

    :cond_2d
    const/16 p1, 0x1b58

    if-gt p0, p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "valid"

    return-object p0

    :pswitch_8
    const-string p0, "get"

    return-object p0

    :pswitch_b
    const-string p0, "clean"

    return-object p0

    :pswitch_e
    const-string p0, "del"

    return-object p0

    :pswitch_11
    const-string p0, "set"

    return-object p0

    :pswitch_14
    const-string p0, "add"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static b(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, ""

    return-object p0

    :cond_d
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {v2}, Lcn/jpush/android/j/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    if-nez v0, :cond_2d

    goto :goto_41

    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_41
    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x3e8

    if-lt v1, v0, :cond_48

    return-object v2

    :cond_48
    move-object v0, v2

    goto :goto_12

    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TagAliasHelper"

    invoke-static {v3, v2}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_61
    return-object v0
.end method

.method private static b(II)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    if-ne p1, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;JI)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p4, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-static {p1, v2}, Lcn/jpush/android/h/a;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3f

    sget p1, Lcn/jpush/android/api/JPushInterface$ErrorCode;->i:I

    invoke-static {p0, p4, p1, p2, p3}, Lcn/jpush/android/h/a;->a(Landroid/content/Context;IIJ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The length of tags should be less than "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2b

    const/16 p1, 0x1388

    goto :goto_2d

    :cond_2b
    const/16 p1, 0x1b58

    :goto_2d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TagAliasHelper"

    invoke-static {p1, p0}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3f
    return v0
.end method

.method private static c(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method
