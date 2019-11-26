.class final Lcn/jiguang/ab/e;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcn/jiguang/ab/d;


# direct methods
.method private constructor <init>(Lcn/jiguang/ab/d;)V
    .registers 2

    iput-object p1, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jiguang/ab/d;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcn/jiguang/ab/e;-><init>(Lcn/jiguang/ab/d;)V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {v0}, Lcn/jiguang/ab/d;->a(Lcn/jiguang/ab/d;)Lcn/jiguang/ac/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    iput p1, v0, Lcn/jiguang/ac/a;->f:I

    iget-object p1, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {p1}, Lcn/jiguang/ab/d;->b(Lcn/jiguang/ab/d;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    if-nez p1, :cond_1c

    return-void

    :cond_1c
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_3b

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    iget-object v0, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {v0}, Lcn/jiguang/ab/d;->a(Lcn/jiguang/ab/d;)Lcn/jiguang/ac/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcn/jiguang/ac/a;->e:I

    iget-object v0, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {v0}, Lcn/jiguang/ab/d;->a(Lcn/jiguang/ab/d;)Lcn/jiguang/ac/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    :goto_38
    iput p1, v0, Lcn/jiguang/ac/a;->d:I

    goto :goto_58

    :cond_3b
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_58

    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    iget-object v0, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {v0}, Lcn/jiguang/ab/d;->a(Lcn/jiguang/ab/d;)Lcn/jiguang/ac/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v0, Lcn/jiguang/ac/a;->e:I

    iget-object v0, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {v0}, Lcn/jiguang/ab/d;->a(Lcn/jiguang/ab/d;)Lcn/jiguang/ac/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    goto :goto_38

    :cond_58
    :goto_58
    iget-object p1, p0, Lcn/jiguang/ab/e;->a:Lcn/jiguang/ab/d;

    invoke-static {p1}, Lcn/jiguang/ab/d;->b(Lcn/jiguang/ab/d;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_62

    :catchall_62
    return-void
.end method
