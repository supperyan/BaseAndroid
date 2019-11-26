.class public Lcom/baidu/lbsapi/auth/g;
.super Ljava/lang/Object;


# annotations


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/g;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_72

    :cond_19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_73

    const-string v1, "cmwap"

    const-string v2, "ctwap"

    if-eqz p1, :cond_6f

    :try_start_23
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uniwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3gwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    :cond_5f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_6b} :catch_73

    if-eqz p1, :cond_71

    move-object v1, v2

    goto :goto_71

    :cond_6f
    const-string v1, "wifi"

    :cond_71
    :goto_71
    return-object v1

    :cond_72
    :goto_72
    return-object v0

    :catch_73
    move-exception p1

    sget-boolean v1, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v1, :cond_7b

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7b
    return-object v0
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 15

    const-string v0, "httpsPost failed,IOException:"

    const-string v1, "UTF-8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https Post start,url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/g;->c:Ljava/util/HashMap;

    if-nez v2, :cond_27

    const-string p1, "httpsPost request paramters is null."

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    return-void

    :cond_27
    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0xb

    :try_start_2f
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_131
    .catch Ljava/net/MalformedURLException; {:try_start_2f .. :try_end_33} :catch_193
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_164
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_134

    :try_start_33
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v10, p0, Lcom/baidu/lbsapi/auth/g;->c:Ljava/util/HashMap;

    invoke-static {v10}, Lcom/baidu/lbsapi/auth/g;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/lbsapi/auth/g;->c:Ljava/util/HashMap;

    invoke-static {v10}, Lcom/baidu/lbsapi/auth/g;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_124
    .catch Ljava/net/MalformedURLException; {:try_start_33 .. :try_end_58} :catch_12e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_58} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_58} :catch_128

    :try_start_58
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_ae

    :try_start_5c
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v10
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_a6

    if-ne v3, v10, :cond_91

    :try_start_62
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v9, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_88
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_8d

    :try_start_6c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_71
    invoke-virtual {v11}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-eq v5, v4, :cond_7c

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_71

    :cond_7c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_84
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_82} :catch_86

    move-object v5, v11

    goto :goto_91

    :catchall_84
    move-exception v1

    goto :goto_8a

    :catch_86
    move-exception v1

    goto :goto_8f

    :catchall_88
    move-exception v1

    move-object v11, v5

    :goto_8a
    move-object v5, v9

    goto/16 :goto_10a

    :catch_8d
    move-exception v1

    move-object v11, v5

    :goto_8f
    move-object v5, v9

    goto :goto_b1

    :cond_91
    :goto_91
    if-eqz v9, :cond_9b

    if-eqz v5, :cond_9b

    :try_start_95
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_9b
    if-eqz p1, :cond_a0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_124
    .catch Ljava/net/MalformedURLException; {:try_start_95 .. :try_end_a0} :catch_120
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a0} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a0} :catch_11a

    :cond_a0
    const/4 v6, 0x1

    goto :goto_f8

    :catchall_a2
    move-exception v1

    move-object v11, v5

    move-object v5, v9

    goto :goto_ac

    :catch_a6
    move-exception v1

    move-object v11, v5

    move-object v5, v9

    goto :goto_b0

    :catchall_aa
    move-exception v1

    move-object v11, v5

    :goto_ac
    const/4 v10, -0x1

    goto :goto_10a

    :catch_ae
    move-exception v1

    move-object v11, v5

    :goto_b0
    const/4 v10, -0x1

    :goto_b1
    :try_start_b1
    sget-boolean v2, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v2, :cond_d0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpsPost parse failed;"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_b1 .. :try_end_e9} :catchall_109

    if-eqz v5, :cond_f3

    if-eqz v11, :cond_f3

    :try_start_ed
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_f3
    if-eqz p1, :cond_f8

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_f8
    .catchall {:try_start_ed .. :try_end_f8} :catchall_124
    .catch Ljava/net/MalformedURLException; {:try_start_ed .. :try_end_f8} :catch_120
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f8} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f8} :catch_11a

    :cond_f8
    :goto_f8
    if-eqz v8, :cond_1c4

    :try_start_fa
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_ff

    goto/16 :goto_1c4

    :catch_ff
    move-exception p1

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_1c4

    :goto_104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1c4

    :catchall_109
    move-exception v1

    :goto_10a
    if-eqz v5, :cond_114

    if-eqz v11, :cond_114

    :try_start_10e
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_114
    if-eqz p1, :cond_119

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_119
    throw v1
    :try_end_11a
    .catchall {:try_start_10e .. :try_end_11a} :catchall_124
    .catch Ljava/net/MalformedURLException; {:try_start_10e .. :try_end_11a} :catch_120
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_11a} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_11a} :catch_11a

    :catch_11a
    move-exception p1

    move-object v5, v8

    goto :goto_136

    :catch_11d
    move-exception p1

    move-object v5, v8

    goto :goto_166

    :catch_120
    move-exception p1

    move-object v5, v8

    goto/16 :goto_195

    :catchall_124
    move-exception p1

    move-object v5, v8

    goto/16 :goto_21b

    :catch_128
    move-exception p1

    move-object v5, v8

    goto :goto_135

    :catch_12b
    move-exception p1

    move-object v5, v8

    goto :goto_165

    :catch_12e
    move-exception p1

    move-object v5, v8

    goto :goto_194

    :catchall_131
    move-exception p1

    goto/16 :goto_21b

    :catch_134
    move-exception p1

    :goto_135
    const/4 v10, -0x1

    :goto_136
    :try_start_136
    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_13d

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost failed,Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;
    :try_end_158
    .catchall {:try_start_136 .. :try_end_158} :catchall_131

    if-eqz v5, :cond_1c4

    :try_start_15a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_15e

    goto :goto_1c4

    :catch_15e
    move-exception p1

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_1c4

    goto :goto_104

    :catch_164
    move-exception p1

    :goto_165
    const/4 v10, -0x1

    :goto_166
    :try_start_166
    sget-boolean v1, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v1, :cond_16d

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_16d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;
    :try_end_186
    .catchall {:try_start_166 .. :try_end_186} :catchall_131

    if-eqz v5, :cond_1c4

    :try_start_188
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_18c

    goto :goto_1c4

    :catch_18c
    move-exception p1

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_1c4

    goto/16 :goto_104

    :catch_193
    move-exception p1

    :goto_194
    const/4 v10, -0x1

    :goto_195
    :try_start_195
    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_19c

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_19c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost failed,MalformedURLException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;
    :try_end_1b7
    .catchall {:try_start_195 .. :try_end_1b7} :catchall_131

    if-eqz v5, :cond_1c4

    :try_start_1b9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_1bd

    goto :goto_1c4

    :catch_1bd
    move-exception p1

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_1c4

    goto/16 :goto_104

    :cond_1c4
    :goto_1c4
    if-eqz v6, :cond_1f2

    if-eq v3, v10, :cond_1f2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "httpsPost failed,statusCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    return-void

    :cond_1f2
    iget-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    if-nez p1, :cond_204

    const-string p1, "httpsPost failed,mResult is null"

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    const-string p1, "httpsPost failed,internal error"

    invoke-static {v4, p1}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    return-void

    :cond_204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "httpsPost success end,parse result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    return-void

    :goto_21b
    if-eqz v5, :cond_229

    :try_start_21d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_220} :catch_221

    goto :goto_229

    :catch_221
    move-exception v0

    sget-boolean v1, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v1, :cond_229

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_229
    :goto_229
    goto :goto_22b

    :goto_22a
    throw p1

    :goto_22b
    goto :goto_22a
