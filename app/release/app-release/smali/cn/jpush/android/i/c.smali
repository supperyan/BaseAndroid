.class public Lcn/jpush/android/i/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/i/c$a;
    }
.end annotation


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcn/jpush/android/i/c;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/jpush/android/api/JThirdPlatFormInterface;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/i/c;->f:Ljava/lang/Object;

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cn.jpush.android.thirdpush.meizu.MeizuPushManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cn.jpush.android.thirdpush.xiaomi.XMPushManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cn.jpush.android.thirdpush.huawei.HWPushManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cn.jpush.android.thirdpush.fcm.FCMPushManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cn.jpush.android.thridpush.oppo.OPushManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cn.jpush.android.thirdpush.vivo.VivoPushManager"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/i/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/i/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcn/jpush/android/i/c$a;
    .registers 5

    if-eqz p1, :cond_2e

    new-instance v0, Lcn/jpush/android/i/c$a;

    invoke-direct {v0, p0}, Lcn/jpush/android/i/c$a;-><init>(Lcn/jpush/android/i/c;)V

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/android/i/c$a;->c:Ljava/lang/String;

    const-string v1, "msg_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/android/i/c$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "noti_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/jpush/android/i/c$a;->b:I

    const/4 v1, -0x1

    const-string v2, "platform"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput-byte p1, v0, Lcn/jpush/android/i/c$a;->d:B

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse third messgae:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ThirdPushManager"

    invoke-static {v1, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/android/i/c;Landroid/os/Bundle;)Lcn/jpush/android/i/c$a;
    .registers 2

    invoke-direct {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/os/Bundle;)Lcn/jpush/android/i/c$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcn/jpush/android/i/c;
    .registers 2

    sget-object v0, Lcn/jpush/android/i/c;->e:Lcn/jpush/android/i/c;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jpush/android/i/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jpush/android/i/c;->e:Lcn/jpush/android/i/c;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/i/c;

    invoke-direct {v1}, Lcn/jpush/android/i/c;-><init>()V

    sput-object v1, Lcn/jpush/android/i/c;->e:Lcn/jpush/android/i/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcn/jpush/android/i/c;->e:Lcn/jpush/android/i/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcn/jpush/android/api/JThirdPlatFormInterface;)V
    .registers 8

    if-eqz p2, :cond_31

    invoke-virtual {p2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->isNeedClearToken(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result p2

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/jpush/android/cache/Key;

    invoke-static {p2}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    new-array v0, v0, [Lcn/jpush/android/cache/Key;

    invoke-static {p2}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    :cond_31
    return-void
.end method

.method private b(Landroid/content/Context;BLjava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUpdateRegIDRequest, WhichPlatform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",regID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThirdPushManager"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/jpush/android/cache/Key;

    invoke-static {p2}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    new-array v0, v0, [Lcn/jpush/android/cache/Key;

    invoke-static {p2}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "platform"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p2, "JPUSH"

    const-string p3, "third_push_upload_regid"

    invoke-static {p1, p2, p3, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcn/jpush/android/api/JThirdPlatFormInterface;)V
    .registers 8

    const-string v0, "ThirdPushManager"

    const-string v1, "sendBroadCastToUploadToken"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;BLjava/lang/String;)V

    return-void

    :cond_19
    :try_start_19
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "intent.plugin.platform.REFRESSH_REGID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sdktype"

    const-string v4, "JPUSH"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "platform"

    invoke-virtual {p2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_47
    .catchall {:try_start_19 .. :try_end_47} :catchall_48

    goto :goto_5d

    :catchall_48
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send ACTION_PLUGIN_PALTFORM_REFRESSH_REGID failed:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method private b(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 7

    int-to-byte p2, p2

    invoke-static {p2}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ThirdPushManager"

    if-nez v0, :cond_1a

    const-string p1, "need upload -- last upload failed or never upload success"

    :goto_16
    invoke-static {v2, p1}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1a
    invoke-static {p2}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2d

    const-string p1, "need upload -- regId changed"

    goto :goto_16

    :cond_2d
    const-string p1, "need not upload regId"

    invoke-static {v2, p1}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private h(Landroid/content/Context;)V
    .registers 10

    sget-object v0, Lcn/jpush/android/i/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_19
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    instance-of v6, v5, Lcn/jpush/android/api/JThirdPlatFormInterface;

    if-eqz v6, :cond_a

    move-object v6, v5

    check-cast v6, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v6, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->init(Landroid/content/Context;)V

    move-object v6, v5

    check-cast v6, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v6, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->isSupport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    check-cast v5, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_4a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    new-array v6, v3, [Lcn/jpush/android/cache/Key;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-static {v7}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1, v6}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    new-array v6, v3, [Lcn/jpush/android/cache/Key;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-static {v5}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {p1, v6}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V
    :try_end_7a
    .catchall {:try_start_19 .. :try_end_7a} :catchall_7b

    goto :goto_a

    :catchall_7b
    move-exception v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    new-array v6, v3, [Lcn/jpush/android/cache/Key;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-static {v7}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {p1, v6}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    new-array v2, v3, [Lcn/jpush/android/cache/Key;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {p1, v2}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    instance-of v1, v5, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_c9

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Please check"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-static {}, Lcn/jiguang/api/JCoreManager;->getDebugMode()Z

    move-result v1

    if-nez v1, :cond_c3

    goto :goto_c9

    :cond_c3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_c9
    :goto_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadThirdPush error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThirdPushManager"

    invoke-static {v2, v1}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_e5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f6

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f6

    invoke-static {p1}, Lcn/jpush/android/f/a;->a(Landroid/content/Context;)V

    :cond_f6
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcn/jpush/android/i/c;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcn/jpush/android/i/c;->h(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jpush/android/i/c;->d:Z
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;BLjava/lang/String;)V
    .registers 7

    if-nez p1, :cond_4

    sget-object p1, Lcn/jpush/android/a;->a:Landroid/content/Context;

    :cond_4
    const-string v0, "ThirdPushManager"

    if-nez p1, :cond_e

    const-string p1, "context was null"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadRegID regid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v2

    if-ne v2, p2, :cond_2b

    invoke-direct {p0, p1, v1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;Lcn/jpush/android/api/JThirdPlatFormInterface;)V

    invoke-direct {p0, p1, p2, p3}, Lcn/jpush/android/i/c;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1, p2, p3}, Lcn/jpush/android/i/c;->b(Landroid/content/Context;BLjava/lang/String;)V

    goto :goto_2b

    :cond_4a
    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    const-string v0, "ThirdPushManager"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callBackTokenToUser] platform:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "platform"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "token"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x2710

    const/4 p3, 0x0

    const-string v2, ""

    invoke-static {p1, p2, p3, v2, v1}, Lcn/jpush/android/a;->a(Landroid/content/Context;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_36

    goto :goto_4f

    :catchall_36
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callBackTokenToUser failed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    const-string v0, "platform"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-gtz p2, :cond_18

    const-string p1, "ThirdPushManager"

    const-string p2, "refreshToken romtype is <= 0"

    invoke-static {p1, p2}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v2

    if-ne v2, p2, :cond_1e

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1e

    invoke-virtual {p0, p1, p2, v1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;BLjava/lang/String;)V

    goto :goto_1e

    :cond_3b
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "ThirdPushManager"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAction,action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/i/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jpush/android/i/c$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lcn/jpush/android/i/c$1;-><init>(Lcn/jpush/android/i/c;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_29

    goto :goto_42

    :catchall_29
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doAction failed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->isPushStopped(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ThirdPushManager"

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jpush/android/api/JThirdPlatFormInterface;

    :try_start_21
    invoke-virtual {v2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->register(Landroid/content/Context;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_15

    :catchall_25
    move-exception v2

    const-string v3, "Third push register failed#"

    invoke-static {v1, v3, v2}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_2c
    const-string p1, "push has close"

    invoke-static {v1, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->resumePush(Landroid/content/Context;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->stopPush(Landroid/content/Context;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public e(Landroid/content/Context;)B
    .registers 9

    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v3, v3

    invoke-static {v3}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object v4

    invoke-static {p1, v4}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4b

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    if-eqz v3, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    or-int/lit8 v1, v1, 0x20

    goto :goto_5f

    :cond_4b
    invoke-virtual {v2, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_55

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    :cond_55
    if-eqz v3, :cond_5d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5d
    or-int/lit16 v1, v1, 0x80

    :goto_5f
    int-to-byte v1, v1

    goto :goto_a

    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRomType,romType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThirdPushManager"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/cache/Sp;->get(Landroid/content/Context;Lcn/jpush/android/cache/Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_4

    sget-object p1, Lcn/jpush/android/a;->a:Landroid/content/Context;

    :cond_4
    const-string v0, "ThirdPushManager"

    if-nez p1, :cond_e

    const-string p1, "context was null"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;)V

    const-string v1, "uploadRegIdAfterLogin"

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/i/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/JThirdPlatFormInterface;

    invoke-virtual {v1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->needSendToMainProcess()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0, p1, v1}, Lcn/jpush/android/i/c;->b(Landroid/content/Context;Lcn/jpush/android/api/JThirdPlatFormInterface;)V

    goto :goto_1c

    :cond_32
    invoke-direct {p0, p1, v1}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;Lcn/jpush/android/api/JThirdPlatFormInterface;)V

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getToken(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_1c

    :cond_40
    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, p1, v3, v2}, Lcn/jpush/android/i/c;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, p1}, Lcn/jpush/android/api/JThirdPlatFormInterface;->getRomType(Landroid/content/Context;)B

    move-result v1

    invoke-direct {p0, p1, v1, v2}, Lcn/jpush/android/i/c;->b(Landroid/content/Context;BLjava/lang/String;)V

    goto :goto_1c

    :cond_56
    return-void
.end method
