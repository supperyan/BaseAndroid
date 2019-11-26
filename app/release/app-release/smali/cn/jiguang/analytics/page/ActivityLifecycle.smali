.class public Lcn/jiguang/analytics/page/ActivityLifecycle;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityLifecycle"

.field private static activityTaskCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onActivityCreated:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityLifecycle"

    invoke-static {v0, p2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    sget-object p2, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz p2, :cond_26

    sget-object p2, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    const-string v1, "onCreate"

    invoke-interface {p2, p1, v1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchStatus(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    :cond_26
    return-void

    :catchall_27
    const-string p1, "onActivityCreated failed"

    invoke-static {v0, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    const-string v0, "ActivityLifecycle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityPaused:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_24

    sget-object v0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    invoke-interface {v0, p1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchPause(Landroid/content/Context;)V

    :cond_24
    sget-boolean v0, Lcn/jiguang/internal/JConstants;->isInstrumentationHookFailed:Z

    if-nez v0, :cond_2f

    invoke-static {}, Lcn/jiguang/analytics/page/PushSA;->getInstance()Lcn/jiguang/analytics/page/PushSA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/page/PushSA;->onPause(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_2f

    :catchall_2f
    :cond_2f
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    const-string v0, "ActivityLifecycle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResumed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_24

    sget-object v0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    invoke-interface {v0, p1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchResume(Landroid/content/Context;)V

    :cond_24
    sget-boolean v0, Lcn/jiguang/internal/JConstants;->isInstrumentationHookFailed:Z

    if-nez v0, :cond_2f

    invoke-static {}, Lcn/jiguang/analytics/page/PushSA;->getInstance()Lcn/jiguang/analytics/page/PushSA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/page/PushSA;->onResume(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_2f

    :catchall_2f
    :cond_2f
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 11

    const-string v0, "ActivityLifecycle"

    if-eqz p1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityStarted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :try_start_1d
    sget v1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    const-string v1, "isForeground"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "JCore"

    const/16 v5, 0x42

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static/range {v3 .. v8}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    sget-object v0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_4a

    sget-object v0, Lcn/jiguang/internal/JConstants;->jAnalyticsAction:Lcn/jiguang/api/JAnalyticsAction;

    const-string v1, "onStart"

    invoke-interface {v0, p1, v1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4a
    sget p1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I

    add-int/2addr p1, v2

    sput p1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_4f

    :catchall_4f
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 11

    const-string v0, "ActivityLifecycle"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityStopped:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_25

    sget v1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I

    sub-int/2addr v1, v2

    sput v1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I

    :cond_25
    sget v1, Lcn/jiguang/analytics/page/ActivityLifecycle;->activityTaskCount:I

    if-nez v1, :cond_44

    const-string v1, "is not Foreground"

    invoke-static {v0, v1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/internal/JConstants;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "JCore"

    const/16 v5, 0x42

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v2, [Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, p1

    invoke-static/range {v3 .. v8}, Lcn/jiguang/api/JCoreManager;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_44

    :catchall_44
    :cond_44
    return-void
.end method