.end method

.method private static b(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_23

    :cond_1e
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljavax/net/ssl/HttpsURLConnection;
    .registers 9

    const-string v0, "Current network is not available."

    const/16 v1, -0xb

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/g;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/baidu/lbsapi/auth/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/g;->a:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/baidu/lbsapi/auth/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_a4

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNetwork = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    const-string v0, "cmwap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x50

    if-eqz v0, :cond_66

    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    const-string v7, "10.0.0.172"

    invoke-direct {v6, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_63
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_86

    :cond_66
    const-string v0, "ctwap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    const-string v7, "10.0.0.200"

    invoke-direct {v6, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_63

    :cond_81
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_63

    :goto_86
    new-instance v3, Lcom/baidu/lbsapi/auth/h;

    invoke-direct {v3, p0}, Lcom/baidu/lbsapi/auth/h;-><init>(Lcom/baidu/lbsapi/auth/g;)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const v3, 0xc350

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    return-object v0

    :cond_a4
    :goto_a4
    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->c(Ljava/lang/String;)V

    const/16 v3, -0xa

    invoke-static {v3, v0}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;
    :try_end_af
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_af} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_af} :catch_b0

    return-object v2

    :catch_b0
    move-exception v0

    sget-boolean v3, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v3, :cond_bf

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_bf
    const-string v0, "Init httpsurlconnection failed."

    :goto_c1
    invoke-static {v1, v0}, Lcom/baidu/lbsapi/auth/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    return-object v2

    :catch_c8
    move-exception v0

    sget-boolean v3, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v3, :cond_d7

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_d7
    const-string v0, "Auth server could not be parsed as a URL."

    goto :goto_c1
.end method

.method private c(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_25
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/lbsapi/auth/g;->c(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->c:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/baidu/lbsapi/auth/g;->c:Ljava/util/HashMap;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/lbsapi/auth/g;->b()Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    if-nez p1, :cond_20

    const-string p1, "syncConnect failed,httpsURLConnection is null"

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/a;->c(Ljava/lang/String;)V

    :goto_1d
    iget-object p1, p0, Lcom/baidu/lbsapi/auth/g;->d:Ljava/lang/String;

    return-object p1

    :cond_20
    invoke-direct {p0, p1}, Lcom/baidu/lbsapi/auth/g;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_1d
.end method

.method protected a()Z
    .registers 4

    const-string v0, "checkNetwork start"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/baidu/lbsapi/auth/g;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_13

    return v0

    :cond_13
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_27

    if-nez v1, :cond_20

    goto :goto_26

    :cond_20
    const-string v0, "checkNetwork end"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0

    :catch_27
    move-exception v1

    sget-boolean v2, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    return v0
.end method
