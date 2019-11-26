.class final Lcn/jiguang/ab/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/telephony/TelephonyManager;

.field private c:Lcn/jiguang/ac/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ab/d;->a:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/ab/d;)Lcn/jiguang/ac/a;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    return-object p0
.end method

.method static synthetic b(Lcn/jiguang/ab/d;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    return-object p0
.end method


# virtual methods
.method final a()Lcn/jiguang/ac/a;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    return-object v0
.end method

.method final b()V
    .registers 7

    iget-object v0, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_c

    const-string v0, "JLocationCell"

    const-string v1, "get telephonyManager failed"

    invoke-static {v0, v1}, Lcn/jiguang/ad/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Lcn/jiguang/ac/a;

    invoke-direct {v0}, Lcn/jiguang/ac/a;-><init>()V

    iput-object v0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget-object v0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget-object v1, p0, Lcn/jiguang/ab/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/d/b;->b(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/jiguang/ac/a;->a:J

    iget-object v0, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le v1, v3, :cond_43

    iget-object v1, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcn/jiguang/ac/a;->b:I

    iget-object v1, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/jiguang/ac/a;->c:I

    :cond_43
    iget-object v0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget-object v1, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jiguang/ac/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget-object v1, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRadioType - networkType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TeleonyManagerUtils"

    invoke-static {v4, v3}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    if-eq v1, v3, :cond_87

    const/4 v3, 0x7

    if-eq v1, v3, :cond_87

    const/4 v3, 0x5

    if-eq v1, v3, :cond_87

    const/4 v3, 0x6

    if-eq v1, v3, :cond_87

    const/16 v3, 0xc

    if-eq v1, v3, :cond_87

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7d

    goto :goto_87

    :cond_7d
    const/16 v3, 0xd

    if-ne v1, v3, :cond_84

    const-string v1, "lte"

    goto :goto_89

    :cond_84
    const-string v1, "gsm"

    goto :goto_89

    :cond_87
    :goto_87
    const-string v1, "cdma"

    :goto_89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getRadioType - radioType:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcn/jiguang/ac/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget-object v1, p0, Lcn/jiguang/ab/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v1, v3}, Lcn/jiguang/f/j;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jiguang/ac/a;->h:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_18e

    iget-object v0, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_c2

    goto/16 :goto_18d

    :cond_c2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    if-eqz v1, :cond_c6

    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    const v3, 0xfffffff

    if-eqz v2, :cond_104

    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    iget-object v4, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v2

    iput v2, v4, Lcn/jiguang/ac/a;->f:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v4

    iput v4, v2, Lcn/jiguang/ac/a;->e:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    iput v1, v2, Lcn/jiguang/ac/a;->d:I

    iget-object v1, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget v1, v1, Lcn/jiguang/ac/a;->e:I

    if-ge v1, v3, :cond_c6

    return-void

    :cond_104
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    const v4, 0xffff

    if-eqz v2, :cond_134

    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    iget-object v3, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v2

    iput v2, v3, Lcn/jiguang/ac/a;->f:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    iput v3, v2, Lcn/jiguang/ac/a;->e:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    iput v1, v2, Lcn/jiguang/ac/a;->d:I

    iget-object v1, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget v1, v1, Lcn/jiguang/ac/a;->e:I

    if-ge v1, v4, :cond_c6

    return-void

    :cond_134
    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_161

    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    iget-object v3, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v2

    iput v2, v3, Lcn/jiguang/ac/a;->f:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    iput v3, v2, Lcn/jiguang/ac/a;->e:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v2, Lcn/jiguang/ac/a;->d:I

    iget-object v1, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget v1, v1, Lcn/jiguang/ac/a;->e:I

    if-ge v1, v4, :cond_c6

    return-void

    :cond_161
    instance-of v2, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_c6

    check-cast v1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    iget-object v4, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v2

    iput v2, v4, Lcn/jiguang/ac/a;->f:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v4

    iput v4, v2, Lcn/jiguang/ac/a;->e:I

    iget-object v2, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    iput v1, v2, Lcn/jiguang/ac/a;->d:I

    iget-object v1, p0, Lcn/jiguang/ab/d;->c:Lcn/jiguang/ac/a;

    iget v1, v1, Lcn/jiguang/ac/a;->e:I

    if-ge v1, v3, :cond_c6

    :cond_18d
    :goto_18d
    return-void

    :cond_18e
    iget-object v0, p0, Lcn/jiguang/ab/d;->b:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcn/jiguang/ab/e;

    invoke-direct {v1, p0, v2}, Lcn/jiguang/ab/e;-><init>(Lcn/jiguang/ab/d;B)V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
