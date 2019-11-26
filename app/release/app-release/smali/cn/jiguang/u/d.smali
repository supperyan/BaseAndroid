.class public final Lcn/jiguang/u/d;
.super Ljava/lang/Object;


# annotations


# static fields
.field private static final a:Ljava/lang/Object;

.field private static h:Ljava/net/CookieManager;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/u/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/u/d;->f:I

    iget-object v0, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/jiguang/f/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/jiguang/u/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/jiguang/f/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    sput-object v3, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    sget-object v4, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-virtual {v3, v4}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    sget-object v3, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    invoke-static {v3}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    iput-object p1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    iput-object v0, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    iput-object v1, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/t/a;
    .registers 38

    move-object/from16 v1, p7

    const-string v2, "UTF-8"

    const-string v3, "report phoneNumber exception:"

    const-string v4, "JDevicePNWorker"

    const-wide/16 v5, 0xc8

    cmp-long v0, p4, v5

    if-ltz v0, :cond_19

    const-wide/32 v5, 0xea60

    cmp-long v0, p4, v5

    if-lez v0, :cond_16

    goto :goto_19

    :cond_16
    move-wide/from16 v5, p4

    goto :goto_1b

    :cond_19
    :goto_19
    const-wide/16 v5, 0x7d0

    :goto_1b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "--"

    const-string v9, "\r\n"

    const-string v10, "multipart/form-data"

    sget-object v0, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    if-nez v0, :cond_34

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    :cond_34
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_3d
    :try_start_3d
    new-instance v0, Ljava/net/URL;

    move-object/from16 v13, p2

    invoke-direct {v0, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_268
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3d .. :try_end_4b} :catch_2bb
    .catch Ljava/lang/AssertionError; {:try_start_3d .. :try_end_4b} :catch_296
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4b} :catch_26e

    const/16 v0, 0x7530

    :try_start_4d
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "POST"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Charset"

    invoke-virtual {v11, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v12, "Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36"

    invoke-virtual {v11, v0, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7c
    .catchall {:try_start_4d .. :try_end_7c} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4d .. :try_end_7c} :catch_261
    .catch Ljava/lang/AssertionError; {:try_start_4d .. :try_end_7c} :catch_25a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_7c} :catch_253

    if-lez v0, :cond_a9

    :try_start_7e
    const-string v0, "Cookie"

    const-string v12, ";"

    sget-object v16, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    invoke-virtual/range {v16 .. v16}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_7e .. :try_end_93} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_7e .. :try_end_93} :catch_a2
    .catch Ljava/lang/AssertionError; {:try_start_7e .. :try_end_93} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_93} :catch_94

    goto :goto_a9

    :catch_94
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v16, v11

    goto/16 :goto_271

    :catch_9b
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v16, v11

    goto/16 :goto_299

    :catch_a2
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v16, v11

    goto/16 :goto_2be

    :cond_a9
    :goto_a9
    move/from16 v12, p6

    :try_start_ab
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v1, :cond_176

    const-string v0, "Content-Type"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ba
    .catchall {:try_start_ab .. :try_end_ba} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_ab .. :try_end_ba} :catch_261
    .catch Ljava/lang/AssertionError; {:try_start_ab .. :try_end_ba} :catch_25a
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ba} :catch_253

    move-object/from16 v28, v10

    :try_start_bc
    const-string v10, ";boundary="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "Content-Disposition:\u00a0form-data;\u00a0name=\""

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, p8

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\";\u00a0filename=\""

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Content-Type:\u00a0application/octet-stream;\u00a0charset=UTF-8"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x400

    new-array v12, v12, [B

    :goto_131
    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13
    :try_end_135
    .catchall {:try_start_bc .. :try_end_135} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_bc .. :try_end_135} :catch_173
    .catch Ljava/lang/AssertionError; {:try_start_bc .. :try_end_135} :catch_170
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_135} :catch_16d

    const/4 v1, -0x1

    if-eq v13, v1, :cond_13f

    const/4 v1, 0x0

    :try_start_139
    invoke-virtual {v10, v12, v1, v13}, Ljava/io/DataOutputStream;->write([BII)V

    move-object/from16 v1, p7

    goto :goto_131

    :cond_13f
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    goto :goto_179

    :catch_16d
    move-exception v0

    goto/16 :goto_256

    :catch_170
    move-exception v0

    goto/16 :goto_25d

    :catch_173
    move-exception v0

    goto/16 :goto_264

    :cond_176
    move-object/from16 v28, v10

    const/4 v1, 0x0

    :goto_179
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/u/d;->a(Ljava/util/Map;)V

    const/16 v0, 0x12e

    if-ne v15, v0, :cond_1c5

    const-string v0, "Location"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-ltz p3, :cond_1b3

    add-int/lit8 v22, p3, -0x1

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move/from16 v25, p6

    invoke-direct/range {v19 .. v27}, Lcn/jiguang/u/d;->a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/t/a;

    move-result-object v1
    :try_end_1a2
    .catchall {:try_start_139 .. :try_end_1a2} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_139 .. :try_end_1a2} :catch_24d
    .catch Ljava/lang/AssertionError; {:try_start_139 .. :try_end_1a2} :catch_24b
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_1a2} :catch_249

    if-eqz v17, :cond_1ad

    :try_start_1a4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1a8

    goto :goto_1ad

    :catch_1a8
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ad
    :goto_1ad
    if-eqz v11, :cond_1b2

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b2
    return-object v1

    :cond_1b3
    if-eqz v17, :cond_1be

    :try_start_1b5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1b9

    goto :goto_1be

    :catch_1b9
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1be
    :goto_1be
    if-eqz v11, :cond_1c3

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c3
    const/4 v1, 0x0

    return-object v1

    :cond_1c5
    const/16 v10, 0xc8

    if-ne v15, v10, :cond_235

    :try_start_1c9
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10
    :try_end_1d1
    .catchall {:try_start_1c9 .. :try_end_1d1} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1c9 .. :try_end_1d1} :catch_24d
    .catch Ljava/lang/AssertionError; {:try_start_1c9 .. :try_end_1d1} :catch_24b
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1d1} :catch_249

    :try_start_1d1
    invoke-static/range {v17 .. v17}, Lcn/jiguang/f/k;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_1e1

    array-length v12, v0

    if-lez v12, :cond_1e1

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v13, v12

    goto :goto_1e4

    :cond_1e1
    const-string v0, ""
    :try_end_1e3
    .catchall {:try_start_1d1 .. :try_end_1e3} :catchall_24f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1d1 .. :try_end_1e3} :catch_231
    .catch Ljava/lang/AssertionError; {:try_start_1d1 .. :try_end_1e3} :catch_22d
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1e3} :catch_229

    move-object v13, v0

    :goto_1e4
    if-eqz v17, :cond_1ef

    :try_start_1e6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1e9} :catch_1ea

    goto :goto_1ef

    :catch_1ea
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ef
    :goto_1ef
    if-eqz v11, :cond_1f4

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f4
    const/16 v1, 0xc8

    if-lt v15, v1, :cond_1fd

    const/16 v0, 0x12c

    if-ge v15, v0, :cond_1fd

    goto :goto_223

    :cond_1fd
    const/16 v0, 0x1f4

    const/16 v1, 0x190

    if-lt v15, v1, :cond_221

    if-ge v15, v0, :cond_221

    if-ne v1, v15, :cond_20a

    const-string v13, "server fail"

    goto :goto_223

    :cond_20a
    const/16 v0, 0x191

    if-eq v0, v15, :cond_221

    const/16 v1, 0x194

    if-eq v1, v15, :cond_221

    const/16 v0, 0x196

    if-eq v0, v15, :cond_221

    const/16 v0, 0x198

    if-eq v0, v15, :cond_221

    const/16 v0, 0x199

    if-ne v0, v15, :cond_21f

    goto :goto_221

    :cond_21f
    const/4 v13, 0x0

    goto :goto_223

    :cond_221
    :goto_221
    const-string v13, "<<error>>"

    :goto_223
    new-instance v0, Lcn/jiguang/t/a;

    invoke-direct {v0, v15, v10, v13}, Lcn/jiguang/t/a;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    return-object v0

    :catch_229
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_257

    :catch_22d
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_25e

    :catch_231
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_265

    :cond_235
    if-eqz v17, :cond_240

    :try_start_237
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23a} :catch_23b

    goto :goto_240

    :catch_23b
    move-exception v0

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_240
    :goto_240
    if-eqz v11, :cond_245

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_245
    move-object/from16 v16, v11

    goto/16 :goto_2e0

    :catch_249
    move-exception v0

    goto :goto_257

    :catch_24b
    move-exception v0

    goto :goto_25e

    :catch_24d
    move-exception v0

    goto :goto_265

    :catchall_24f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_324

    :catch_253
    move-exception v0

    move-object/from16 v28, v10

    :goto_256
    const/4 v1, 0x0

    :goto_257
    move-object/from16 v16, v11

    goto :goto_272

    :catch_25a
    move-exception v0

    move-object/from16 v28, v10

    :goto_25d
    const/4 v1, 0x0

    :goto_25e
    move-object/from16 v16, v11

    goto :goto_29a

    :catch_261
    move-exception v0

    move-object/from16 v28, v10

    :goto_264
    const/4 v1, 0x0

    :goto_265
    move-object/from16 v16, v11

    goto :goto_2bf

    :catchall_268
    move-exception v0

    move-object v1, v0

    move-object/from16 v11, v16

    goto/16 :goto_324

    :catch_26e
    move-exception v0

    move-object/from16 v28, v10

    :goto_271
    const/4 v1, 0x0

    :goto_272
    :try_start_272
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_285
    .catchall {:try_start_272 .. :try_end_285} :catchall_268

    if-eqz v17, :cond_290

    :try_start_287
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_28a
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_28a} :catch_28b

    goto :goto_290

    :catch_28b
    move-exception v0

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_290
    :goto_290
    if-eqz v16, :cond_2e0

    :goto_292
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2e0

    :catch_296
    move-exception v0

    move-object/from16 v28, v10

    :goto_299
    const/4 v1, 0x0

    :goto_29a
    :try_start_29a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ad
    .catchall {:try_start_29a .. :try_end_2ad} :catchall_268

    if-eqz v17, :cond_2b8

    :try_start_2af
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2b2
    .catch Ljava/io/IOException; {:try_start_2af .. :try_end_2b2} :catch_2b3

    goto :goto_2b8

    :catch_2b3
    move-exception v0

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_2b8
    :goto_2b8
    if-eqz v16, :cond_2e0

    goto :goto_292

    :catch_2bb
    move-exception v0

    move-object/from16 v28, v10

    :goto_2be
    const/4 v1, 0x0

    :goto_2bf
    :try_start_2bf
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d2
    .catchall {:try_start_2bf .. :try_end_2d2} :catchall_268

    if-eqz v17, :cond_2dd

    :try_start_2d4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2d7
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2d7} :catch_2d8

    goto :goto_2dd

    :catch_2d8
    move-exception v0

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_2dd
    :goto_2dd
    if-eqz v16, :cond_2e0

    goto :goto_292

    :cond_2e0
    :goto_2e0
    move-object/from16 v10, v18

    const/16 v11, 0x194

    if-eq v15, v11, :cond_322

    const/16 v11, 0xc8

    if-eq v15, v11, :cond_2f1

    invoke-static/range {p1 .. p1}, Lcn/jiguang/f/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f1

    goto :goto_322

    :cond_2f1
    const/4 v0, 0x3

    if-lt v14, v0, :cond_2fd

    new-instance v0, Lcn/jiguang/t/a;

    const-string v1, "<<failed_with_retries>>"

    const/4 v11, -0x1

    invoke-direct {v0, v11, v10, v1}, Lcn/jiguang/t/a;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    return-object v0

    :cond_2fd
    const/4 v11, -0x1

    add-int/lit8 v14, v14, 0x1

    :try_start_300
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_303
    .catch Ljava/lang/InterruptedException; {:try_start_300 .. :try_end_303} :catch_304

    goto :goto_319

    :catch_304
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_319
    move-object/from16 v1, p7

    move-object/from16 v18, v10

    move-object/from16 v10, v28

    const/4 v12, 0x0

    goto/16 :goto_3d

    :cond_322
    :goto_322
    const/4 v1, 0x0

    return-object v1

    :goto_324
    if-eqz v17, :cond_32f

    :try_start_326
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_329
    .catch Ljava/io/IOException; {:try_start_326 .. :try_end_329} :catch_32a

    goto :goto_32f

    :catch_32a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_32f
    :goto_32f
    if-eqz v11, :cond_334

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_334
    goto :goto_336

    :goto_335
    throw v1

    :goto_336
    goto :goto_335
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/jiguang/r/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    iget-object p1, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-static {p0, v0}, Lcn/jiguang/f/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcn/jiguang/u/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0}, Lcn/jiguang/f/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcn/jiguang/u/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_19

    move-object p1, v1

    :cond_19
    return-object p1
