.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations


# static fields
.field public static final BDLOCATION_BD09LL_TO_GCJ02:Ljava/lang/String; = "bd09ll2gcj"

.field public static final BDLOCATION_BD09_TO_GCJ02:Ljava/lang/String; = "bd092gcj"

.field public static final BDLOCATION_GCJ02_TO_BD09:Ljava/lang/String; = "bd09"

.field public static final BDLOCATION_GCJ02_TO_BD09LL:Ljava/lang/String; = "bd09ll"

.field public static final BDLOCATION_WGS84_TO_GCJ02:Ljava/lang/String; = "gps2gcj"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_ACCURACY_BAD:I = 0x3

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_MID:I = 0x2

.field public static final GPS_ACCURACY_UNKNOWN:I = 0x0

.field public static final GPS_RECTIFY_INDOOR:I = 0x1

.field public static final GPS_RECTIFY_NONE:I = 0x0

.field public static final GPS_RECTIFY_OUTDOOR:I = 0x2

.field public static final INDOOR_LOCATION_NEARBY_SURPPORT_TRUE:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_BLUETOOTH:I = 0x4

.field public static final INDOOR_LOCATION_SOURCE_MAGNETIC:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_SMALLCELLSTATION:I = 0x8

.field public static final INDOOR_LOCATION_SOURCE_UNKNOWN:I = 0x0

.field public static final INDOOR_LOCATION_SOURCE_WIFI:I = 0x1

.field public static final INDOOR_LOCATION_SURPPORT_FALSE:I = 0x0

.field public static final INDOOR_LOCATION_SURPPORT_TRUE:I = 0x1

.field public static final INDOOR_NETWORK_STATE_HIGH:I = 0x2

.field public static final INDOOR_NETWORK_STATE_LOW:I = 0x0

.field public static final INDOOR_NETWORK_STATE_MIDDLE:I = 0x1

.field public static final LOCATION_WHERE_IN_CN:I = 0x1

.field public static final LOCATION_WHERE_OUT_CN:I = 0x0

.field public static final LOCATION_WHERE_UNKNOW:I = 0x2

.field public static final OPERATORS_TYPE_MOBILE:I = 0x1

.field public static final OPERATORS_TYPE_TELECOMU:I = 0x3

.field public static final OPERATORS_TYPE_UNICOM:I = 0x2

.field public static final OPERATORS_TYPE_UNKONW:I = 0x0

.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerCheckKeyError:I = 0x1f9

.field public static final TypeServerDecryptError:I = 0xa2

.field public static final TypeServerError:I = 0xa7

.field public static final USER_INDDOR_TRUE:I = 0x1

.field public static final USER_INDOOR_FALSE:I = 0x0

.field public static final USER_INDOOR_UNKNOW:I = -0x1


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Landroid/os/Bundle;

.field private Q:I

.field private R:I

.field private S:J

.field private T:Ljava/lang/String;

.field private U:D

.field private V:D

.field private W:Z

.field private X:Lcom/baidu/location/PoiRegion;

.field private Y:F

