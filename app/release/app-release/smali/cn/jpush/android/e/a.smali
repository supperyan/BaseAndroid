.class public Lcn/jpush/android/e/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;IJ)Ljava/lang/String;
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:httpSimpleGet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1d

    const/16 v2, 0xa

    if-le p1, v2, :cond_1e

    :cond_1d
    const/4 p1, 0x1

    :cond_1e
    const-wide/16 v2, 0xc8

    cmp-long v0, p2, v2

    if-ltz v0, :cond_2b

    const-wide/32 v2, 0xea60

    cmp-long v0, p2, v2

    if-lez v0, :cond_2d

    :cond_2b
    const-wide/16 p2, 0x7d0

    :cond_2d
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v2, v3

    const/4 v4, -0x1

    :catch_32
    :goto_32
    :try_start_32
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_92

    :try_start_3d
    const-string v6, "Connection"

    const-string v7, "Close"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statusCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcn/jpush/android/helper/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_87

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_6b
    .catchall {:try_start_3d .. :try_end_6b} :catchall_90

    :try_start_6b
    invoke-static {v6}, Lcn/jpush/android/e/a;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_94

    if-eqz v5, :cond_7b

    :try_start_78
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7b

    :catchall_7b
    :cond_7b
    :try_start_7b
    invoke-static {v6}, Lcn/jpush/android/j/f;->a(Ljava/io/Closeable;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_83
    .catch Ljava/lang/AssertionError; {:try_start_7b .. :try_end_7e} :catch_7f

    return-object v8

    :catch_7f
    move-exception v2

    move-object v5, v2

    move-object v2, v8

    goto :goto_c4

    :catch_83
    move-exception v2

    move-object v5, v2

    move-object v2, v8

    goto :goto_de

    :cond_87
    if-eqz v5, :cond_8c

    :try_start_89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8c

    :catchall_8c
    :cond_8c
    :try_start_8c
    invoke-static {v3}, Lcn/jpush/android/j/f;->a(Ljava/io/Closeable;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_dd
    .catch Ljava/lang/AssertionError; {:try_start_8c .. :try_end_8f} :catch_c3

    goto :goto_f6

    :catchall_90
    move-object v6, v3

    goto :goto_94

    :catchall_92
    move-object v5, v3

    move-object v6, v5

    :catchall_94
    :goto_94
    :try_start_94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "httpSimpleGet failed,retriedCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",statusCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_b9

    if-eqz v5, :cond_b5

    :try_start_b2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b5

    :catchall_b5
    :cond_b5
    :try_start_b5
    invoke-static {v6}, Lcn/jpush/android/j/f;->a(Ljava/io/Closeable;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_dd
    .catch Ljava/lang/AssertionError; {:try_start_b5 .. :try_end_b8} :catch_c3

    goto :goto_f6

    :catchall_b9
    move-exception v7

    if-eqz v5, :cond_bf

    :try_start_bc
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_bf

    :catchall_bf
    :cond_bf
    :try_start_bf
    invoke-static {v6}, Lcn/jpush/android/j/f;->a(Ljava/io/Closeable;)V

    throw v7
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c3} :catch_dd
    .catch Ljava/lang/AssertionError; {:try_start_bf .. :try_end_c3} :catch_c3

    :catch_c3
    move-exception v5

    :goto_c4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Catch AssertionError to avoid http close crash - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f6

    :catch_dd
    move-exception v5

    :goto_de
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http client execute error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f6
    if-lt v0, p1, :cond_f9

    return-object v2

    :cond_f9
    add-int/lit8 v0, v0, 0x1

    :try_start_fb
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_fe} :catch_32

    goto/16 :goto_32
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 1

    invoke-static {p0}, Lcn/jpush/android/j/f;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:httpGetIconBytes-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_17
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_10d

    :try_start_22
    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Close"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpGetIconBytes statusCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jpush/android/helper/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_b5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_59
    .catchall {:try_start_22 .. :try_end_59} :catchall_10a

    if-eqz v3, :cond_65

    :try_start_5b
    invoke-static {v3}, Lcn/jpush/android/e/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_60

    goto :goto_66

    :catchall_60
    move-exception p0

    move-object v4, v0

    :goto_62
    move-object v0, v3

    goto/16 :goto_110

    :cond_65
    move-object v4, v0

    :goto_66
    if-eqz v4, :cond_a3

    if-nez p0, :cond_6b

    goto :goto_a3

    :cond_6b
    const/16 v5, 0x7800

    if-le p0, v5, :cond_8e

    :try_start_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "httpGetIconBytes - Unexpected:icon  size too big,max size is"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_6f .. :try_end_83} :catchall_b3

    if-eqz v3, :cond_88

    :try_start_85
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_88
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_8d

    :catchall_8d
    :cond_8d
    return-object v0

    :cond_8e
    :try_start_8e
    array-length v5, v4

    if-ge v5, p0, :cond_a1

    const-string p0, "httpGetIconBytes - Download bytes failed. Got bytes len < header content length."

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_b3

    if-eqz v3, :cond_9b

    :try_start_98
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9b
    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_a0

    :catchall_a0
    :cond_a0
    return-object v0

    :cond_a1
    move-object v0, v3

    goto :goto_ff

    :cond_a3
    :goto_a3
    :try_start_a3
    const-string p0, "httpGetIconBytes - Unexpected: downloaded bytes content length is 0"

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_b3

    if-eqz v3, :cond_ad

    :try_start_aa
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_ad
    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_b2

    :catchall_b2
    :cond_b2
    return-object v0

    :catchall_b3
    move-exception p0

    goto :goto_62

    :cond_b5
    const/16 v4, 0x190

    if-ne v4, v3, :cond_ce

    :try_start_b9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpGetIconBytes - server response failure - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_ca
    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe

    :cond_ce
    const/16 v4, 0x194

    if-ne v4, v3, :cond_e4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpGetIconBytes - Request path does not exist: 404 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_ca

    :cond_e4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpGetIconBytes - Other wrong response status - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", url:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_fd
    .catchall {:try_start_b9 .. :try_end_fd} :catchall_10a

    goto :goto_ca

    :goto_fe
    move-object v4, v0

    :goto_ff
    if-eqz v0, :cond_104

    :try_start_101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_104
    if-eqz v2, :cond_130

    :goto_106
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_130

    goto :goto_130

    :catchall_10a
    move-exception p0

    move-object v4, v0

    goto :goto_110

    :catchall_10d
    move-exception p0

    move-object v2, v0

    move-object v4, v2

    :goto_110
    :try_start_110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpGetIconBytes failed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_110 .. :try_end_128} :catchall_131

    if-eqz v0, :cond_12d

    :try_start_12a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_130

    :cond_12d
    if-eqz v2, :cond_130

    goto :goto_106

    :catchall_130
    :cond_130
    :goto_130
    return-object v4

    :catchall_131
    move-exception p0

    if-eqz v0, :cond_137

    :try_start_134
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_137
    if-eqz v2, :cond_13c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13c
    .catchall {:try_start_134 .. :try_end_13c} :catchall_13c

    :catchall_13c
    :cond_13c
    goto :goto_13e

    :goto_13d
    throw p0

    :goto_13e
    goto :goto_13d
