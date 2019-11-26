.class public final Lcn/jiguang/ai/b;
.super Ljava/lang/Object;


# annotations


# static fields
.field public static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2a

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_20

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get md5 throwable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JWakeConfigHelper"

    invoke-static {v0, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_20

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    const/4 p1, 0x0

    :cond_21
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 17

    move-object/from16 v1, p0

    const-string v2, "UTF-8"

    const-string v3, "request wakeConfig exception:"

    const-string v4, "JWakeConfigHelper"

    const/4 v5, 0x0

    :try_start_9
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/b;->a(Landroid/content/Context;)Z

    move-result v6
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_283
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_d} :catch_322
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_2ed
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_d} :catch_2b8

    if-nez v6, :cond_29

    :try_start_f
    const-string v1, "request wakeConfig failed because is not validRegistered"

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_14} :catch_24
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_14} :catch_1a

    return-object v5

    :catchall_15
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto/16 :goto_287

    :catch_1a
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto/16 :goto_2bc

    :catch_1f
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto/16 :goto_2f1

    :catch_24
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto/16 :goto_326

    :cond_29
    :try_start_29
    invoke-static/range {p0 .. p0}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_283
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_31} :catch_322
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_2ed
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_31} :catch_2b8

    if-eqz v7, :cond_39

    :try_start_33
    const-string v1, "request wakeConfig failed because can\'t get appKey"

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_38} :catch_24
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_38} :catch_1a

    return-object v5

    :cond_39
    :try_start_39
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)J

    move-result-wide v7
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_283
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_3d} :catch_322
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_2ed
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_3d} :catch_2b8

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_49

    :try_start_43
    const-string v1, "request wakeConfig failed because can\'t get uid"

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_48} :catch_24
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_48} :catch_1a

    return-object v5

    :cond_49
    :try_start_49
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_283
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_49 .. :try_end_51} :catch_322
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_2ed
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_51} :catch_2b8

    if-eqz v10, :cond_59

    :try_start_53
    const-string v1, "request wakeConfig failed because need register first"

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_58} :catch_24
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_58} :catch_1a

    return-object v5

    :cond_59
    :try_start_59
    invoke-static {v1, v4}, Lcn/jiguang/o/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string v10, "https://bjuser.jpush.cn/v1/appawake/status"

    sget-boolean v11, Lcn/jiguang/o/h;->a:Z
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_283
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_59 .. :try_end_60} :catch_322
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_60} :catch_2ed
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_60} :catch_2b8

    if-eqz v11, :cond_7f

    :try_start_62
    sget-object v11, Lcn/jiguang/ai/b;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7f

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "use test url:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcn/jiguang/ai/b;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcn/jiguang/ai/b;->a:Ljava/lang/String;
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_62 .. :try_end_7f} :catch_24
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7f} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_7f} :catch_1a

    :cond_7f
    :try_start_7f
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v15, "appkey"

    invoke-virtual {v12, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "uid"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    const-string v5, "manufacturer"

    invoke-virtual {v12, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b1

    const-string v5, "model"

    invoke-virtual {v12, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    invoke-static {v10, v12}, Lcn/jiguang/net/HttpUtils;->getUrlWithValueEncodeParas(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "url:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Type"

    const-string v12, "text/plain"

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Accept"

    const-string v12, "application/json"

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "X-Http-Platform"

    const-string v12, "android"

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "X-Http-Appkey"

    invoke-interface {v11, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcn/jiguang/ai/b;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Lcn/jiguang/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/jiguang/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10c

    const/4 v9, 0x0

    return-object v9

    :cond_10c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_132

    const/4 v7, 0x0

    return-object v7

    :cond_132
    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Basic "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Charset"

    invoke-interface {v11, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v5}, Lcn/jiguang/net/HttpUtils;->getHttpURLConnectionWithProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_14e
    .catchall {:try_start_7f .. :try_end_14e} :catchall_283
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7f .. :try_end_14e} :catch_322
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_14e} :catch_2ed
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_14e} :catch_2b8

    const/16 v1, 0x7530

    :try_start_150
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15e

    :cond_17a
    instance-of v1, v5, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_17c
    .catchall {:try_start_150 .. :try_end_17c} :catchall_271
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_150 .. :try_end_17c} :catch_27e
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_17c} :catch_279
    .catch Lorg/json/JSONException; {:try_start_150 .. :try_end_17c} :catch_275

    const/4 v2, 0x0

    if-eqz v1, :cond_1cf

    :try_start_17f
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    new-instance v7, Lcn/jiguang/net/SSLTrustManager;

    const-string v8, "-----BEGIN CERTIFICATE-----\nMIIETzCCAzegAwIBAgIDAjpvMA0GCSqGSIb3DQEBCwUAMEIxCzAJBgNVBAYTAlVT\nMRYwFAYDVQQKEw1HZW9UcnVzdCBJbmMuMRswGQYDVQQDExJHZW9UcnVzdCBHbG9i\nYWwgQ0EwHhcNMTMxMTA1MjEzNjUwWhcNMjIwNTIwMjEzNjUwWjBEMQswCQYDVQQG\nEwJVUzEWMBQGA1UEChMNR2VvVHJ1c3QgSW5jLjEdMBsGA1UEAxMUR2VvVHJ1c3Qg\nU1NMIENBIC0gRzMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDjvn4K\nhqPPa209K6GXrUkkTdd3uTR5CKWeop7eRxKSPX7qGYax6E89X/fQp3eaWx8KA7UZ\nU9ulIZRpY51qTJEMEEe+EfpshiW3qwRoQjgJZfAU2hme+msLq2LvjafvY3AjqK+B\n89FuiGdT7BKkKXWKp/JXPaKDmJfyCn3U50NuMHhiIllZuHEnRaoPZsZVP/oyFysx\nj0ag+mkUfJ2fWuLrM04QprPtd2PYw5703d95mnrU7t7dmszDt6ldzBE6B7tvl6QB\nI0eVH6N3+liSxsfQvc+TGEK3fveeZerVO8rtrMVwof7UEJrwEgRErBpbeFBFV0xv\nvYDLgVwts7x2oR5lAgMBAAGjggFKMIIBRjAfBgNVHSMEGDAWgBTAephojYn7qwVk\nDBF9qn1luMrMTjAdBgNVHQ4EFgQU0m/3lvSFP3I8MH0j2oV4m6N8WnwwEgYDVR0T\nAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwNgYDVR0fBC8wLTAroCmgJ4Yl\naHR0cDovL2cxLnN5bWNiLmNvbS9jcmxzL2d0Z2xvYmFsLmNybDAvBggrBgEFBQcB\nAQQjMCEwHwYIKwYBBQUHMAGGE2h0dHA6Ly9nMi5zeW1jYi5jb20wTAYDVR0gBEUw\nQzBBBgpghkgBhvhFAQc2MDMwMQYIKwYBBQUHAgEWJWh0dHA6Ly93d3cuZ2VvdHJ1\nc3QuY29tL3Jlc291cmNlcy9jcHMwKQYDVR0RBCIwIKQeMBwxGjAYBgNVBAMTEVN5\nbWFudGVjUEtJLTEtNTM5MA0GCSqGSIb3DQEBCwUAA4IBAQCg1Pcs+3QLf2TxzUNq\nn2JTHAJ8mJCi7k9o1CAacxI+d7NQ63K87oi+fxfqd4+DYZVPhKHLMk9sIb7SaZZ9\nY73cK6gf0BOEcP72NZWJ+aZ3sEbIu7cT9clgadZM/tKO79NgwYCA4ef7i28heUrg\n3Kkbwbf7w0lZXLV3B0TUl/xJAIlvBk4BcBmsLxHA4uYPL4ZLjXvDuacu9PGsFj45\nSVGeF0tPEDpbpaiSb/361gsDTUdWVxnzy2v189bPsPX1oxHSIFMTNDcFLENaY9+N\nQNaFHlHpURceA1bJ8TCt55sRornQMYGbaLHZ6PPmlH7HrhMvh+3QJbBo+d4IWvMp\nzNSS\n-----END CERTIFICATE-----"

    invoke-direct {v7, v8}, Lcn/jiguang/net/SSLTrustManager;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v2

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v5

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lcn/jiguang/net/DefaultHostVerifier;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcn/jiguang/net/DefaultHostVerifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1b7
    .catchall {:try_start_17f .. :try_end_1b7} :catchall_1b8

    goto :goto_1cf

    :catchall_1b8
    move-exception v0

    move-object v1, v0

    :try_start_1ba
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set ssl config error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cf
    :goto_1cf
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_1f9

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1db
    .catchall {:try_start_1ba .. :try_end_1db} :catchall_271
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1ba .. :try_end_1db} :catch_27e
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1db} :catch_279
    .catch Lorg/json/JSONException; {:try_start_1ba .. :try_end_1db} :catch_275

    :try_start_1db
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_1e4
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1ef

    invoke-virtual {v6, v7, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e4

    :cond_1ef
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_1fb

    :cond_1f9
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1fb
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_238

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "request wakeConfig success,response body:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_217
    .catchall {:try_start_1db .. :try_end_217} :catchall_25a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1db .. :try_end_217} :catch_26b
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_217} :catch_265
    .catch Lorg/json/JSONException; {:try_start_1db .. :try_end_217} :catch_25f

    if-eqz v1, :cond_232

    :try_start_219
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_21c} :catch_21d

    goto :goto_232

    :catch_21d
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_232
    :goto_232
    if-eqz v5, :cond_237

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_237
    return-object v6

    :cond_238
    if-eqz v1, :cond_253

    :try_start_23a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_23d} :catch_23e

    goto :goto_253

    :catch_23e
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_253
    :goto_253
    if-eqz v5, :cond_359

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_359

    :catchall_25a
    move-exception v0

    move-object v2, v5

    move-object v5, v1

    move-object v1, v0

    goto :goto_287

    :catch_25f
    move-exception v0

    move-object v2, v5

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_2bc

    :catch_265
    move-exception v0

    move-object v2, v5

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_2f1

    :catch_26b
    move-exception v0

    move-object v2, v5

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_326

    :catchall_271
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto :goto_286

    :catch_275
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto :goto_2bb

    :catch_279
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto/16 :goto_2f0

    :catch_27e
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    goto/16 :goto_325

    :catchall_283
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_286
    const/4 v5, 0x0

    :goto_287
    :try_start_287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29a
    .catchall {:try_start_287 .. :try_end_29a} :catchall_35b

    if-eqz v5, :cond_2b5

    :try_start_29c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_29f} :catch_2a0

    goto :goto_2b5

    :catch_2a0
    move-exception v0

    move-object v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b5
    :goto_2b5
    if-eqz v2, :cond_359

    goto :goto_321

    :catch_2b8
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_2bb
    const/4 v5, 0x0

    :goto_2bc
    :try_start_2bc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2cf
    .catchall {:try_start_2bc .. :try_end_2cf} :catchall_35b

    if-eqz v5, :cond_2ea

    :try_start_2d1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_2d4} :catch_2d5

    goto :goto_2ea

    :catch_2d5
    move-exception v0

    move-object v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ea
    :goto_2ea
    if-eqz v2, :cond_359

    goto :goto_321

    :catch_2ed
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_2f0
    const/4 v5, 0x0

    :goto_2f1
    :try_start_2f1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_304
    .catchall {:try_start_2f1 .. :try_end_304} :catchall_35b

    if-eqz v5, :cond_31f

    :try_start_306
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_309} :catch_30a

    goto :goto_31f

    :catch_30a
    move-exception v0

    move-object v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31f
    :goto_31f
    if-eqz v2, :cond_359

    :goto_321
    goto :goto_356

    :catch_322
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_325
    const/4 v5, 0x0

    :goto_326
    :try_start_326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_339
    .catchall {:try_start_326 .. :try_end_339} :catchall_35b

    if-eqz v5, :cond_354

    :try_start_33b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_33e} :catch_33f

    goto :goto_354

    :catch_33f
    move-exception v0

    move-object v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_354
    :goto_354
    if-eqz v2, :cond_359

    :goto_356
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_359
    :goto_359
    const/4 v1, 0x0

    return-object v1

    :catchall_35b
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_378

    :try_start_35f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_362} :catch_363

    goto :goto_378

    :catch_363
    move-exception v0

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_378
    :goto_378
    if-eqz v2, :cond_37d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_37d
    goto :goto_37f

    :goto_37e
    throw v1

    :goto_37f
    goto :goto_37e
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "write wakeConfigJson:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JWakeConfigHelper"

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bwc.catch"

    invoke-static {p0, v0, p1}, Lcn/jiguang/v/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_1a
    return-void
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)Lcn/jiguang/ah/a;
    .registers 12

    const-string v0, "enable"

    const-string v1, "JWakeConfigHelper"

    const-string v2, "disable"

    new-instance v3, Lcn/jiguang/ah/a;

    invoke-direct {v3}, Lcn/jiguang/ah/a;-><init>()V

    if-nez p1, :cond_e

    return-object v3

    :cond_e
    :try_start_e
    const-string v4, "app_wakeup_stat"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_18

    return-object v3

    :cond_18
    const-string v6, "app_report_app_list_threshold"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_28

    const-string v7, "JAppAll"

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    invoke-static {p0, v7, v8, v9}, Lcn/jiguang/o/f;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_28
    const-string p0, "app_wakeup_threshold"

    invoke-virtual {p1, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_35

    int-to-long v6, p0

    iput-wide v6, v3, Lcn/jiguang/ah/a;->e:J

    :cond_35
    const-string p0, "app_get_threshold"

    invoke-virtual {p1, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_42

    int-to-long v6, p0

    iput-wide v6, v3, Lcn/jiguang/ah/a;->f:J

    :cond_42
    const-string p0, "app_report_threshold"

    invoke-virtual {p1, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_4f

    int-to-long v6, p0

    iput-wide v6, v3, Lcn/jiguang/ah/a;->g:J

    :cond_4f
    const/4 p0, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_57

    :goto_54
    iput-boolean v7, v3, Lcn/jiguang/ah/a;->c:Z

    goto :goto_76

    :cond_57
    if-ne v4, v7, :cond_5a

    goto :goto_54

    :cond_5a
    if-ne v4, p0, :cond_5f

    iput-boolean v6, v3, Lcn/jiguang/ah/a;->c:Z

    goto :goto_76

    :cond_5f
    const-string v4, "errmsg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseWakeConfigJson error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    const-string v4, "app_wakeup_disable"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_81

    :goto_7e
    iput-boolean v7, v3, Lcn/jiguang/ah/a;->d:Z

    goto :goto_89

    :cond_81
    if-ne v4, v7, :cond_86

    iput-boolean v6, v3, Lcn/jiguang/ah/a;->d:Z

    goto :goto_89

    :cond_86
    if-ne v4, p0, :cond_89

    goto :goto_7e

    :cond_89
    :goto_89
    const-string p0, "app_wakeup_config"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    const/4 p0, 0x1

    goto :goto_98

    :cond_97
    const/4 p0, 0x0

    :goto_98
    iput-boolean p0, v3, Lcn/jiguang/ah/a;->a:Z

    const-string p0, "app_wakeuped_config"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const/4 v6, 0x1

    :cond_a7
    iput-boolean v6, v3, Lcn/jiguang/ah/a;->b:Z

    const-string p0, "app_package_config"

    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b6

    move-object p0, v2

    :cond_b6
    iput-object p0, v3, Lcn/jiguang/ah/a;->h:Ljava/lang/String;

    const-string p0, "app_package_list"

    invoke-static {p1, p0}, Lcn/jiguang/ai/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v3, Lcn/jiguang/ah/a;->i:Ljava/util/List;

    const-string p0, "app_blacklist"

    invoke-static {p1, p0}, Lcn/jiguang/ai/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v3, Lcn/jiguang/ah/a;->j:Ljava/util/List;
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_c8} :catch_c9

    goto :goto_df

    :catch_c9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parseWakeConfig exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_df
    return-object v3
.end method