.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/baidu/location/Address;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/location/a;

    invoke-direct {v0}, Lcom/baidu/location/a;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v5, -0x4080

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v6, Lcom/baidu/location/Address$Builder;

    invoke-direct {v6}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->S:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    iput v5, p0, Lcom/baidu/location/BDLocation;->Y:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, v1, Lcom/baidu/location/BDLocation;->a:I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v4, 0x1

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v6, 0x0

    iput v6, v1, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->i:Z

    iput v6, v1, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v6, -0x1

    iput v6, v1, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v7, -0x4080

    iput v7, v1, Lcom/baidu/location/BDLocation;->m:F

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v8, Lcom/baidu/location/Address$Builder;

    invoke-direct {v8}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v8}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v8

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, v1, Lcom/baidu/location/BDLocation;->z:I

    const/4 v8, 0x1

    iput v8, v1, Lcom/baidu/location/BDLocation;->A:I

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, v1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v6, v1, Lcom/baidu/location/BDLocation;->E:I

    iput v0, v1, Lcom/baidu/location/BDLocation;->F:I

    const/4 v6, 0x2

    iput v6, v1, Lcom/baidu/location/BDLocation;->G:I

    iput v0, v1, Lcom/baidu/location/BDLocation;->H:I

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v0, v1, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, v1, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/baidu/location/BDLocation;->S:J

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->W:Z

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    iput v7, v1, Lcom/baidu/location/BDLocation;->Y:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Lcom/baidu/location/Address$Builder;

    invoke-direct {v3}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v3, v12}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/baidu/location/Address$Builder;->town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/16 v3, 0x8

    new-array v3, v3, [Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->G:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->R:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->S:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->U:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->V:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->Y:F

    :try_start_1c7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->e:Z

    aget-boolean v0, v3, v8

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->g:Z

    aget-boolean v0, v3, v6

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v0, 0x3

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v0, 0x4

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v0, 0x5

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->t:Z

    const/4 v0, 0x6

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->y:Z

    const/4 v0, 0x7

    aget-boolean v0, v3, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->W:Z
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1ef} :catch_1ef

    :catch_1ef
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_1f4
    const-class v0, Lcom/baidu/location/Poi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1fd} :catch_1fe

    goto :goto_202

    :catch_1fe
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_202
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_20c

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_20e

    :cond_20c
    iput-object v3, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    :goto_20e
    :try_start_20e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_214} :catch_215

    goto :goto_220

    :catch_215
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :goto_220
    :try_start_220
    const-class v0, Lcom/baidu/location/PoiRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/PoiRegion;

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22e} :catch_22f

    goto :goto_236

    :catch_22f
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_236
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v5, -0x4080

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v6, Lcom/baidu/location/Address$Builder;

    invoke-direct {v6}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->S:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    iput v5, p0, Lcom/baidu/location/BDLocation;->Y:F

    iget v2, p1, Lcom/baidu/location/BDLocation;->a:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->a:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->d:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->e:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->f:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->g:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->h:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->h:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->i:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->j:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->j:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->k:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->l:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->l:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->m:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->m:F

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->o:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->t:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->town:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->A:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->A:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->z:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->z:I

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->y:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->y:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->C:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->C:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->E:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->E:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->F:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->G:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->H:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->H:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->Q:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->Q:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->V:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->S:J

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->S:J

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    if-nez v2, :cond_18d

    :cond_18a
    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_1c2

    :cond_18d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_192
    iget-object v2, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_18a

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/Poi;

    new-instance v10, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getTags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getAddr()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    :goto_1c2
    iget-object v0, p1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iget v0, p1, Lcom/baidu/location/BDLocation;->R:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->W:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    iget p1, p1, Lcom/baidu/location/BDLocation;->Y:F

    iput p1, p0, Lcom/baidu/location/BDLocation;->Y:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/location/BDLocation;->a:I

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v5, 0x1

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v7, 0x0

    iput v7, v1, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->i:Z

    iput v7, v1, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v7, -0x1

    iput v7, v1, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v7, -0x4080

    iput v7, v1, Lcom/baidu/location/BDLocation;->m:F

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v7, Lcom/baidu/location/Address$Builder;

    invoke-direct {v7}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v7}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v7

    iput-object v7, v1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->y:Z

    iput v3, v1, Lcom/baidu/location/BDLocation;->z:I

    const/4 v7, 0x1

    iput v7, v1, Lcom/baidu/location/BDLocation;->A:I

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v8, ""

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    const/4 v9, -0x1

    iput v9, v1, Lcom/baidu/location/BDLocation;->E:I

    iput v3, v1, Lcom/baidu/location/BDLocation;->F:I

    const/4 v9, 0x2

    iput v9, v1, Lcom/baidu/location/BDLocation;->G:I

    iput v3, v1, Lcom/baidu/location/BDLocation;->H:I

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v3, v1, Lcom/baidu/location/BDLocation;->Q:I

    iput v3, v1, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/baidu/location/BDLocation;->S:J

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->W:Z

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    const/high16 v10, -0x4080

    iput v10, v1, Lcom/baidu/location/BDLocation;->Y:F

    if-eqz v2, :cond_703

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    goto/16 :goto_703

    :cond_94
    :try_start_94
    new-instance v10, Lorg/json/JSONObject;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_96} :catch_6f9
    .catch Ljava/lang/Error; {:try_start_94 .. :try_end_96} :catch_6f2

    :try_start_96
    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v11, "error"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v12, "time"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b5} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_96 .. :try_end_b5} :catch_6f2

    const/16 v2, 0x3d

    const-string v12, "gcj02"

    const-string v13, "radius"

    const-string v14, "point"

    const-string v15, "content"

    const-string v5, "in_cn"

    const-string v6, "x"

    const-string v4, "y"

    if-ne v11, v2, :cond_14d

    :try_start_c7
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v4, "s"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v4, "d"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    const-string v4, "n"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V

    const-string v4, "h"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_11d} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_c7 .. :try_end_11d} :catch_6f2

    if-eqz v4, :cond_128

    :try_start_11f
    const-string v4, "h"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/baidu/location/BDLocation;->setAltitude(D)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_128} :catch_128
    .catch Ljava/lang/Error; {:try_start_11f .. :try_end_128} :catch_6f2

    :catch_128
    :cond_128
    :try_start_128
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13a

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_13d

    :cond_13a
    invoke-virtual {v1, v7}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_13d} :catch_13d
    .catch Ljava/lang/Error; {:try_start_128 .. :try_end_13d} :catch_6f2

    :catch_13d
    :goto_13d
    :try_start_13d
    iget v2, v1, Lcom/baidu/location/BDLocation;->A:I

    if-nez v2, :cond_148

    const-string v2, "wgs84"

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_703

    :cond_148
    :goto_148
    invoke-virtual {v1, v12}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_703

    :cond_14d
    const/16 v2, 0xa1

    if-ne v11, v2, :cond_69f

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v1, v10}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v10, "sema"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_180} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_13d .. :try_end_180} :catch_6f2

    const-string v11, "addr"

    if-eqz v10, :cond_27c

    :try_start_184
    const-string v10, "sema"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v13, "aptag"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a3

    const-string v13, "aptag"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a1

    iput-object v13, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    goto :goto_1a3

    :cond_1a1
    iput-object v8, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    :cond_1a3
    :goto_1a3
    const-string v13, "aptagd"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20b

    const-string v13, "aptagd"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "pois"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_1bd
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v15, v9, :cond_209

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v7, "pname"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v7, "pid"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v7, "pr"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-string v7, "tags"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ea

    const-string v7, "tags"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v7

    goto :goto_1ec

    :cond_1ea
    move-object/from16 v21, v8

    :goto_1ec
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f9

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v7

    goto :goto_1fb

    :cond_1f9
    move-object/from16 v22, v8

    :goto_1fb
    new-instance v7, Lcom/baidu/location/Poi;

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v22}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_1bd

    :cond_209
    iput-object v14, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    :cond_20b
    const-string v7, "poiregion"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_221

    const-string v7, "poiregion"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_221

    iput-object v7, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    :cond_221
    const-string v7, "poi_regions"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_266

    const-string v7, "poi_regions"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "direction_desc"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23e

    const-string v9, "direction_desc"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_23f

    :cond_23e
    move-object v9, v8

    :goto_23f
    const-string v13, "name"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24e

    const-string v13, "name"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_24f

    :cond_24e
    move-object v13, v8

    :goto_24f
    const-string v14, "tag"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25e

    const-string v14, "tag"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_25f

    :cond_25e
    move-object v7, v8

    :goto_25f
    new-instance v14, Lcom/baidu/location/PoiRegion;

    invoke-direct {v14, v9, v13, v7}, Lcom/baidu/location/PoiRegion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v1, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    :cond_266
    const-string v7, "regular"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27c

    const-string v7, "regular"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_27c

    iput-object v7, v1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    :cond_27c
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_280} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_184 .. :try_end_280} :catch_6f2

    const-string v9, ","

    if-eqz v7, :cond_46a

    :try_start_284
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_288} :catch_28a
    .catch Ljava/lang/Error; {:try_start_284 .. :try_end_288} :catch_6f2

    const/4 v10, 0x1

    goto :goto_28c

    :catch_28a
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_28c
    if-eqz v7, :cond_354

    :try_start_28e
    const-string v11, "city"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_29d

    const-string v11, "city"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_29e

    :cond_29d
    move-object v11, v8

    :goto_29e
    const-string v13, "city_code"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2ad

    const-string v13, "city_code"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2ae

    :cond_2ad
    move-object v13, v8

    :goto_2ae
    const-string v14, "country"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2bd

    const-string v14, "country"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2be

    :cond_2bd
    move-object v14, v8

    :goto_2be
    const-string v15, "country_code"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2cd

    const-string v15, "country_code"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2ce

    :cond_2cd
    move-object v15, v8

    :goto_2ce
    const-string v3, "province"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2df

    const-string v3, "province"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p1, v3

    goto :goto_2e1

    :cond_2df
    move-object/from16 p1, v8

    :goto_2e1
    const-string v3, "district"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f2

    const-string v3, "district"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_2f4

    :cond_2f2
    move-object/from16 v17, v8

    :goto_2f4
    const-string v3, "street"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_305

    const-string v3, "street"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_307

    :cond_305
    move-object/from16 v18, v8

    :goto_307
    const-string v3, "street_number"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_318

    const-string v3, "street_number"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_31a

    :cond_318
    move-object/from16 v19, v8

    :goto_31a
    const-string v3, "adcode"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_329

    const-string v3, "adcode"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32a

    :cond_329
    move-object v3, v8

    :goto_32a
    const-string v8, "town"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_342

    const-string v8, "town"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_338
    .catch Ljava/lang/Exception; {:try_start_28e .. :try_end_338} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_28e .. :try_end_338} :catch_6f2

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v6

    goto :goto_34b

    :cond_342
    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    const/4 v9, 0x0

    :goto_34b
    move-object v6, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v4

    move-object/from16 v4, v19

    goto/16 :goto_431

    :cond_354
    :try_start_354
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    if-lez v7, :cond_364

    const/4 v8, 0x0

    aget-object v10, v3, v8
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_354 .. :try_end_362} :catch_411
    .catch Ljava/lang/Error; {:try_start_354 .. :try_end_362} :catch_6f2

    const/4 v8, 0x1

    goto :goto_366

    :cond_364
    const/4 v8, 0x1

    const/4 v10, 0x0

    :goto_366
    if-le v7, v8, :cond_370

    :try_start_368
    aget-object v11, v3, v8
    :try_end_36a
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_36a} :catch_36c
    .catch Ljava/lang/Error; {:try_start_368 .. :try_end_36a} :catch_6f2

    const/4 v8, 0x2

    goto :goto_372

    :catch_36c
    move-exception v0

    move-object v3, v0

    goto/16 :goto_414

    :cond_370
    const/4 v8, 0x2

    const/4 v11, 0x0

    :goto_372
    if-le v7, v8, :cond_37b

    :try_start_374
    aget-object v13, v3, v8
    :try_end_376
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_376} :catch_377
    .catch Ljava/lang/Error; {:try_start_374 .. :try_end_376} :catch_6f2

    goto :goto_37c

    :catch_377
    move-exception v0

    move-object v3, v0

    goto/16 :goto_415

    :cond_37b
    const/4 v13, 0x0

    :goto_37c
    const/4 v8, 0x3

    if-le v7, v8, :cond_38c

    const/4 v8, 0x3

    :try_start_380
    aget-object v8, v3, v8
    :try_end_382
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_382} :catch_383
    .catch Ljava/lang/Error; {:try_start_380 .. :try_end_382} :catch_6f2

    goto :goto_38d

    :catch_383
    move-exception v0

    move-object v3, v0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_41a

    :cond_38c
    const/4 v8, 0x0

    :goto_38d
    const/4 v14, 0x4

    if-le v7, v14, :cond_39f

    const/4 v14, 0x4

    :try_start_391
    aget-object v14, v3, v14
    :try_end_393
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_393} :catch_394
    .catch Ljava/lang/Error; {:try_start_391 .. :try_end_393} :catch_6f2

    goto :goto_3a0

    :catch_394
    move-exception v0

    move-object v3, v0

    move-object/from16 v18, v8

    move-object/from16 v17, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_41c

    :cond_39f
    const/4 v14, 0x0

    :goto_3a0
    const/4 v15, 0x5

    if-le v7, v15, :cond_3b6

    const/4 v15, 0x5

    :try_start_3a4
    aget-object v15, v3, v15
    :try_end_3a6
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3a6} :catch_3a9
    .catch Ljava/lang/Error; {:try_start_3a4 .. :try_end_3a6} :catch_6f2

    move-object/from16 p1, v8

    goto :goto_3b9

    :catch_3a9
    move-exception v0

    move-object v3, v0

    move-object/from16 v18, v8

    move-object/from16 v17, v13

    move-object/from16 v19, v14

    const/4 v13, 0x0

    :goto_3b2
    const/4 v14, 0x0

    :goto_3b3
    const/4 v15, 0x0

    goto/16 :goto_41e

    :cond_3b6
    move-object/from16 p1, v8

    const/4 v15, 0x0

    :goto_3b9
    const/4 v8, 0x6

    if-le v7, v8, :cond_3cc

    const/4 v8, 0x6

    :try_start_3bd
    aget-object v8, v3, v8
    :try_end_3bf
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_3bf} :catch_3c2
    .catch Ljava/lang/Error; {:try_start_3bd .. :try_end_3bf} :catch_6f2

    move-object/from16 v17, v8

    goto :goto_3ce

    :catch_3c2
    move-exception v0

    move-object/from16 v18, p1

    move-object v3, v0

    move-object/from16 v17, v13

    move-object/from16 v19, v14

    move-object v13, v15

    goto :goto_3b2

    :cond_3cc
    const/16 v17, 0x0

    :goto_3ce
    const/4 v8, 0x7

    if-le v7, v8, :cond_3e3

    const/4 v8, 0x7

    :try_start_3d2
    aget-object v8, v3, v8
    :try_end_3d4
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_3d4} :catch_3d7
    .catch Ljava/lang/Error; {:try_start_3d2 .. :try_end_3d4} :catch_6f2

    move-object/from16 v18, v8

    goto :goto_3e5

    :catch_3d7
    move-exception v0

    move-object/from16 v18, p1

    move-object v3, v0

    move-object/from16 v19, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v13

    move-object v13, v15

    goto :goto_3b3

    :cond_3e3
    const/16 v18, 0x0

    :goto_3e5
    const/16 v8, 0x8

    if-le v7, v8, :cond_3fc

    const/16 v7, 0x8

    :try_start_3eb
    aget-object v3, v3, v7
    :try_end_3ed
    .catch Ljava/lang/Exception; {:try_start_3eb .. :try_end_3ed} :catch_3ee
    .catch Ljava/lang/Error; {:try_start_3eb .. :try_end_3ed} :catch_6f2

    goto :goto_3fd

    :catch_3ee
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v13

    move-object v13, v15

    move-object/from16 v15, v18

    move-object/from16 v18, p1

    goto :goto_41e

    :cond_3fc
    const/4 v3, 0x0

    :goto_3fd
    move-object/from16 v8, p1

    move-object/from16 p1, v4

    move-object v7, v13

    move-object v4, v14

    move-object v13, v15

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    const/4 v9, 0x0

    move-object v6, v3

    move-object v3, v10

    const/4 v10, 0x1

    goto :goto_431

    :catch_411
    move-exception v0

    move-object v3, v0

    const/4 v10, 0x0

    :goto_414
    const/4 v11, 0x0

    :goto_415
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_41a
    const/16 v18, 0x0

    :goto_41c
    const/16 v19, 0x0

    :goto_41e
    :try_start_41e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 p1, v4

    move-object v3, v10

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    const/4 v10, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_431
    if-eqz v10, :cond_476

    new-instance v10, Lcom/baidu/location/Address$Builder;

    invoke-direct {v10}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v10, v14}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v15}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/baidu/location/Address$Builder;->town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->o:Z

    goto :goto_476

    :cond_46a
    move-object/from16 p1, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    :cond_476
    :goto_476
    const-string v3, "floor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_491

    const-string v3, "floor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_491

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    :cond_491
    const-string v3, "indoor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b0

    const-string v3, "indoor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    :cond_4b0
    const-string v3, "loctp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4cb

    const-string v3, "loctp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4cb

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    :cond_4cb
    const-string v3, "bldgid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e6

    const-string v3, "bldgid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e6

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    :cond_4e6
    const-string v3, "bldg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_501

    const-string v3, "bldg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_501

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    :cond_501
    const-string v3, "ibav"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52c

    const-string v3, "ibav"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_519

    :goto_515
    const/4 v4, 0x0

    iput v4, v1, Lcom/baidu/location/BDLocation;->z:I

    goto :goto_52c

    :cond_519
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_522

    goto :goto_515

    :cond_522
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/baidu/location/BDLocation;->z:I

    :cond_52c
    :goto_52c
    const-string v3, "indoorflags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_532
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_532} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_41e .. :try_end_532} :catch_6f2

    if-eqz v3, :cond_5e0

    :try_start_534
    const-string v3, "indoorflags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "area"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55d

    const-string v4, "area"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_557

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    goto :goto_55d

    :cond_557
    const/4 v6, 0x1

    if-ne v4, v6, :cond_55d

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    :cond_55d
    :goto_55d
    const-string v4, "support"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_576

    const-string v4, "support"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setIndoorLocationSource(I)V

    :cond_576
    const-string v4, "inbldg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_586

    const-string v4, "inbldg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    :cond_586
    const-string v4, "inbldgid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_596

    const-string v4, "inbldgid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    :cond_596
    const-string v4, "polygon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a7

    const-string v4, "polygon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setIndoorSurpportPolygon(Ljava/lang/String;)V

    :cond_5a7
    const-string v4, "ret_fields"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_5ad
    .catch Ljava/lang/Exception; {:try_start_534 .. :try_end_5ad} :catch_5db
    .catch Ljava/lang/Error; {:try_start_534 .. :try_end_5ad} :catch_6f2

    if-eqz v4, :cond_5e0

    :try_start_5af
    const-string v4, "ret_fields"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_5bd
    if-ge v6, v4, :cond_5e0

    aget-object v7, v3, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v7, v8

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget-object v8, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d2
    .catch Ljava/lang/Exception; {:try_start_5af .. :try_end_5d2} :catch_5d5
    .catch Ljava/lang/Error; {:try_start_5af .. :try_end_5d2} :catch_6f2

    add-int/lit8 v6, v6, 0x1

    goto :goto_5bd

    :catch_5d5
    move-exception v0

    move-object v3, v0

    :try_start_5d7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5da
    .catch Ljava/lang/Exception; {:try_start_5d7 .. :try_end_5da} :catch_5db
    .catch Ljava/lang/Error; {:try_start_5d7 .. :try_end_5da} :catch_6f2

    goto :goto_5e0

    :catch_5db
    move-exception v0

    move-object v3, v0

    :try_start_5dd
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5e0
    :goto_5e0
    const-string v3, "gpscs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f2

    const-string v3, "gpscs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V

    goto :goto_5f6

    :cond_5f2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V
    :try_end_5f6
    .catch Ljava/lang/Exception; {:try_start_5dd .. :try_end_5f6} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_5dd .. :try_end_5f6} :catch_6f2

    :goto_5f6
    :try_start_5f6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_608

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_60c

    :cond_608
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_60c
    .catch Ljava/lang/Exception; {:try_start_5f6 .. :try_end_60c} :catch_60c
    .catch Ljava/lang/Error; {:try_start_5f6 .. :try_end_60c} :catch_6f2

    :catch_60c
    :goto_60c
    :try_start_60c
    iget v3, v1, Lcom/baidu/location/BDLocation;->A:I

    if-nez v3, :cond_616

    const-string v3, "wgs84"

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto :goto_619

    :cond_616
    invoke-virtual {v1, v12}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    :goto_619
    const-string v3, "navi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_629

    const-string v3, "navi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    :cond_629
    const-string v3, "navi_client"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_664

    const-string v3, "navi_client"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_637
    .catch Ljava/lang/Exception; {:try_start_60c .. :try_end_637} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_60c .. :try_end_637} :catch_6f2

    if-eqz v3, :cond_664

    move-object/from16 v4, v18

    :try_start_63b
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_664

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    if-lez v4, :cond_664

    iput-boolean v5, v1, Lcom/baidu/location/BDLocation;->W:Z
    :try_end_65e
    .catchall {:try_start_63b .. :try_end_65e} :catchall_65f

    goto :goto_664

    :catchall_65f
    move-exception v0

    move-object v3, v0

    :try_start_661
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_664
    :goto_664
    const-string v3, "nrl_point"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_66a
    .catch Ljava/lang/Exception; {:try_start_661 .. :try_end_66a} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_661 .. :try_end_66a} :catch_6f2

    if-eqz v3, :cond_703

    :try_start_66c
    const-string v3, "nrl_point"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_703

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_703

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->U:D

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->V:D
    :try_end_696
    .catchall {:try_start_66c .. :try_end_696} :catchall_698

    goto/16 :goto_703

    :catchall_698
    const-wide/16 v2, 0x1

    :try_start_69a
    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->V:D

    goto :goto_703

    :cond_69f
    move-object v3, v6

    const/16 v2, 0x42

    if-eq v11, v2, :cond_6b2

    const/16 v2, 0x44

    if-ne v11, v2, :cond_6a9

    goto :goto_6b2

    :cond_6a9
    const/16 v2, 0xa7

    if-ne v11, v2, :cond_703

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_703

    :cond_6b2
    :goto_6b2
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v3, "isCellChanged"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/Boolean;)V
    :try_end_6ec
    .catch Ljava/lang/Exception; {:try_start_69a .. :try_end_6ec} :catch_6ee
    .catch Ljava/lang/Error; {:try_start_69a .. :try_end_6ec} :catch_6f2

    goto/16 :goto_148

    :catch_6ee
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_6fc

    :catch_6f2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_6ff

    :catch_6f9
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_6fc
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6ff
    iput v2, v1, Lcom/baidu/location/BDLocation;->a:I

    iput-boolean v2, v1, Lcom/baidu/location/BDLocation;->o:Z

    :cond_703
    :goto_703
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->t:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddrStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/baidu/location/Address;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    return-object v0
.end method

