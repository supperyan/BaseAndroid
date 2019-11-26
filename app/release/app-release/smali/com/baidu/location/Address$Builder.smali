.class public Lcom/baidu/location/Address$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final BEI_JING:Ljava/lang/String; = "\u5317\u4eac"

.field private static final CHONG_QIN:Ljava/lang/String; = "\u91cd\u5e86"

.field private static final SHANG_HAI:Ljava/lang/String; = "\u4e0a\u6d77"

.field private static final TIAN_JIN:Ljava/lang/String; = "\u5929\u6d25"


# instance fields
.field private mAdcode:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCityCode:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mDistrict:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mStreet:Ljava/lang/String;

.field private mStreetNumber:Ljava/lang/String;

.field private mTown:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mProvince:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mCityCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mDistrict:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mStreet:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mStreetNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mAdcode:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mTown:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mAdcode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mTown:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mProvince:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mCityCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mDistrict:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mStreet:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mStreetNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/baidu/location/Address$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/location/Address$Builder;->mAddress:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mAdcode:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/baidu/location/Address;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mCountry:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mProvince:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mProvince:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/baidu/location/Address$Builder;->mCity:Ljava/lang/String;

    if-eqz v2, :cond_26

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mDistrict:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/baidu/location/Address$Builder;->mCity:Ljava/lang/String;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mDistrict:Ljava/lang/String;

    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_39
    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mTown:Ljava/lang/String;

    if-eqz v1, :cond_40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_40
    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mStreet:Ljava/lang/String;

    if-eqz v1, :cond_47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    iget-object v1, p0, Lcom/baidu/location/Address$Builder;->mStreetNumber:Ljava/lang/String;

    if-eqz v1, :cond_4e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5a

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/Address$Builder;->mAddress:Ljava/lang/String;

    :cond_5a
    new-instance v0, Lcom/baidu/location/Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/Address;-><init>(Lcom/baidu/location/Address$Builder;Lcom/baidu/location/Address$1;)V

    return-object v0
.end method

.method public city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method public cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mCityCode:Ljava/lang/String;

    return-object p0
.end method

.method public country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method public countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mDistrict:Ljava/lang/String;

    return-object p0
.end method

.method public province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mProvince:Ljava/lang/String;

    return-object p0
.end method

.method public street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mStreet:Ljava/lang/String;

    return-object p0
.end method

.method public streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mStreetNumber:Ljava/lang/String;

    return-object p0
.end method

.method public town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/Address$Builder;->mTown:Ljava/lang/String;

    return-object p0
.end method
