.class public final Lcn/jiguang/ay/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile s:Lcn/jiguang/ay/a;

.field private static final t:Ljava/lang/Object;

.field private static u:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field private transient r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/ay/a;->t:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jiguang/ay/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcn/jiguang/ay/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_bf

    if-nez p1, :cond_17

    goto/16 :goto_bf

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->c:Ljava/lang/String;

    const-string v0, "gsm.version.baseband"

    const-string v2, "baseband"

    invoke-static {p1, v0, v2}, Lcn/jiguang/f/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->k:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->l:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/ay/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->n:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/ay/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/am/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->o:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/am/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/f/a;->e(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcn/jiguang/ay/a;->g:I

    invoke-static {p1}, Lcn/jiguang/f/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->h:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/f/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->i:Ljava/lang/String;

    const-string v0, "won\'t get serial"

    invoke-static {p1, v1, v0}, Lcn/jiguang/internal/JConstants;->isAndroidQ(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, " "

    goto :goto_a0

    :cond_9e
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_a0
    iput-object v0, p0, Lcn/jiguang/ay/a;->j:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0}, Lcn/jiguang/f/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/ay/a;->p:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "get_imei"

    invoke-static {p1, v1, v0}, Lcn/jiguang/at/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b9

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/jiguang/ay/a;->q:Ljava/lang/String;

    :cond_b9
    iget-object p1, p0, Lcn/jiguang/ay/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jiguang/ay/a;
    .registers 3

    sget-object v0, Lcn/jiguang/ay/a;->s:Lcn/jiguang/ay/a;

    if-nez v0, :cond_17

    sget-object v0, Lcn/jiguang/ay/a;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/jiguang/ay/a;->s:Lcn/jiguang/ay/a;

    if-nez v1, :cond_12

    new-instance v1, Lcn/jiguang/ay/a;

    invoke-direct {v1, p0}, Lcn/jiguang/ay/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/jiguang/ay/a;->s:Lcn/jiguang/ay/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcn/jiguang/ay/a;->s:Lcn/jiguang/ay/a;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcn/jiguang/ay/a;->u:Ljava/lang/String;

    if-nez v0, :cond_29

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    sput-object p0, Lcn/jiguang/ay/a;->u:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_22

    goto :goto_29

    :catchall_22
    const-string p0, "DeviceInfo"

    const-string v0, "NO versionName defined in manifest."

    invoke-static {p0, v0}, Lcn/jiguang/an/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_29
    sget-object p0, Lcn/jiguang/ay/a;->u:Ljava/lang/String;

    if-nez p0, :cond_2f

    const-string p0, ""

    :cond_2f
    return-object p0
.end method
