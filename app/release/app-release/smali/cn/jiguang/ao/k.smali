.class public final Lcn/jiguang/ao/k;
.super Ljava/lang/Object;


# annotations


# static fields
.field public static a:Lorg/json/JSONObject; = null

.field public static b:Z = true

.field public static c:Z = true

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = "/v3/report"

.field private static f:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;Lorg/json/JSONObject;Ljava/io/File;Lcn/jiguang/api/ReportCallBack;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/io/File;",
            "Lcn/jiguang/api/ReportCallBack;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object v6, p1

    move-object/from16 v8, p4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const-string v12, "ReportUtils"

    if-eqz p2, :cond_c6

    :try_start_b
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_c6

    :cond_13
    invoke-static {p0}, Lcn/jiguang/f/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v0, "no network, give up upload"

    invoke-static {v12, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_c4

    invoke-static/range {p3 .. p3}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    const/4 v0, -0x2

    if-eqz v8, :cond_27

    invoke-interface {v8, v0}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_27
    return v0

    :cond_28
    :try_start_28
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v10, v2}, Lcn/jiguang/ao/k;->a(Ljava/lang/String;ZI)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_b6

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_b6

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    if-nez v2, :cond_40

    goto/16 :goto_b6

    :cond_40
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [B

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "will upload length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v3

    sget-boolean v2, Lcn/jiguang/ao/k;->b:Z

    if-eqz v2, :cond_74

    const/16 v2, 0x77d8

    if-ge v1, v2, :cond_74

    if-eqz v6, :cond_74

    const-string v1, "crash_log"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    const/4 v1, 0x1

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    if-eqz v1, :cond_8d

    invoke-static {}, Lcn/jiguang/at/k;->a()Lcn/jiguang/at/k;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v5, p3

    move-object v6, p1

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lorg/json/JSONObject;[BILjava/io/File;Ljava/util/Set;Lcn/jiguang/api/ReportCallBack;)Lcn/jiguang/at/m;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/at/k;->a()Lcn/jiguang/at/k;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcn/jiguang/at/k;->a(Landroid/content/Context;Lcn/jiguang/at/m;)V

    return v10

    :cond_8d
    invoke-static {p0, v3, v4, p1}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;[BILjava/util/Set;)I

    move-result v9

    if-nez v9, :cond_ab

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http upload success json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/f/g;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V
    :try_end_ab
    .catchall {:try_start_28 .. :try_end_ab} :catchall_c4

    :cond_ab
    if-eq v9, v10, :cond_b5

    invoke-static/range {p3 .. p3}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    if-eqz v8, :cond_b5

    invoke-interface {v8, v9}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_b5
    return v9

    :cond_b6
    :goto_b6
    :try_start_b6
    const-string v0, "package body failed, give up upload"

    invoke-static {v12, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_c4

    invoke-static/range {p3 .. p3}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    if-eqz v8, :cond_c3

    invoke-interface {v8, v11}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_c3
    return v11

    :catchall_c4
    move-exception v0

    goto :goto_d4

    :cond_c6
    :goto_c6
    :try_start_c6
    const-string v0, "upload content is empty, do nothing"

    invoke-static {v12, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_c4

    invoke-static/range {p3 .. p3}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    if-eqz v8, :cond_d3

    invoke-interface {v8, v11}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_d3
    return v11

    :goto_d4
    :try_start_d4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload failed, error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_d4 .. :try_end_e5} :catchall_ee

    invoke-static/range {p3 .. p3}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    if-eqz v8, :cond_ed

    invoke-interface {v8, v11}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_ed
    return v11

    :catchall_ee
    move-exception v0

    if-eq v9, v10, :cond_f9

    invoke-static/range {p3 .. p3}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    if-eqz v8, :cond_f9

    invoke-interface {v8, v9}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_f9
    throw v0
.end method

.method private static a(Landroid/content/Context;[BILjava/util/Set;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[BI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcn/jiguang/ao/a;->a()Lcn/jiguang/ao/a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcn/jiguang/ao/a;->b(Landroid/content/Context;)Lcn/jiguang/ao/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/jiguang/ao/a;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_31
    invoke-static {}, Lcn/jiguang/api/JCoreManager;->isTestEnv()Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Lcn/jiguang/ao/k;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    sget-object v2, Lcn/jiguang/ao/k;->f:Ljava/lang/String;

    goto :goto_44

    :cond_42
    const-string v2, "stats.jpush.cn"

    :goto_44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v7, "https://"

    if-nez v3, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5e
    const/4 v8, 0x1

    invoke-static {v8}, Lcn/jiguang/g/a;->a(Z)Lcn/jiguang/g/a;

    move-result-object v2

    invoke-static {v6, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_b1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_78
    if-ge v4, v3, :cond_b1

    aget-object v5, v2, v4

    invoke-static {v5}, Lcn/jiguang/f/i;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8c

    sget-boolean v10, Lcn/jiguang/ao/k;->c:Z

    if-eqz v10, :cond_ae

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a1

    :cond_8c
    invoke-static {v5}, Lcn/jiguang/f/i;->g(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9c

    sget-boolean v10, Lcn/jiguang/ao/k;->c:Z

    if-nez v10, :cond_ae

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a1

    :cond_9c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    :cond_b1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " find urls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "ReportUtils"

    invoke-static {v10, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v11, -0x2

    const-string v12, "can\'t get url, give up upload"

    if-eqz v2, :cond_d9

    invoke-static {v10, v12}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_d9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_eb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v15, -0x1

    if-eqz v0, :cond_1a0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-static {v10, v12}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    :cond_102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_114

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v0, "won\'t use http at device since 28"

    invoke-static {v10, v0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    :cond_114
    sget-object v1, Lcn/jiguang/ao/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/jiguang/ao/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12d
    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "upload"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v11, v5

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcn/jiguang/ao/b;->a(Landroid/content/Context;Ljava/lang/String;[BIII)Lcn/jiguang/ao/n;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/ao/n;->a()I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_193

    if-eq v1, v15, :cond_17a

    if-eqz v1, :cond_179

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_173
    invoke-static {v10, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x2

    goto/16 :goto_eb

    :cond_179
    return v9

    :cond_17a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/jiguang/ao/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_173

    :cond_193
    new-array v0, v8, [Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v6, v0}, Lcn/jiguang/ao/d;->a(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0

    :cond_1a0
    return v15
.end method

.method private static a(Ljava/lang/String;ZI)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_1
    const-string p2, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_25

    :try_start_7
    invoke-static {p0}, Lcn/jiguang/f/k;->a([B)[B

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_25

    invoke-static {}, Lcn/jiguang/bb/c;->a()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcn/jiguang/bb/c;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iop203040506aPk!"

    const/4 v2, 0x1

    :try_start_17
    invoke-static {p0, v0, v1, v2}, Lcn/jiguang/bb/c;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    const-string p0, "ReportUtils"

    const-string p1, " miss uid,generate report token failed"

    invoke-static {p0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_24
    invoke-static {}, Lcn/jiguang/g/a;->e()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/i;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    return-object v1

    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_73} :catch_74

    goto :goto_7b

    :catch_74
    const-string p0, "getBasicAuthorization"

    const-string p1, "basic authorization encode failed"

    invoke-static {p0, p1}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCi0v4VEUhOdfIEfFCrPC72pcDsQF/luTmr4q34NY0EZYGKzfQuTrUAm916P52HCgF+342gjZ/Nvijts5543qYNyoLvgtu4NRcHJmuGI/w7qifhfsivYeoEj9wYphXOyB9HUjzwn1BtAih+1RyUrcErCi249yabUOIKQygPZ9OXXQIDAQAB"

    invoke-static {p0, v0}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_f

    :catchall_7
    const-string p0, "getBasicAuthorization"

    const-string v0, "basic authorization encode failed"

    invoke-static {p0, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;II)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_80

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_80

    :cond_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1a

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1a
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    move-object v2, p2

    const/4 p2, 0x0

    :goto_27
    if-ltz v1, :cond_77

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    :try_start_2d
    invoke-static {v3}, Lcn/jiguang/f/g;->b(Lorg/json/JSONObject;)I

    move-result v4

    if-nez v4, :cond_34

    goto :goto_74

    :cond_34
    add-int v5, v0, v4

    const v6, 0x32000

    if-le v5, v6, :cond_3c

    goto :goto_77

    :cond_3c
    add-int v6, p2, v4

    const v7, 0xa000

    if-le v6, v7, :cond_59

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_60

    :try_start_51
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_56

    move-object v2, v6

    goto :goto_5d

    :catchall_56
    move-exception v3

    move-object v2, v6

    goto :goto_61

    :cond_59
    :try_start_59
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_60

    move v4, v6

    :goto_5d
    move p2, v4

    move v0, v5

    goto :goto_74

    :catchall_60
    move-exception v3

    :goto_61
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "partition exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReportUtils"

    invoke-static {v4, v3}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_77
    :goto_77
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_80

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    :goto_80
    return-object p1
.end method

.method static synthetic a(Lorg/json/JSONArray;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/ao/k;->c(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_8
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/ao/k;->c(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 1

    invoke-static {p0}, Lcn/jiguang/ao/k;->c(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9

    const-string v0, "ReportUtils"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "platform"

    const-string v4, "a"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v3

    invoke-static {p0, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_29

    const-string p0, "miss uid when wrap container info"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_29
    const-string v5, "uid"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string p0, "miss app_key when wrap container info"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3e
    const-string v4, "app_key"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcn/jiguang/internal/ActionManager;->getInstance()Lcn/jiguang/internal/ActionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/jiguang/internal/ActionManager;->wrapSdkVersionInfo(Lorg/json/JSONObject;)Z

    const-string v3, "core_sdk_ver"

    sget-object v4, Lcn/jiguang/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcn/jiguang/am/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "channel"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_66

    :cond_61
    const-string v3, "miss channel when wrap container info,but continue report..."

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    invoke-static {p0}, Lcn/jiguang/c/b;->b(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_7e

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7e

    const-string v3, "app_version"

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_83

    :cond_7e
    const-string p0, "miss app version when wrap container info,but continue report..."

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_84

    :goto_83
    return-object v2

    :catchall_84
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wrapContainerInfo exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "content"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_a

    :catch_a
    invoke-static {v0, p1}, Lcn/jiguang/f/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILorg/json/JSONObject;[BILjava/io/File;Ljava/util/Set;Lcn/jiguang/api/ReportCallBack;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lorg/json/JSONObject;",
            "[BI",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jiguang/api/ReportCallBack;",
            ")V"
        }
    .end annotation

    const-string v0, "ReportUtils"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTcpReportResult, types="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x3

    if-eq p1, v1, :cond_67

    if-eqz p1, :cond_49

    invoke-static {p0, p3, p4, p6}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;[BILjava/util/Set;)I

    move-result p1

    if-nez p1, :cond_74

    sget-boolean p0, Lcn/jiguang/internal/JConstants;->DEBUG_MODE:Z

    if-eqz p0, :cond_43

    sget-boolean p0, Lcn/jiguang/internal/JConstants;->INTERNAL_USE:Z

    if-eqz p0, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "http upload success, json="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/f/g;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    invoke-static {p5}, Lcn/jiguang/f/e;->a(Ljava/io/File;)V

    goto :goto_74

    :catchall_47
    nop

    goto :goto_7d

    :cond_49
    sget-boolean p0, Lcn/jiguang/internal/JConstants;->DEBUG_MODE:Z

    if-eqz p0, :cond_43

    sget-boolean p0, Lcn/jiguang/internal/JConstants;->INTERNAL_USE:Z

    if-eqz p0, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "tcp upload success, json="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/f/g;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_67
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-static {p0, p2}, Lcn/jiguang/ao/d;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_2 .. :try_end_74} :catchall_47

    :cond_74
    :goto_74
    if-eqz p7, :cond_79

    invoke-interface {p7, p1}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_79
    invoke-static {p5}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    return-void

    :goto_7d
    if-eqz p7, :cond_82

    invoke-interface {p7, p1}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    :cond_82
    invoke-static {p5}, Lcn/jiguang/ao/d;->a(Ljava/io/File;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "ReportUtils"

    :try_start_2
    invoke-static {p1}, Lcn/jiguang/ao/k;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "BUILD_REPORT"

    new-instance v2, Lcn/jiguang/ao/l;

    invoke-direct {v2, p1, p0}, Lcn/jiguang/ao/l;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_13
    const-string p1, "data is invalid or empty"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    invoke-static {p0}, Lcn/jiguang/ao/d;->b(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "report e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "reportAtPushService"

    const-string v1, "ReportUtils"

    :try_start_4
    const-string v2, "going to report data at push service"

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "sdk_type"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-static {p2}, Lcn/jiguang/ao/k;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "report_data"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const-string p1, "a1"

    invoke-static {p0, p1, v2}, Lcn/jiguang/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2e

    goto :goto_37

    :catchall_2e
    move-exception p0

    :try_start_2f
    invoke-static {v1, v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception p0

    invoke-static {v1, v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_37
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/Set;)V
    .registers 12

    const-string v0, "ReportUtils"

    :try_start_2
    invoke-static {}, Lcn/jiguang/ao/a;->a()Lcn/jiguang/ao/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/jiguang/ao/a;->a(Landroid/content/Context;)Lcn/jiguang/ao/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/jiguang/ao/a;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    const/4 v4, 0x1

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2f

    const-string v1, "tmp"

    goto :goto_31

    :cond_2f
    const-string v1, "nowrap"

    :goto_31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v5, 0xa000

    const v6, 0x32000

    invoke-static {p1, v5, v6}, Lcn/jiguang/ao/k;->a(Lorg/json/JSONArray;II)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_96

    :try_start_52
    invoke-static {v5, v2}, Lcn/jiguang/ao/k;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v1, v5, v4}, Lcn/jiguang/ao/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save report types="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_46

    const-string v7, "UPLOAD_REPORT"

    new-instance v8, Lcn/jiguang/ao/m;

    invoke-direct {v8, p0, p2, v5, v6}, Lcn/jiguang/ao/m;-><init>(Landroid/content/Context;Ljava/util/Set;Lorg/json/JSONObject;Ljava/io/File;)V

    invoke-static {v7, v8}, Lcn/jiguang/ba/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_8b
    .catchall {:try_start_52 .. :try_end_8b} :catchall_8c

    goto :goto_46

    :catchall_8c
    :try_start_8c
    const-string v5, "buildReport [for item]"

    const-string v6, "JCore"

    const/4 v7, 0x5

    invoke-static {v6, v0, v3, v7, v5}, Lcn/jiguang/an/a;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_96

    goto :goto_46

    :cond_95
    return-void

    :catchall_96
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "report exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcn/jiguang/api/ReportCallBack;)V
    .registers 8

    const-string v0, "ReportUtils"

    if-eqz p1, :cond_5d

    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5d

    invoke-static {p0}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string p1, "wrap data failed"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5d

    const/4 p1, -0x1

    invoke-interface {p2, p1}, Lcn/jiguang/api/ReportCallBack;->onFinish(I)V

    goto :goto_5d

    :cond_1c
    invoke-static {p1}, Lcn/jiguang/ao/k;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1, v1}, Lcn/jiguang/ao/k;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reportWithoutStore type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, p2}, Lcn/jiguang/ao/k;->a(Landroid/content/Context;Ljava/util/Set;Lorg/json/JSONObject;Ljava/io/File;Lcn/jiguang/api/ReportCallBack;)I
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_4b

    goto :goto_5d

    :catchall_4b
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "reportWithoutStore exception:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    invoke-static {p0}, Lcn/jiguang/ao/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 6

    const-string v0, "ReportUtils"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcn/jiguang/f/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string p0, "file_name is null , give up save "

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    if-nez p0, :cond_23

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "context is null , give up save "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2c

    :cond_2a
    const-string p2, ""

    :goto_2c
    invoke-static {p0, p1}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/jiguang/f/e;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_35

    return p0

    :catchall_35
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "writeLogFile e:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 5

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_24

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_27
    return-object v0

    :cond_28
    :goto_28
    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_10

    return v1

    :cond_10
    return v2

    :cond_11
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1f

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_1e

    return v1

    :cond_1e
    return v2

    :cond_1f
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_30

    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcn/jiguang/ao/k;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_30

    return v1

    :cond_30
    return v2
.end method

.method private static c(Lorg/json/JSONArray;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_20

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/ao/k;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string v2, ""

    :cond_1a
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    return-object v0
.end method

.method private static c(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_43

    if-eqz v1, :cond_20

    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    move-object p0, v1

    goto :goto_36

    :catchall_f
    :try_start_f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_35

    goto :goto_36

    :cond_20
    :try_start_20
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2e

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_36

    :cond_2e
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_35

    check-cast p0, Lorg/json/JSONArray;

    goto :goto_36

    :catchall_35
    :cond_35
    move-object p0, v0

    :goto_36
    invoke-static {p0}, Lcn/jiguang/ao/k;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_43

    if-lez v1, :cond_57

    return-object p0

    :catchall_43
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adapt JSONArray e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReportUtils"

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return-object v0
.end method
