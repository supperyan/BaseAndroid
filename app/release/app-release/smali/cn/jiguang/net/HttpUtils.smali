.class public Lcn/jiguang/net/HttpUtils;
.super Ljava/lang/Object;


# annotations


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;Z)Lcn/jiguang/net/HttpResponse;
    .registers 11

    const-string v0, "HttpUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    new-instance v2, Lcn/jiguang/net/HttpResponse;

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/jiguang/net/HttpResponse;-><init>(Ljava/lang/String;)V

    :try_start_f
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcn/jiguang/net/HttpUtils;->getHttpURLConnectionWithProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1a1
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_17} :catch_235
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_1dd

    :try_start_17
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "host:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",port:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_62

    if-nez p0, :cond_41

    goto :goto_62

    :cond_41
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getRequestProperties()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, p0}, Lcn/jiguang/net/HttpUtils;->setURLConnection(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getConnectTimeout()I

    move-result v3

    if-ltz v3, :cond_55

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getConnectTimeout()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_55
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getReadTimeout()I

    move-result v3

    if-ltz v3, :cond_62

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getReadTimeout()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_62
    :goto_62
    instance-of v3, p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_64
    .catchall {:try_start_17 .. :try_end_64} :catchall_191
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_64} :catch_19b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_64} :catch_196

    const/4 v4, 0x1

    if-eqz v3, :cond_c8

    :try_start_67
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getSslTrustManager()Lcn/jiguang/net/SSLTrustManager;

    move-result-object v3

    if-eqz v3, :cond_90

    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getSslTrustManager()Lcn/jiguang/net/SSLTrustManager;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    if-eqz v3, :cond_90

    move-object v5, p0

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_90
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    if-eqz v3, :cond_a1

    move-object v3, p0

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    :goto_9d
    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_c8

    :cond_a1
    move-object v3, p0

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v5, Lcn/jiguang/net/DefaultHostVerifier;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/jiguang/net/DefaultHostVerifier;-><init>(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_67 .. :try_end_b1} :catchall_b2

    goto :goto_9d

    :catchall_b2
    move-exception v3

    :try_start_b3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "set ssl config error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/an/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    if-eqz p2, :cond_e3

    const-string p2, "POST"

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->getParas()[B

    move-result-object p2

    if-eqz p2, :cond_e3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_df
    .catchall {:try_start_b3 .. :try_end_df} :catchall_191
    .catch Ljava/net/MalformedURLException; {:try_start_b3 .. :try_end_df} :catch_19b
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_df} :catch_196

    :try_start_df
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_e4

    :cond_e3
    move-object v3, v1

    :goto_e4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {v2, p2}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V
    :try_end_eb
    .catchall {:try_start_df .. :try_end_eb} :catchall_183
    .catch Ljava/net/MalformedURLException; {:try_start_df .. :try_end_eb} :catch_18c
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_eb} :catch_187

    :try_start_eb
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_f0

    goto :goto_107

    :catchall_f0
    move-exception v4

    :try_start_f1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get input stream error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f1 .. :try_end_106} :catchall_183
    .catch Ljava/net/MalformedURLException; {:try_start_f1 .. :try_end_106} :catch_18c
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_106} :catch_187

    move-object v4, v1

    :goto_107
    :try_start_107
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->isHaveRspData()Z

    move-result v5
    :try_end_10b
    .catchall {:try_start_107 .. :try_end_10b} :catchall_172
    .catch Ljava/net/MalformedURLException; {:try_start_107 .. :try_end_10b} :catch_17d
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10b} :catch_177

    if-eqz v5, :cond_122

    if-eqz v4, :cond_122

    :try_start_10f
    invoke-static {v4}, Lcn/jiguang/net/HttpUtils;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_122

    if-eqz v5, :cond_123

    :try_start_115
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->isRspDatazip()Z

    move-result v6

    if-eqz v6, :cond_123

    invoke-static {v5}, Lcn/jiguang/f/k;->b([B)[B

    move-result-object v5
    :try_end_11f
    .catchall {:try_start_115 .. :try_end_11f} :catchall_120

    goto :goto_123

    :catchall_120
    nop

    goto :goto_123

    :catchall_122
    :cond_122
    move-object v5, v1

    :cond_123
    :goto_123
    if-nez v5, :cond_137

    const/16 v6, 0xc8

    if-eq p2, v6, :cond_137

    :try_start_129
    invoke-virtual {p1}, Lcn/jiguang/net/HttpRequest;->isNeedErrorInput()Z

    move-result p1

    if-eqz p1, :cond_137

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/net/HttpUtils;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v5

    :cond_137
    if-eqz v5, :cond_143

    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, v5, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, p1}, Lcn/jiguang/net/HttpResponse;->setResponseBody(Ljava/lang/String;)V

    :cond_143
    if-eqz p0, :cond_162

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v2, p1}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    const-string p1, "expires"

    const-string p2, "Expires"

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcn/jiguang/net/HttpResponse;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cache-control"

    const-string p2, "Cache-Control"

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcn/jiguang/net/HttpResponse;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_162
    .catchall {:try_start_129 .. :try_end_162} :catchall_172
    .catch Ljava/net/MalformedURLException; {:try_start_129 .. :try_end_162} :catch_17d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_162} :catch_177

    :cond_162
    invoke-static {v4}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_266

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_266

    :catchall_172
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    move-object v1, v4

    goto :goto_1a5

    :catch_177
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_1e1

    :catch_17d
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_239

    :catchall_183
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    goto :goto_1a5

    :catch_187
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    goto/16 :goto_1e1

    :catch_18c
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    goto/16 :goto_239

    :catchall_191
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    move-object v3, p0

    goto :goto_1a5

    :catch_196
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    move-object v3, p0

    goto :goto_1e1

    :catch_19b
    move-exception p1

    move-object p2, p0

    move-object p0, v1

    move-object v3, p0

    goto/16 :goto_239

    :catchall_1a1
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    move-object v3, p2

    :goto_1a5
    :try_start_1a5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http post Exception error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbbe

    invoke-virtual {v2, v0}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "UNKnow execption"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcn/jiguang/net/HttpResponse;->setResponseBody(Ljava/lang/String;)V
    :try_end_1d0
    .catchall {:try_start_1a5 .. :try_end_1d0} :catchall_233

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_266

    goto/16 :goto_263

    :catch_1dd
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    move-object v3, p2

    :goto_1e1
    const/16 v4, 0xbb6

    :try_start_1e3
    invoke-virtual {v2, v4}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    const-string v4, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v2, v4}, Lcn/jiguang/net/HttpResponse;->setResponseBody(Ljava/lang/String;)V

    instance-of v4, p1, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_1fa

    const/16 v4, 0xbb9

    invoke-virtual {v2, v4}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    const-string v4, "\u8bf7\u6c42\u8d85\u65f6"

    :goto_1f6
    invoke-virtual {v2, v4}, Lcn/jiguang/net/HttpResponse;->setResponseBody(Ljava/lang/String;)V

    goto :goto_212

    :cond_1fa
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_206

    const/16 v4, 0xbbb

    invoke-virtual {v2, v4}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    const-string v4, "\u57df\u540d\u65e0\u6548"

    goto :goto_1f6

    :cond_206
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_212

    const/16 v4, 0xbbd

    invoke-virtual {v2, v4}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    const-string v4, "SSL\u5931\u8d25"

    goto :goto_1f6

    :cond_212
    :goto_212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http post IOException error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_227
    .catchall {:try_start_1e3 .. :try_end_227} :catchall_233

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_266

    goto :goto_263

    :catchall_233
    move-exception p1

    goto :goto_267

    :catch_235
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    move-object v3, p2

    :goto_239
    :try_start_239
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http post  error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbbc

    invoke-virtual {v2, p1}, Lcn/jiguang/net/HttpResponse;->setResponseCode(I)V

    const-string p1, "MalformedURLException"

    invoke-virtual {v2, p1}, Lcn/jiguang/net/HttpResponse;->setResponseBody(Ljava/lang/String;)V
    :try_end_258
    .catchall {:try_start_239 .. :try_end_258} :catchall_233

    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_266

    :goto_263
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_266
    :goto_266
    return-object v2

    :goto_267
    invoke-static {v1}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcn/jiguang/f/k;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_275

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_275
    goto :goto_277

    :goto_276
    throw p1

    :goto_277
    goto :goto_276
