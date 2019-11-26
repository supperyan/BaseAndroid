.class public Lcom/baidu/android/bbalbs/common/util/CommonParam;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "ma001"

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/c;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
