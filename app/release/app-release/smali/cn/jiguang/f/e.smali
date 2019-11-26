.class public final Lcn/jiguang/f/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_e

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "can\'t get file :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtils"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([Ljava/io/File;)Ljava/io/File;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_22

    :cond_7
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    goto :goto_16

    :cond_14
    const-wide/16 v4, 0x0

    :goto_16
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1f

    move-object v0, v3

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static a(Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_23

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete File:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_23

    nop

    :catchall_23
    :cond_23
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_b

    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_c

    :catchall_9
    move-exception p0

    goto :goto_11

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p0, p1}, Lcn/jiguang/f/e;->a(Ljava/io/File;[B)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_9

    return p0

    :goto_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getBytes exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtils"

    invoke-static {p1, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/io/File;[B)Z
    .registers 7

    const-string v0, "FileUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_63

    :cond_c
    const/4 v2, 0x0

    if-nez p1, :cond_14

    :try_start_f
    new-array p1, v1, [B

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_3d

    :cond_14
    :goto_14
    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_12

    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2e

    :catchall_2e
    :cond_2e
    :try_start_2e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_12

    :try_start_33
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3b

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_3b
    move-exception p1

    move-object v2, v3

    :goto_3d
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save to file exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " path = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5e

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_5e
    move-exception p0

    invoke-static {v2}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_63
    :goto_63
    const-string p0, "file should not be null or a directory"

    invoke-static {v0, p0}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static varargs a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_7b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_7b

    :cond_11
    if-eqz p1, :cond_76

    array-length v1, p1

    if-eqz v1, :cond_76

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_20

    aget-object v1, p1, v3

    if-nez v1, :cond_20

    goto :goto_76

    :cond_20
    array-length v1, p1

    if-ne v1, v2, :cond_2a

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_2a
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p0, p1

    move-object v2, v1

    const/4 v1, 0x0

    :goto_35
    if-ge v1, p0, :cond_6d

    aget-object v4, p1, v1

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    if-eqz v4, :cond_55

    invoke-virtual {v6, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    goto :goto_59

    :cond_55
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    :goto_59
    if-eqz v6, :cond_42

    array-length v7, v6

    if-lez v7, :cond_42

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_42

    :cond_62
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    return-object v0

    :cond_69
    add-int/lit8 v1, v1, 0x1

    move-object v2, v5

    goto :goto_35

    :cond_6d
    new-array p0, v3, [Ljava/io/File;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0

    :cond_76
    :goto_76
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/jiguang/f/e;->a(Ljava/io/File;[Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcn/jiguang/f/e;->d(Ljava/io/File;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t encoding, give up read :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileUtils"

    invoke-static {v1, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    invoke-static {v3}, Lcn/jiguang/f/e;->c(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_23
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_26
    return-void
.end method

.method private static d(Ljava/io/File;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_42

    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_24

    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_26

    :catchall_24
    move-exception p0

    move-object v1, v0

    :goto_26
    :try_start_26
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t read, give up read. e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3d

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_3d
    move-exception p0

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_42
    :goto_42
    return-object v0
.end method
