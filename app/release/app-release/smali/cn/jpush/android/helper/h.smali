.class public Lcn/jpush/android/helper/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/helper/h$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static d:Lcn/jpush/android/helper/h;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcn/jpush/android/helper/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/helper/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/helper/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static a(J)I
    .registers 9

    sget-object v0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_14

    :cond_a
    sget-object v0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return v1

    :cond_14
    sget-object v0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p0, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2f

    sget-object p0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 p0, 0x2

    return p0

    :cond_2f
    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_43

    :goto_35
    sget-object v0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lt v0, v2, :cond_a

    sget-object v0, Lcn/jpush/android/helper/h;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_35

    :cond_43
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized a()Lcn/jpush/android/helper/h;
    .registers 3

    const-class v0, Lcn/jpush/android/helper/h;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/jpush/android/helper/h;->d:Lcn/jpush/android/helper/h;

    if-nez v1, :cond_1a

    sget-object v1, Lcn/jpush/android/helper/h;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    :try_start_a
    sget-object v2, Lcn/jpush/android/helper/h;->d:Lcn/jpush/android/helper/h;

    if-nez v2, :cond_15

    new-instance v2, Lcn/jpush/android/helper/h;

    invoke-direct {v2}, Lcn/jpush/android/helper/h;-><init>()V

    sput-object v2, Lcn/jpush/android/helper/h;->d:Lcn/jpush/android/helper/h;

    :cond_15
    monitor-exit v1

    goto :goto_1a

    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    :try_start_19
    throw v2

    :cond_1a
    :goto_1a
    sget-object v1, Lcn/jpush/android/helper/h;->d:Lcn/jpush/android/helper/h;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;
    .registers 6

    const/4 p1, 0x0

    if-eqz p2, :cond_41

    :try_start_3
    const-string v0, "sequence"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "code"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mobile"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcn/jpush/android/api/JPushMessage;

    invoke-direct {v2}, Lcn/jpush/android/api/JPushMessage;-><init>()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2a

    :try_start_1b
    invoke-virtual {v2, v0}, Lcn/jpush/android/api/JPushMessage;->setSequence(I)V

    invoke-virtual {v2, v1}, Lcn/jpush/android/api/JPushMessage;->setErrorCode(I)V

    invoke-virtual {v2, p2}, Lcn/jpush/android/api/JPushMessage;->setMobileNumber(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_26

    move-object p1, v2

    goto :goto_41

    :catchall_26
    move-exception p1

    move-object p2, p1

    move-object p1, v2

    goto :goto_2b

    :catchall_2a
    move-exception p2

    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parese mobile number response to JPushMessage failed, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MobileNumberHelper"

    invoke-static {v0, p2}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-object p1
.end method

.method public a(Landroid/content/Context;IILjava/lang/String;)V
    .registers 9

    const-string v0, "MobileNumberHelper"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action - onResult,sequence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mobileNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jpush/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    new-instance v2, Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobile_result"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sequence"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "code"

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "mobile"

    invoke-virtual {v2, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_58

    :cond_53
    const-string p2, "not found messageReceiver"

    invoke-static {v0, p2}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5b
    .catchall {:try_start_2 .. :try_end_5b} :catchall_5c

    goto :goto_71

    :catchall_5c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onResult error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action - setMobileNubmer, sequence:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mobileNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileNumberHelper"

    invoke-static {v1, v0}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sequence"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "mobile"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "JPUSH"

    const-string p3, "set_mobile"

    invoke-static {p1, p2, p3, v0}, Lcn/jpush/android/helper/JCoreHelper;->runActionWithService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Context;JI)V
    .registers 6

    iget-object v0, p0, Lcn/jpush/android/helper/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcn/jpush/android/helper/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/jpush/android/helper/h$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mobileBean:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MobileNumberHelper"

    invoke-static {v0, p3}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_49

    if-nez p4, :cond_34

    iget-object p3, p2, Lcn/jpush/android/helper/h$a;->b:Ljava/lang/String;

    invoke-static {p1, p3}, Lcn/jpush/android/cache/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_41

    :cond_34
    const/16 p3, 0xb

    if-ne p4, p3, :cond_3b

    sget p4, Lcn/jpush/android/api/JPushInterface$ErrorCode;->y:I

    goto :goto_41

    :cond_3b
    const/16 p3, 0xa

    if-ne p4, p3, :cond_41

    sget p4, Lcn/jpush/android/api/JPushInterface$ErrorCode;->x:I

    :cond_41
    :goto_41
    iget p3, p2, Lcn/jpush/android/helper/h$a;->a:I

    iget-object p2, p2, Lcn/jpush/android/helper/h$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p4, p2}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_4e

    :cond_49
    const-string p1, "#unexcepted, do not find mobile number request cache"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 16

    const-string v0, "MobileNumberHelper"

    if-nez p2, :cond_a

    const-string p1, "[setMobileNum] bundle is bull"

    invoke-static {v0, p1}, Lcn/jpush/android/helper/Logger;->ww(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const-string v2, "sequence"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mobile"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcn/jpush/android/cache/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:setMobileNum sequence:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mobileNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",lastMobileNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_52

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v2, "already set this mobile number"

    invoke-static {v0, v2}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->a:I

    invoke-virtual {p0, p1, v1, v0, p2}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;IILjava/lang/String;)V

    return-void

    :cond_52
    invoke-static {p1}, Lcn/jpush/android/cache/a;->b(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->m:I

    invoke-virtual {p0, p1, v1, v0, p2}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;IILjava/lang/String;)V

    return-void

    :cond_5f
    if-eqz v2, :cond_65

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcn/jpush/android/cache/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/jpush/android/helper/h;->a(J)I

    move-result v2

    if-eqz v2, :cond_84

    if-ne v2, v4, :cond_74

    const-string v3, "set mobile number too soon,over 3 times in 10s"

    goto :goto_76

    :cond_74
    const-string v3, "set mobile number failed,time shaft error\uff0cplease try again"

    :goto_76
    invoke-static {v0, v3}, Lcn/jpush/android/helper/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v4, :cond_7e

    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->l:I

    goto :goto_80

    :cond_7e
    sget v0, Lcn/jpush/android/api/JPushInterface$ErrorCode;->n:I

    :goto_80
    invoke-virtual {p0, p1, v1, v0, p2}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;IILjava/lang/String;)V

    return-void

    :cond_84
    invoke-static {p2}, Lcn/jpush/android/j/d;->c(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mobile number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", will not set mobile number this time."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/helper/Logger;->dd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2, p2}, Lcn/jpush/android/helper/h;->a(Landroid/content/Context;IILjava/lang/String;)V

    return-void

    :cond_a7
    invoke-static {p2}, Lcn/jpush/android/g/b;->a(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {}, Lcn/jpush/android/helper/k;->a()J

    move-result-wide v8

    iget-object v0, p0, Lcn/jpush/android/helper/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcn/jpush/android/helper/h$a;

    invoke-direct {v3, p0, v1, p2}, Lcn/jpush/android/helper/h$a;-><init>(Lcn/jpush/android/helper/h;ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x1a

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const-string v5, "JPUSH"

    move-object v4, p1

    invoke-static/range {v4 .. v12}, Lcn/jpush/android/helper/JCoreHelper;->sendRequest(Landroid/content/Context;Ljava/lang/String;IIJJ[B)V

    return-void
.end method