.method public getAltitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    return-wide v0
.end method

.method public getBuildingID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayTime()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->S:J

    return-wide v0
.end method

.method public getDerect()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    return v0
.end method

.method public getDirection()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/location/Location;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/location/Location;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getFusionLocInfo(Ljava/lang/String;)[D
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getGpsAccuracyStatus()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    return v0
.end method

.method public getGpsBiasProb()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->Y:F

    return v0
.end method

.method public getGpsCheckStatus()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->R:I

    return v0
.end method

.method public getIndoorLocationSource()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    return v0
.end method

.method public getIndoorLocationSurpport()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    return v0
.end method

.method public getIndoorLocationSurpportBuidlingID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorLocationSurpportBuidlingName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorNetworkState()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->G:I

    return v0
.end method

.method public getIndoorSurpportPolygon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    return-wide v0
.end method

.method public getLocType()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    return v0
.end method

.method public getLocTypeDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationDescribe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWhere()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    return v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    return-wide v0
.end method

.method public getNetworkLocationType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getNrlLat()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->U:D

    return-wide v0
.end method

.method public getNrlLon()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->V:D

    return-wide v0
.end method

.method public getNrlResult()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->C:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    return-object v0
.end method

.method public getPoiRegion()Lcom/baidu/location/PoiRegion;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    return v0
.end method

.method public getRetFields(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRoadLocString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getSatelliteNumber()I
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:I

    return v0
.end method

.method public getSemaAptag()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTown()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->town:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIndoorState()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    return v0
.end method

.method public getVdrJsonString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    const-string v1, "vdr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method public hasAddr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return v0
.end method

.method public hasRadius()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    return v0
.end method

.method public hasSateNumber()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    return v0
.end method

.method public isCellChangeFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    return v0
.end method

.method public isInIndoorPark()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    return v0
.end method

.method public isIndoorLocMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    return v0
.end method

.method public isNrlAvailable()Z
    .registers 6

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->V:D

    const-wide/16 v2, 0x1

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_10

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->U:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isParkAvailable()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->z:I

    return v0
.end method

.method public setAddr(Lcom/baidu/location/Address;)V
    .registers 2

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->o:Z

    :cond_7
    return-void
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x1

    :goto_7
    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->o:Z

    return-void
.end method

.method public setAltitude(D)V
    .registers 6

    const-wide v0, 0x40c3878000000000L

    cmpg-double v2, p1, v0

    if-gez v2, :cond_e

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->e:Z

    :cond_e
    return-void
.end method

.method public setBuildingID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    return-void
.end method

.method public setBuildingName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public setDelayTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->S:J

    return-void
.end method

.method public setDirection(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->m:F

    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    return-void
.end method

.method public setFusionLocInfo(Ljava/lang/String;[D)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method public setGpsAccuracyStatus(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->Q:I

    return-void
.end method

.method public setGpsBiasProb(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->Y:F

    return-void
.end method

.method public setGpsCheckStatus(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->R:I

    return-void
.end method

.method public setIndoorLocMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->y:Z

    return-void
.end method

.method public setIndoorLocationSource(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->H:I

    return-void
.end method

.method public setIndoorLocationSurpport(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->F:I

    return-void
.end method

.method public setIndoorNetworkState(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->G:I

    return-void
.end method

.method public setIndoorSurpportPolygon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->c:D

    return-void
.end method

.method public setLocType(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/location/BDLocation;->a:I

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x43

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_39

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_36

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_33

    const/16 v0, 0x1f9

    if-eq p1, v0, :cond_30

    packed-switch p1, :pswitch_data_44

    const-string p1, "UnKnown!"

    :goto_1f
    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_42

    :pswitch_23
    const-string p1, "Location failed beacuse we can not get any loc information!"

    goto :goto_1f

    :pswitch_26
    const-string p1, "GPS location successful!"

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    goto :goto_42

    :cond_30
    const-string p1, "NetWork location failed because baidu location service check the key is unlegal, please check the key in AndroidManifest.xml !"

    goto :goto_1f

    :cond_33
    const-string p1, "NetWork location failed because baidu location service can not caculate the location!"

    goto :goto_1f

    :cond_36
    const-string p1, "NetWork location failed because baidu location service can not decrypt the request query, please check the so file !"

    goto :goto_1f

    :cond_39
    const-string p1, "NetWork location successful!"

    goto :goto_1f

    :cond_3c
    :pswitch_3c
    const-string p1, "Offline location failed, please check the net (wifi/cell)!"

    goto :goto_1f

    :cond_3f
    const-string p1, "Offline location successful!"

    goto :goto_1f

    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x3d
        :pswitch_26
        :pswitch_23
        :pswitch_3c
    .end packed-switch
.end method

.method public setLocTypeDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    return-void
.end method

.method public setLocationDescribe(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-void
.end method

.method public setLocationID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-void
.end method

.method public setLocationWhere(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->A:I

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->d:D

    return-void
.end method

.method public setNetworkLocationType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-void
.end method

.method public setNrlData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    return-void
.end method

.method public setOperators(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->C:I

    return-void
.end method

.method public setParkAvailable(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->z:I

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    return-void
.end method

.method public setPoiRegion(Lcom/baidu/location/PoiRegion;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->i:Z

    return-void
.end method

.method public setRetFields(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoadLocString(FF)V
    .registers 12

    float-to-double v0, p1

    const-string v2, "%.2f"

    const-wide v3, 0x3f50624dd2f1a9fcL

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmpl-double v8, v0, v3

    if-lez v8, :cond_1d

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    move-object p1, v5

    :goto_1e
    float-to-double v0, p2

    cmpl-double v8, v0, v3

    if-lez v8, :cond_2f

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_2f
    iget-object p2, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    if-eqz p2, :cond_49

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    aput-object v1, v0, v6

    aput-object p1, v0, v7

    const/4 p1, 0x2

    aput-object v5, v0, p1

    const-string p1, "%s|%s,%s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    :cond_49
    return-void
.end method

.method public setSatelliteNumber(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->l:I

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->g:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/location/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocationID(Ljava/lang/String;)V

    return-void
.end method

.method public setUserIndoorState(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->E:I

    return-void
.end method

.method public setVdrJsonValue(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    const-string v1, "vdr"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->town:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->G:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->R:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->S:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->U:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->V:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->Y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->y:Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->W:Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->X:Lcom/baidu/location/PoiRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