.end method

.method public static appendParaToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_18
    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpURLConnectionWithProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 5

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_61

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_61

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    const-string p1, "cmwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    const-string p1, "3gwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    const-string p1, "uniwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    :cond_4a
    new-instance p0, Ljava/net/InetSocketAddress;

    const-string p1, "10.0.0.172"

    const/16 v1, 0x50

    invoke-direct {p0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p1, v1, p0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_61

    return-object p0

    :catchall_61
    :cond_61
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static getUrlWithParas(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, ""

    :cond_a
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/net/HttpUtils;->joinParas(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlWithValueEncodeParas(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, ""

    :cond_a
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/net/HttpUtils;->joinParasWithEncodedValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jiguang/net/HttpUtils;->a(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;Z)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/net/HttpResponse;
    .registers 3

    new-instance v0, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v0, p1}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;Lcn/jiguang/net/HttpUtils$HttpListener;)V
    .registers 4

    new-instance v0, Lcn/jiguang/net/a;

    invoke-direct {v0, p0, p2}, Lcn/jiguang/net/a;-><init>(Landroid/content/Context;Lcn/jiguang/net/HttpUtils$HttpListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcn/jiguang/net/HttpRequest;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-virtual {v0, p0}, Lcn/jiguang/net/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static httpGet(Landroid/content/Context;Ljava/lang/String;Lcn/jiguang/net/HttpUtils$HttpListener;)V
    .registers 4

    new-instance v0, Lcn/jiguang/net/b;

    invoke-direct {v0, p2, p0}, Lcn/jiguang/net/b;-><init>(Lcn/jiguang/net/HttpUtils$HttpListener;Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-virtual {v0, p0}, Lcn/jiguang/net/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static httpGetString(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpGetString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v0, p1}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/jiguang/net/HttpUtils;->a(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;Z)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/net/HttpResponse;
    .registers 3

    new-instance v0, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v0, p1}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/net/HttpUtils;->httpPost(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static httpPostString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v0, p1}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/net/HttpUtils;->httpPost(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpPostString(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v0}, Lcn/jiguang/net/HttpUtils;->httpPost(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joinParas(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_4a

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4a

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4a
    :goto_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static joinParasWithEncodedValue(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_50

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_50

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    :try_start_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4b} :catch_4c

    goto :goto_17

    :catch_4c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseGmtTime(Ljava/lang/String;)J
    .registers 3

    :try_start_0
    const-string v0, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-static {v0}, Lcn/jiguang/f/c;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .registers 1

    invoke-static {p0}, Lcn/jiguang/f/k;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static setURLConnection(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3b

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p1, :cond_b

    goto :goto_3b

    :cond_b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_3b
    :goto_3b
    return-void
.end method
