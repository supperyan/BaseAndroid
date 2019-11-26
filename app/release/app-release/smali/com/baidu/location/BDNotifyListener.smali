.class public abstract Lcom/baidu/location/BDNotifyListener;
.super Ljava/lang/Object;


# instance fields
.field public Notified:I

.field public differDistance:F

.field public isAdded:Z

.field public mCoorType:Ljava/lang/String;

.field public mLatitude:D

.field public mLatitudeC:D

.field public mLongitude:D

.field public mLongitudeC:D

.field public mNotifyCache:Lcom/baidu/location/d/a;

.field public mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    iput v2, p0, Lcom/baidu/location/BDNotifyListener;->differDistance:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDNotifyListener;->Notified:I

    iput-boolean v0, p0, Lcom/baidu/location/BDNotifyListener;->isAdded:Z

    iput-object v2, p0, Lcom/baidu/location/BDNotifyListener;->mNotifyCache:Lcom/baidu/location/d/a;

    return-void
.end method


# virtual methods
.method public SetNotifyLocation(DDFLjava/lang/String;)V
    .registers 7

    iput-wide p1, p0, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    iput-wide p3, p0, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    const/4 p1, 0x0

    cmpg-float p1, p5, p1

    if-gez p1, :cond_e

    const/high16 p1, 0x4348

    iput p1, p0, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    goto :goto_10

    :cond_e
    iput p5, p0, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    :goto_10
    const-string p1, "gcj02"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    const-string p2, "bd09"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    const-string p2, "bd09ll"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    const-string p2, "gps"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    goto :goto_34

    :cond_31
    iput-object p1, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    goto :goto_36

    :cond_34
    :goto_34
    iput-object p6, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    :goto_36
    iget-object p2, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-wide p1, p0, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    iput-wide p1, p0, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iget-wide p1, p0, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    iput-wide p1, p0, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    :cond_46
    iget-boolean p1, p0, Lcom/baidu/location/BDNotifyListener;->isAdded:Z

    if-eqz p1, :cond_52

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/BDNotifyListener;->Notified:I

    iget-object p1, p0, Lcom/baidu/location/BDNotifyListener;->mNotifyCache:Lcom/baidu/location/d/a;

    invoke-virtual {p1, p0}, Lcom/baidu/location/d/a;->b(Lcom/baidu/location/BDNotifyListener;)V

    :cond_52
    return-void
.end method

.method public onNotify(Lcom/baidu/location/BDLocation;F)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new location, not far from the destination..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "baidu_location_service"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