.end method

.method public static a(Ljava/lang/String;I)[B
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_e

    invoke-static {p0}, Lcn/jpush/android/e/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    :goto_e
    return-object v0
.end method

.method public static a(Ljava/lang/String;IJI)[B
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p4, :cond_e

    invoke-static {p0, p1, p2, p3}, Lcn/jpush/android/e/a;->b(Ljava/lang/String;IJ)[B

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    :goto_e
    return-object v0
.end method

.method public static b(Ljava/lang/String;IJ)[B
    .registers 14

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v1, 0xa

    if-le p1, v1, :cond_8

    :cond_7
    const/4 p1, 0x1

    :cond_8
    const-wide/16 v0, 0xc8

    cmp-long v2, p2, v0

    if-ltz v2, :cond_15

    const-wide/32 v0, 0xea60

    cmp-long v2, p2, v0

    if-lez v2, :cond_17

    :cond_15
    const-wide/16 p2, 0x7d0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:httpGet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v3

    move-object v4, v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :catch_34
    :goto_34
    const/16 v7, 0xc8

    :try_start_36
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_97
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_36 .. :try_end_41} :catch_133
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_36 .. :try_end_41} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_9b

    :try_start_41
    const-string v4, "Accept-Encoding"

    const-string v9, "identity"

    invoke-virtual {v8, v4, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Connection"

    const-string v9, "Close"

    invoke-virtual {v8, v4, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statusCode:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jpush/android/helper/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v7, :cond_86

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-static {v0}, Lcn/jpush/android/e/a;->a(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_77
    .catchall {:try_start_41 .. :try_end_77} :catchall_c5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_41 .. :try_end_77} :catch_94
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_41 .. :try_end_77} :catch_92
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_77} :catch_90

    goto :goto_79

    :cond_78
    move-object p1, v3

    :goto_79
    if-eqz v0, :cond_80

    :try_start_7b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    nop

    :cond_80
    :goto_80
    if-eqz v8, :cond_da

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_da

    :cond_86
    if-eqz v0, :cond_8d

    :try_start_88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_8d

    :catch_8c
    nop

    :cond_8d
    :goto_8d
    if-eqz v8, :cond_c2

    goto :goto_bf

    :catch_90
    move-exception v4

    goto :goto_9e

    :catch_92
    move-object v4, v8

    goto :goto_c8

    :catch_94
    move-object v4, v8

    goto/16 :goto_133

    :catchall_97
    move-exception p0

    move-object v8, v4

    goto/16 :goto_151

    :catch_9b
    move-exception v7

    move-object v8, v4

    move-object v4, v7

    :goto_9e
    :try_start_9e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http client execute error:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_9e .. :try_end_b6} :catchall_c5

    if-eqz v0, :cond_bd

    :try_start_b8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_bd

    :catch_bc
    nop

    :cond_bd
    :goto_bd
    if-eqz v8, :cond_c2

    :goto_bf
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c2
    move-object v4, v8

    goto/16 :goto_144

    :catchall_c5
    move-exception p0

    goto/16 :goto_151

    :catch_c8
    :goto_c8
    :try_start_c8
    const-string p1, "Catch SSLHandshakeException, http client execute error!"

    invoke-static {v1, p1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_97

    if-eqz v0, :cond_d4

    :try_start_cf
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    nop

    :cond_d4
    :goto_d4
    if-eqz v4, :cond_d9

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d9
    move-object p1, v3

    :cond_da
    :goto_da
    if-ne v7, v5, :cond_108

    if-nez v6, :cond_e4

    :try_start_de
    const-string p0, "Unexpected: downloaded bytes content length is 0"

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_e4
    array-length p0, p1

    if-ge p0, v6, :cond_ed

    const-string p0, "Download bytes failed. Got bytes len < header content length."

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ec} :catch_ee

    return-object v3

    :cond_ed
    return-object p1

    :catch_ee
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parse response error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_fd
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_108
    const/16 p1, 0x190

    if-ne p1, v5, :cond_117

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "server response failure - "

    :goto_113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fd

    :cond_117
    const/16 p1, 0x194

    if-ne p1, v5, :cond_123

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request path does not exist: 404 - "

    goto :goto_113

    :cond_123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Other wrong response status - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", url:"

    goto :goto_113

    :catch_133
    :goto_133
    :try_start_133
    const-string v7, "Catch SSLPeerUnverifiedException, http client execute error!"

    invoke-static {v1, v7}, Lcn/jpush/android/helper/Logger;->ee(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_133 .. :try_end_138} :catchall_97

    if-eqz v0, :cond_13f

    :try_start_13a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_13e

    goto :goto_13f

    :catch_13e
    nop

    :cond_13f
    :goto_13f
    if-eqz v4, :cond_144

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_144
    :goto_144
    if-lt v2, p1, :cond_147

    return-object v3

    :cond_147
    add-int/lit8 v2, v2, 0x1

    int-to-long v7, v2

    mul-long v7, v7, p2

    :try_start_14c
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14f
    .catch Ljava/lang/InterruptedException; {:try_start_14c .. :try_end_14f} :catch_34

    goto/16 :goto_34

    :goto_151
    if-eqz v0, :cond_158

    :try_start_153
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_157

    goto :goto_158

    :catch_157
    nop

    :cond_158
    :goto_158
    if-eqz v8, :cond_15d

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15d
    goto :goto_15f

    :goto_15e
    throw p0

    :goto_15f
    goto :goto_15e
.end method
