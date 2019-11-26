.class public Lcn/jiguang/net/SSLTrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "ca_root"

    invoke-virtual {p1, v2, v0, v1}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_42
    if-ge v1, v0, :cond_52

    aget-object v2, p1, v1

    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_4f

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    iput-object v2, p0, Lcn/jiguang/net/SSLTrustManager;->a:Ljavax/net/ssl/X509TrustManager;
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_53

    return-void

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_52
    return-void

    :catchall_53
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init trustManager failed, error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSLTrustManager"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    const-string p1, "SSLTrustManager"

    const-string p2, "checkClientTrusted"

    invoke-static {p1, p2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5

    const-string p2, "SSLTrustManager"

    const-string v0, "checkServerTrusted"

    invoke-static {p2, v0}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_48

    array-length v0, p1

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_48

    :try_start_11
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_11 .. :try_end_16} :catch_3b
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_11 .. :try_end_16} :catch_2e

    return-void

    :catchall_17
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkServerTrusted failed, error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    :goto_23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2e
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkServerTrusted: CertificateNotYetValidException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/CertificateNotYetValidException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :catch_3b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkServerTrusted: CertificateExpiredException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/CertificateExpiredException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_48
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Check Server x509Certificates is empty"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw p1

    :goto_51
    goto :goto_50
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 3

    const-string v0, "SSLTrustManager"

    const-string v1, "getAcceptedIssuers"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/net/SSLTrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
