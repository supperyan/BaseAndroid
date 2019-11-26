.class public Lcn/jpush/android/i/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/i/a$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcn/jpush/android/i/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcn/jpush/android/i/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    return-void
.end method

.method private a(J)Lcn/jpush/android/i/a$a;
    .registers 8

    iget-object v0, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jpush/android/i/a$a;

    iget-wide v2, v2, Lcn/jpush/android/i/a$a;->c:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/jpush/android/i/a$a;

    return-object p1

    :cond_29
    const-string p1, "PluginPlatformRidUpdate"

    const-string p2, "can not find uploadBean by rid"

    invoke-static {p1, p2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcn/jpush/android/i/a;
    .registers 2

    sget-object v0, Lcn/jpush/android/i/a;->b:Lcn/jpush/android/i/a;

    if-nez v0, :cond_17

    const-class v0, Lcn/jpush/android/i/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jpush/android/i/a;->b:Lcn/jpush/android/i/a;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/i/a;

    invoke-direct {v1}, Lcn/jpush/android/i/a;-><init>()V

    sput-object v1, Lcn/jpush/android/i/a;->b:Lcn/jpush/android/i/a;

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
    sget-object v0, Lcn/jpush/android/i/a;->b:Lcn/jpush/android/i/a;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcn/jpush/android/i/a$a;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v1, "JPUSH"

    const/16 v2, 0x1b

    const/4 v3, 0x1

    iget-wide v4, p2, Lcn/jpush/android/i/a$a;->c:J

    const-wide/16 v6, 0x2710

    iget-object v8, p2, Lcn/jpush/android/i/a$a;->d:[B

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcn/jpush/android/helper/JCoreHelper;->sendRequest(Landroid/content/Context;Ljava/lang/String;IIJJ[B)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;BLjava/lang/String;)V
    .registers 12

    invoke-static {}, Lcn/jpush/android/helper/k;->a()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUpdateRidInfo regid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",rid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",whichPlatform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginPlatformRidUpdate"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lcn/jpush/android/g/b;->a(Ljava/lang/String;B)[B

    move-result-object v6

    new-instance v7, Lcn/jpush/android/i/a$a;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcn/jpush/android/i/a$a;-><init>(Lcn/jpush/android/i/a;BLjava/lang/String;J[B)V

    iget-object p3, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p3, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v7}, Lcn/jpush/android/i/a;->a(Landroid/content/Context;Lcn/jpush/android/i/a$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .registers 7

    invoke-direct {p0, p2, p3}, Lcn/jpush/android/i/a;->a(J)Lcn/jpush/android/i/a$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateRidSuccess rid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ,pluginPlatformRegIDBean:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PluginPlatformRidUpdate"

    invoke-static {p3, p2}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_64

    const/4 p2, 0x1

    new-array p3, p2, [Lcn/jpush/android/cache/Key;

    iget-byte v1, v0, Lcn/jpush/android/i/a$a;->a:B

    invoke-static {v1}, Lcn/jpush/android/cache/Key;->ThirdPush_RegID(B)Lcn/jpush/android/cache/Key;

    move-result-object v1

    iget-object v2, v0, Lcn/jpush/android/i/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-static {p1, p3}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    new-array p3, p2, [Lcn/jpush/android/cache/Key;

    iget-byte v1, v0, Lcn/jpush/android/i/a$a;->a:B

    invoke-static {v1}, Lcn/jpush/android/cache/Key;->ThirdPush_RegUpload(B)Lcn/jpush/android/cache/Key;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcn/jpush/android/cache/Key;->set(Ljava/lang/Object;)Lcn/jpush/android/cache/Key;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lcn/jpush/android/cache/Sp;->set(Landroid/content/Context;[Lcn/jpush/android/cache/Key;)V

    iget-object p2, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    iget-byte p3, v0, Lcn/jpush/android/i/a$a;->a:B

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/jpush/android/i/c;->a()Lcn/jpush/android/i/c;

    move-result-object p2

    iget-byte p3, v0, Lcn/jpush/android/i/a$a;->a:B

    iget-object v0, v0, Lcn/jpush/android/i/a$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_64
    return-void
.end method

.method public a(Landroid/content/Context;JI)V
    .registers 8

    invoke-direct {p0, p2, p3}, Lcn/jpush/android/i/a;->a(J)Lcn/jpush/android/i/a$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateRidFailed rid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",errorCode:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,pluginPlatformRegIDBean:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PluginPlatformRidUpdate"

    invoke-static {p3, p2}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4b

    iget p2, v0, Lcn/jpush/android/i/a$a;->e:I

    const/4 p4, 0x3

    if-ge p2, p4, :cond_3b

    iget p2, v0, Lcn/jpush/android/i/a$a;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcn/jpush/android/i/a$a;->e:I

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/i/a;->a(Landroid/content/Context;Lcn/jpush/android/i/a$a;)V

    goto :goto_4b

    :cond_3b
    const-string p1, "updateRegId failed"

    invoke-static {p3, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    iget-byte p2, v0, Lcn/jpush/android/i/a$a;->a:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    :goto_4b
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "platform"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcn/jpush/android/a;->a()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string p1, "PluginPlatformRidUpdate"

    const-string p2, "tcp disconnected"

    invoke-static {p1, p2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_59

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    const-string v1, "token"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/i/a$a;

    iget-object v1, v1, Lcn/jpush/android/i/a$a;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string p1, "PluginPlatformRidUpdate"

    const-string p2, "same regid request, drop it"

    invoke-static {p1, p2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_59

    monitor-exit p0

    return-void

    :cond_4c
    :try_start_4c
    invoke-virtual {p0, p1, v0, p2}, Lcn/jpush/android/i/a;->a(Landroid/content/Context;BLjava/lang/String;)V

    goto :goto_57

    :cond_50
    const-string p1, "PluginPlatformRidUpdate"

    const-string p2, "unknown plugin platform type"

    invoke-static {p1, p2}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_59

    :goto_57
    monitor-exit p0

    return-void

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/content/Context;J)V
    .registers 7

    invoke-direct {p0, p2, p3}, Lcn/jpush/android/i/a;->a(J)Lcn/jpush/android/i/a$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateRidTimeout rid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ,pluginPlatformRegIDBean:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PluginPlatformRidUpdate"

    invoke-static {p3, p2}, Lcn/jpush/android/helper/Logger;->ii(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_43

    iget p2, v0, Lcn/jpush/android/i/a$a;->e:I

    const/4 v1, 0x3

    if-ge p2, v1, :cond_33

    iget p2, v0, Lcn/jpush/android/i/a$a;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcn/jpush/android/i/a$a;->e:I

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/i/a;->a(Landroid/content/Context;Lcn/jpush/android/i/a$a;)V

    goto :goto_43

    :cond_33
    const-string p1, "updateRegId failed by timeout"

    invoke-static {p3, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jpush/android/i/a;->a:Ljava/util/Map;

    iget-byte p2, v0, Lcn/jpush/android/i/a$a;->a:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    :goto_43
    return-void
.end method