.end method

.method private a(Ljava/lang/String;Lcn/jiguang/t/a;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v0, p2}, Lcn/jiguang/u/d;->a(Landroid/content/Context;Lcn/jiguang/t/a;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-direct {p0, p1}, Lcn/jiguang/u/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/TreeMap;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_29
    iget-object p1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/r/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/f/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/jiguang/u/d;->h:Ljava/net/CookieManager;

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_e

    :cond_30
    return-void
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/t/a;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_7

    return v0

    :cond_7
    const-string v1, "resp.raw"

    invoke-static {p0, v1}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_10

    return v0

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcn/jiguang/t/a;->c:Ljava/util/Map;

    if-eqz v3, :cond_78

    iget-object v3, p1, Lcn/jiguang/t/a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_78

    iget-object v3, p1, Lcn/jiguang/t/a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_72
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_78
    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/jiguang/t/a;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    iget-object p1, p1, Lcn/jiguang/t/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/f/e;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_95

    return v0

    :cond_95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "resp.zip"

    invoke-static {p0, v1}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_a6

    return v0

    :cond_a6
    if-eqz p0, :cond_ca

    :try_start_a8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b2

    goto :goto_ca

    :catchall_b2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete throwable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JCommonFileHelper"

    invoke-static {v2, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    :goto_ca
    :try_start_ca
    invoke-static {p1, p0}, Lcn/jiguang/v/d;->a(Ljava/util/Collection;Ljava/io/File;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_cf

    const/4 p0, 0x1

    return p0

    :catch_cf
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "report phoneNumber exception:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JDevicePNWorker"

    invoke-static {p1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "imei"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "iccid"

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "imsi"

    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object p1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/r/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "version"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/r/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_id"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "yyyyMMddHHmmss"

    invoke-static {p1}, Lcn/jiguang/v/g;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "req_time"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcn/jiguang/u/d;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sign"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    :try_start_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_9b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6f .. :try_end_9b} :catch_9c

    goto :goto_63

    :catch_9c
    nop

    goto :goto_63

    :cond_9e
    const/4 p1, 0x0

    :try_start_9f
    iget-object v1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "statistic/query?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const-wide/16 v4, 0x7530

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcn/jiguang/u/d;->a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/t/a;

    move-result-object p3
    :try_end_c3
    .catchall {:try_start_9f .. :try_end_c3} :catchall_11a

    iget v0, p3, Lcn/jiguang/t/a;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_ca

    return p1

    :cond_ca
    iget-object v0, p3, Lcn/jiguang/t/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/u/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e8

    const/4 p2, -0x1

    const-string p3, "code"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v1, :cond_dd

    return p1

    :cond_dd
    const-string p2, "num"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/jiguang/u/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10c

    :cond_e8
    iget-object v0, p3, Lcn/jiguang/t/a;->c:Ljava/util/Map;

    if-nez v0, :cond_f4

    iget-object v0, p3, Lcn/jiguang/t/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10c

    :cond_f4
    sget-object v0, Lcn/jiguang/u/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f7
    iput p1, p0, Lcn/jiguang/u/d;->f:I
    :try_end_f9
    .catchall {:try_start_f7 .. :try_end_f9} :catchall_117

    :try_start_f9
    invoke-direct {p0, p2, p3}, Lcn/jiguang/u/d;->a(Ljava/lang/String;Lcn/jiguang/t/a;)Ljava/lang/String;

    move-result-object v2
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_fd

    :catchall_fd
    :try_start_fd
    iget-object p2, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    const-string p3, "resp.raw"

    invoke-virtual {p2, p3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    iget-object p2, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    const-string p3, "resp.zip"

    invoke-virtual {p2, p3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_fd .. :try_end_10c} :catchall_117

    :cond_10c
    :goto_10c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_116

    invoke-direct {p0, v2}, Lcn/jiguang/u/d;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_116
    return p1

    :catchall_117
    move-exception p1

    :try_start_118
    monitor-exit v0
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw p1

    :catchall_11a
    return p1
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_26

    :catch_e
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report phoneNumber exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "JDevicePNWorker"

    invoke-static {v1, p0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string v0, "report phoneNumber throwable:"

    const-string v1, "JDevicePNWorker"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    :try_start_c
    iget-object v5, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "statistic/query?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const-wide/16 v8, 0x7530

    const/4 v10, 0x0

    iget-object v2, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    const-string v4, "resp.zip"

    invoke-static {v2, v4}, Lcn/jiguang/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const-string v12, "resp_data"

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcn/jiguang/u/d;->a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/t/a;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_8c

    iget v4, v2, Lcn/jiguang/t/a;->a:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3f

    return-object v3

    :cond_3f
    iget-object v4, v2, Lcn/jiguang/t/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcn/jiguang/u/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5c

    const/4 p1, -0x1

    const-string v0, "code"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_51

    return-object v3

    :cond_51
    const-string p1, "num"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jiguang/u/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8b

    :cond_5c
    iget-object v4, v2, Lcn/jiguang/t/a;->c:Ljava/util/Map;

    if-nez v4, :cond_68

    iget-object v4, v2, Lcn/jiguang/t/a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    :cond_68
    iget v4, p0, Lcn/jiguang/u/d;->f:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_6e

    return-object v3

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/jiguang/u/d;->f:I

    :try_start_72
    invoke-direct {p0, p1, v2}, Lcn/jiguang/u/d;->a(Ljava/lang/String;Lcn/jiguang/t/a;)Ljava/lang/String;

    move-result-object v3
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_77

    goto :goto_8b

    :catchall_77
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    return-object v3

    :catchall_8c
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    const-string v0, "JDevicePNWorker"

    iget-object v1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/jiguang/r/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "num"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "imei"

    iget-object v2, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    iget-object p1, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    const-string p1, "imsi"

    iget-object v2, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f
    iget-object p1, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "iccid"

    iget-object v2, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_7f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_42} :catch_96

    :try_start_42
    invoke-static {p1}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_47
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_46} :catch_96

    goto :goto_4b

    :catch_47
    move-exception v1

    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    const-string v3, "nb"

    invoke-static {v2, v1, v3}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "collect success:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {p1, v1}, Lcn/jiguang/o/i;->a(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/jiguang/r/a;->a(Landroid/content/Context;Z)V
    :try_end_7e
    .catchall {:try_start_48 .. :try_end_7e} :catchall_7f
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_7e} :catch_96

    :cond_7e
    return-void

    :catchall_7f
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report phoneNumber throwable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_8b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_96
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report phoneNumber exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_8b
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/r/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0, v0}, Lcn/jiguang/bb/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report phoneNumber exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JDevicePNWorker"

    invoke-static {v0, p1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/r/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/r/a;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_33

    :cond_2e
    invoke-direct {p0, v0}, Lcn/jiguang/u/d;->d(Ljava/lang/String;)V

    goto/16 :goto_b1

    :cond_33
    :goto_33
    iget-object v0, p0, Lcn/jiguang/u/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/r/a;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_9a

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "46008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_98

    :cond_63
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "46006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "46009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    goto :goto_96

    :cond_7c
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :cond_94
    const/4 v0, 0x2

    goto :goto_9b

    :cond_96
    :goto_96
    const/4 v0, 0x1

    goto :goto_9b

    :cond_98
    :goto_98
    const/4 v0, 0x0

    goto :goto_9b

    :cond_9a
    const/4 v0, -0x1

    :goto_9b
    if-eq v0, v3, :cond_b2

    invoke-direct {p0, v0}, Lcn/jiguang/u/d;->a(I)Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcn/jiguang/u/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_b1
    return-void

    :cond_b2
    const-string v0, ""

    :cond_b4
    const/4 v1, 0x3

    if-ge v2, v1, :cond_f3

    invoke-direct {p0, v2}, Lcn/jiguang/u/d;->a(I)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    iget-object v1, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    iget-object v0, p0, Lcn/jiguang/u/d;->g:Ljava/lang/String;

    iget-object v1, p0, Lcn/jiguang/u/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/jiguang/u/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/jiguang/u/d;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcn/jiguang/u/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d8} :catch_db

    if-eqz v1, :cond_b4

    goto :goto_f3

    :catch_db
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report phoneNumber exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDevicePNWorker"

    invoke-static {v1, v0}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f3
    :goto_f3
    return-void
.end method
