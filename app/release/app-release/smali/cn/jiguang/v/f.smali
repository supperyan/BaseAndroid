.class public final Lcn/jiguang/v/f;
.super Ljava/lang/Object;


# annotations


# direct methods
.method public static a([Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "executeCommand "

    const-string v1, "executeCommand  exception:"

    const-string v2, "JCommonShellHelper"

    const/4 v3, 0x0

    if-eqz p1, :cond_f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    :cond_f
    move-object v4, v3

    :goto_10
    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_19

    goto :goto_37

    :catchall_19
    const/4 v5, 0x3

    :try_start_1a
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "/system/bin/sh"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "-c"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-static {v7, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v9, v5, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_37} :catch_e4

    :goto_37
    if-eqz p1, :cond_75

    :try_start_39
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_42} :catch_70

    :try_start_42
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_65

    :goto_47
    :try_start_47
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_53
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_59

    goto :goto_47

    :cond_51
    move-object v3, v6

    goto :goto_76

    :catchall_53
    move-exception v3

    move-object v11, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v6

    goto :goto_63

    :catch_59
    move-exception v3

    move-object v11, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v6

    goto :goto_69

    :catchall_5f
    move-exception v6

    move-object v11, v5

    move-object v5, p1

    move-object p1, v6

    :goto_63
    move-object v6, v11

    goto :goto_a1

    :catch_65
    move-exception v6

    move-object v11, v5

    move-object v5, p1

    move-object p1, v6

    :goto_69
    move-object v6, v11

    goto/16 :goto_e7

    :catchall_6c
    move-exception p1

    move-object v6, v5

    move-object v5, v3

    goto :goto_a1

    :catch_70
    move-exception p1

    move-object v6, v5

    move-object v5, v3

    goto/16 :goto_e7

    :cond_75
    move-object p1, v3

    :goto_76
    if-eqz v3, :cond_7e

    :try_start_78
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_7e

    :catch_7c
    move-exception p0

    goto :goto_84

    :cond_7e
    :goto_7e
    if-eqz p1, :cond_97

    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_83} :catch_7c

    goto :goto_97

    :goto_84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    if-eqz v5, :cond_12c

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_12c

    :catchall_9e
    move-exception p1

    move-object v5, v3

    move-object v6, v5

    :goto_a1
    :try_start_a1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " throwable:"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_a1 .. :try_end_c0} :catchall_12d

    if-eqz v3, :cond_c8

    :try_start_c2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_c8

    :catch_c6
    move-exception p0

    goto :goto_ce

    :cond_c8
    :goto_c8
    if-eqz v5, :cond_e1

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_cd} :catch_c6

    goto :goto_e1

    :goto_ce
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    :goto_e1
    if-eqz v6, :cond_12c

    goto :goto_129

    :catch_e4
    move-exception p1

    move-object v5, v3

    move-object v6, v5

    :goto_e7
    :try_start_e7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception:"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_e7 .. :try_end_106} :catchall_12d

    if-eqz v3, :cond_10e

    :try_start_108
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_10e

    :catch_10c
    move-exception p0

    goto :goto_114

    :cond_10e
    :goto_10e
    if-eqz v5, :cond_127

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_113} :catch_10c

    goto :goto_127

    :goto_114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    :goto_127
    if-eqz v6, :cond_12c

    :goto_129
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_12c
    :goto_12c
    return-object v4

    :catchall_12d
    move-exception p0

    if-eqz v3, :cond_136

    :try_start_130
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_136

    :catch_134
    move-exception p1

    goto :goto_13c

    :cond_136
    :goto_136
    if-eqz v5, :cond_14f

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_13b} :catch_134

    goto :goto_14f

    :goto_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14f
    :goto_14f
    if-eqz v6, :cond_154

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_154
    goto :goto_156

    :goto_155
    throw p0

    :goto_156
    goto :goto_155
.end method
