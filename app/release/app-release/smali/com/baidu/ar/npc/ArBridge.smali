.class public Lcom/baidu/ar/npc/ArBridge;
.super Ljava/lang/Object;
.source "ArBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/ar/npc/ArBridge$a;,
        Lcom/baidu/ar/npc/ArBridge$b;,
        Lcom/baidu/ar/npc/ArBridge$f;,
        Lcom/baidu/ar/npc/ArBridge$d;,
        Lcom/baidu/ar/npc/ArBridge$c;,
        Lcom/baidu/ar/npc/ArBridge$e;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/ar/npc/ArBridge;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/ar/npc/BaiduArView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/ar/npc/ArBridge$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Lcom/baidu/ar/npc/ArBridge$f;

.field private h:Landroid/view/OrientationEventListener;

.field private i:I

.field private j:Lcom/baidu/ar/npc/ArBridge$e;

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/baidu/ar/npc/ArBridge;->f:J

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/baidu/ar/npc/ArBridge;->i:I

    .line 34
    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->e:Lcom/baidu/ar/npc/ArBridge$e;

    iput-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->j:Lcom/baidu/ar/npc/ArBridge$e;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/baidu/ar/npc/ArBridge;->k:I

    .line 38
    iput-boolean v0, p0, Lcom/baidu/ar/npc/ArBridge;->l:Z

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "msg_callback_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->c:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/ar/npc/ArBridge;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/baidu/ar/npc/a;

    invoke-direct {v2, p0}, Lcom/baidu/ar/npc/a;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->d:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/baidu/ar/npc/ArBridge;I)I
    .registers 2
    .parameter
    .parameter

    .line 21
    iput p1, p0, Lcom/baidu/ar/npc/ArBridge;->k:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/ar/npc/ArBridge;)Landroid/os/Handler;
    .registers 1
    .parameter

    .line 21
    iget-object p0, p0, Lcom/baidu/ar/npc/ArBridge;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$e;)Lcom/baidu/ar/npc/ArBridge$e;
    .registers 2
    .parameter
    .parameter

    .line 21
    iput-object p1, p0, Lcom/baidu/ar/npc/ArBridge;->j:Lcom/baidu/ar/npc/ArBridge$e;

    return-object p1
.end method

.method private a(IILjava/util/HashMap;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 128
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ar/npc/BaiduArView;

    new-instance v7, Lcom/baidu/ar/npc/q;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/baidu/ar/npc/q;-><init>(Lcom/baidu/ar/npc/ArBridge;IILjava/util/HashMap;I)V

    invoke-virtual {v0, v7}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method

.method private a(ILjava/util/HashMap;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 122
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/baidu/ar/npc/ArBridge;->a(IILjava/util/HashMap;I)V

    return-void
.end method

.method private a(Lcom/baidu/ar/npc/ArBridge$b;)V
    .registers 7
    .parameter

    .line 211
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/ArBridge$a;

    .line 212
    iget v2, v1, Lcom/baidu/ar/npc/ArBridge$a;->a:I

    if-eqz v2, :cond_1c

    iget v2, p1, Lcom/baidu/ar/npc/ArBridge$b;->a:I

    iget v3, v1, Lcom/baidu/ar/npc/ArBridge$a;->a:I

    if-ne v2, v3, :cond_6

    :cond_1c
    const/4 v2, -0x1

    .line 213
    iget v3, v1, Lcom/baidu/ar/npc/ArBridge$a;->b:I

    if-eq v2, v3, :cond_27

    iget v2, p1, Lcom/baidu/ar/npc/ArBridge$b;->d:I

    iget v3, v1, Lcom/baidu/ar/npc/ArBridge$a;->b:I

    if-ne v2, v3, :cond_6

    .line 214
    :cond_27
    iget-object v1, v1, Lcom/baidu/ar/npc/ArBridge$a;->c:Lcom/baidu/ar/npc/ArBridge$d;

    iget v2, p1, Lcom/baidu/ar/npc/ArBridge$b;->a:I

    iget v3, p1, Lcom/baidu/ar/npc/ArBridge$b;->b:I

    iget-object v4, p1, Lcom/baidu/ar/npc/ArBridge$b;->c:Ljava/util/HashMap;

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/ar/npc/ArBridge$d;->a(IILjava/util/HashMap;)V

    goto :goto_6

    :cond_33
    return-void
.end method

.method static synthetic a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$b;)V
    .registers 2
    .parameter
    .parameter

    .line 21
    invoke-direct {p0, p1}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge$b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/ar/npc/ArBridge;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 21
    iput-boolean p1, p0, Lcom/baidu/ar/npc/ArBridge;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/ar/npc/ArBridge;I)I
    .registers 2
    .parameter
    .parameter

    .line 21
    iput p1, p0, Lcom/baidu/ar/npc/ArBridge;->i:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/ar/npc/ArBridge;)Ljava/util/List;
    .registers 1
    .parameter

    .line 21
    iget-object p0, p0, Lcom/baidu/ar/npc/ArBridge;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/ar/npc/ArBridge;)I
    .registers 1
    .parameter

    .line 21
    iget p0, p0, Lcom/baidu/ar/npc/ArBridge;->i:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/ar/npc/ArBridge;)Lcom/baidu/ar/npc/ArBridge$e;
    .registers 1
    .parameter

    .line 21
    iget-object p0, p0, Lcom/baidu/ar/npc/ArBridge;->j:Lcom/baidu/ar/npc/ArBridge$e;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/ar/npc/ArBridge;
    .registers 2

    const-class v0, Lcom/baidu/ar/npc/ArBridge;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/baidu/ar/npc/ArBridge;->a:Lcom/baidu/ar/npc/ArBridge;

    if-nez v1, :cond_e

    .line 62
    new-instance v1, Lcom/baidu/ar/npc/ArBridge;

    invoke-direct {v1}, Lcom/baidu/ar/npc/ArBridge;-><init>()V

    sput-object v1, Lcom/baidu/ar/npc/ArBridge;->a:Lcom/baidu/ar/npc/ArBridge;

    .line 64
    :cond_e
    sget-object v1, Lcom/baidu/ar/npc/ArBridge;->a:Lcom/baidu/ar/npc/ArBridge;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static native libraryHasLoaded()Z
.end method


# virtual methods
.method a()V
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->h:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_7

    .line 526
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 528
    :cond_7
    new-instance v0, Lcom/baidu/ar/npc/j;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/j;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(IIFFFFIFFFFJ)V
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 587
    new-instance v15, Lcom/baidu/ar/npc/o;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    invoke-direct/range {v0 .. v14}, Lcom/baidu/ar/npc/o;-><init>(Lcom/baidu/ar/npc/ArBridge;IIFFFFIFFFFJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method b()V
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->h:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 538
    new-instance v0, Lcom/baidu/ar/npc/k;

    iget-object v1, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/ar/npc/k;-><init>(Lcom/baidu/ar/npc/ArBridge;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->h:Landroid/view/OrientationEventListener;

    .line 561
    :cond_20
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->h:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 562
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->h:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 564
    :cond_2f
    new-instance v0, Lcom/baidu/ar/npc/n;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/n;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    .line 571
    iget-boolean v0, p0, Lcom/baidu/ar/npc/ArBridge;->l:Z

    if-eqz v0, :cond_41

    .line 572
    invoke-virtual {p0}, Lcom/baidu/ar/npc/ArBridge;->onResumeByUser()V

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/baidu/ar/npc/ArBridge;->l:Z

    :cond_41
    return-void
.end method

.method c()V
    .registers 1

    .line 578
    invoke-virtual {p0}, Lcom/baidu/ar/npc/ArBridge;->nativeUpdate()V

    return-void
.end method

.method public clearScreen()V
    .registers 2

    .line 468
    new-instance v0, Lcom/baidu/ar/npc/g;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/g;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createCase(Ljava/lang/String;Ljava/util/HashMap;II)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)I"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 361
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ar/npc/BaiduArView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    .line 363
    :cond_15
    invoke-virtual {p0}, Lcom/baidu/ar/npc/ArBridge;->getCaseId()I

    move-result v0

    .line 364
    new-instance v1, Lcom/baidu/ar/npc/t;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/baidu/ar/npc/t;-><init>(Lcom/baidu/ar/npc/ArBridge;Ljava/lang/String;ILjava/util/HashMap;II)V

    invoke-virtual {p0, v1}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public destroyCase()V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 435
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ar/npc/BaiduArView;

    iget-boolean v0, v0, Lcom/baidu/ar/npc/BaiduArView;->mUpdating:Z

    if-eqz v0, :cond_22

    .line 436
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ar/npc/BaiduArView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    return-void

    .line 440
    :cond_22
    invoke-virtual {p0}, Lcom/baidu/ar/npc/ArBridge;->nativeDestroyCase()V

    return-void
.end method

.method public executeOnGLThread(Ljava/lang/Runnable;)V
    .registers 7
    .parameter

    .line 345
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 346
    iget-wide v0, p0, Lcom/baidu/ar/npc/ArBridge;->f:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    .line 348
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_27

    .line 350
    :cond_1c
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ar/npc/BaiduArView;

    invoke-virtual {v0, p1}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method native getCaseId()I
.end method

.method public getFps()I
    .registers 2

    .line 510
    new-instance v0, Lcom/baidu/ar/npc/i;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/i;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    .line 517
    iget v0, p0, Lcom/baidu/ar/npc/ArBridge;->k:I

    return v0
.end method

.method native getMessageID()I
.end method

.method native nativeClearScreen()V
.end method

.method native nativeCreateCase(Ljava/lang/String;ILjava/util/HashMap;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation
.end method

.method native nativeDestroyCase()V
.end method

.method native nativeGetFps()I
.end method

.method native nativeOnPause()V
.end method

.method native nativeOnPauseByUser()V
.end method

.method native nativeOnResume()V
.end method

.method native nativeOnResumeByUser()V
.end method

.method native nativeReset()V
.end method

.method native nativeSetCameraDefaultPos()V
.end method

.method native nativeSetEuler(FFFLjava/lang/String;)V
.end method

.method native nativeSetFrustum(FF)V
.end method

.method native nativeSetSize(II)V
.end method

.method native nativeSetTargetInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeUpdate()V
.end method

.method native nativeUpdateRMatrix([F)V
.end method

.method native nativeUpdateRTMatrix([F)V
.end method

.method native nativeUpdateSLAMMatrix([F)V
.end method

.method public onPauseByUser()V
    .registers 2

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/baidu/ar/npc/ArBridge;->l:Z

    .line 459
    new-instance v0, Lcom/baidu/ar/npc/f;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/f;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResumeByUser()V
    .registers 2

    .line 444
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_a
    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lcom/baidu/ar/npc/ArBridge;->l:Z

    .line 448
    :cond_d
    new-instance v0, Lcom/baidu/ar/npc/e;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/e;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method native onTouchEventNative(IIFFFFIFFFFJI)V
.end method

.method public declared-synchronized registerMessageHandler(ILcom/baidu/ar/npc/ArBridge$d;)V
    .registers 5
    .parameter
    .parameter

    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/ar/npc/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/ar/npc/r;-><init>(Lcom/baidu/ar/npc/ArBridge;ILcom/baidu/ar/npc/ArBridge$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 170
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageHandeler(Lcom/baidu/ar/npc/ArBridge$d;)V
    .registers 4
    .parameter

    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/ar/npc/s;

    invoke-direct {v1, p0, p1}, Lcom/baidu/ar/npc/s;-><init>(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 186
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .registers 2

    .line 477
    new-instance v0, Lcom/baidu/ar/npc/h;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/h;-><init>(Lcom/baidu/ar/npc/ArBridge;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLuaScriptToEngine(Ljava/lang/String;)V
    .registers 4
    .parameter

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "script"

    .line 146
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x7d1

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/baidu/ar/npc/ArBridge;->sendMessage(ILjava/util/HashMap;)V

    :cond_15
    return-void
.end method

.method public sendMessage(ILjava/util/HashMap;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/ar/npc/ArBridge;->a(ILjava/util/HashMap;I)V

    return-void
.end method

.method native sendMessageToEngine(IILjava/util/HashMap;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation
.end method

.method public sendResponseMessage(ILjava/util/HashMap;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/ar/npc/ArBridge;->a(ILjava/util/HashMap;I)V

    return-void
.end method

.method public setArView(Lcom/baidu/ar/npc/BaiduArView;)V
    .registers 3
    .parameter

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCameraDefaultPos()V
    .registers 1

    .line 521
    invoke-virtual {p0}, Lcom/baidu/ar/npc/ArBridge;->nativeSetCameraDefaultPos()V

    return-void
.end method

.method public setEuler(FFFLjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .line 392
    new-instance v6, Lcom/baidu/ar/npc/b;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/b;-><init>(Lcom/baidu/ar/npc/ArBridge;FFFLjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFrustum(FF)V
    .registers 4
    .parameter
    .parameter

    .line 401
    new-instance v0, Lcom/baidu/ar/npc/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/ar/npc/c;-><init>(Lcom/baidu/ar/npc/ArBridge;FF)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method native setGLJniEnv()V
.end method

.method public setGLThreadID(J)V
    .registers 3
    .parameter

    .line 341
    iput-wide p1, p0, Lcom/baidu/ar/npc/ArBridge;->f:J

    return-void
.end method

.method public setModelVirtualColor(IZ)V
    .registers 5
    .parameter
    .parameter

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "model_color"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1a

    const/4 p1, 0x1

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "model_type"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const/16 p1, 0x7d2

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/baidu/ar/npc/ArBridge;->sendMessage(ILjava/util/HashMap;)V

    return-void
.end method

.method public setSize(II)V
    .registers 4
    .parameter
    .parameter

    .line 383
    new-instance v0, Lcom/baidu/ar/npc/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/ar/npc/v;-><init>(Lcom/baidu/ar/npc/ArBridge;II)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTargetInfo(Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 374
    new-instance v0, Lcom/baidu/ar/npc/u;

    invoke-direct {v0, p0, p1}, Lcom/baidu/ar/npc/u;-><init>(Lcom/baidu/ar/npc/ArBridge;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized setVideoUpdateCallback(Lcom/baidu/ar/npc/ArBridge$f;)V
    .registers 2
    .parameter

    monitor-enter p0

    .line 193
    :try_start_1
    iput-object p1, p0, Lcom/baidu/ar/npc/ArBridge;->g:Lcom/baidu/ar/npc/ArBridge$f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 194
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public surfaceViewCapture(Lcom/baidu/ar/npc/ArBridge$c;)V
    .registers 4
    .parameter

    .line 85
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ar/npc/BaiduArView;

    if-eqz v0, :cond_13

    .line 87
    new-instance v1, Lcom/baidu/ar/npc/l;

    invoke-direct {v1, p0, p1}, Lcom/baidu/ar/npc/l;-><init>(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$c;)V

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/BaiduArView;->takeSnapshot(Lcom/baidu/ar/npc/BaiduArView$a;)V

    goto :goto_1d

    .line 99
    :cond_13
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/ar/npc/p;

    invoke-direct {v1, p0, p1}, Lcom/baidu/ar/npc/p;-><init>(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1d
    return-void
.end method

.method public switchCase(Ljava/lang/String;Ljava/util/HashMap;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 419
    new-instance v6, Lcom/baidu/ar/npc/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/d;-><init>(Lcom/baidu/ar/npc/ArBridge;Ljava/lang/String;Ljava/util/HashMap;II)V

    invoke-virtual {p0, v6}, Lcom/baidu/ar/npc/ArBridge;->executeOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRMatrix([F)V
    .registers 2
    .parameter

    .line 506
    invoke-virtual {p0, p1}, Lcom/baidu/ar/npc/ArBridge;->nativeUpdateRMatrix([F)V

    return-void
.end method

.method public updateRTMatrix([F)V
    .registers 2
    .parameter

    .line 492
    invoke-virtual {p0, p1}, Lcom/baidu/ar/npc/ArBridge;->nativeUpdateRTMatrix([F)V

    return-void
.end method

.method public updateSLAMMatrix([F)V
    .registers 2
    .parameter

    .line 496
    invoke-virtual {p0, p1}, Lcom/baidu/ar/npc/ArBridge;->nativeUpdateSLAMMatrix([F)V

    return-void
.end method

.method public updateVideoFrame(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .line 199
    iget-object v0, p0, Lcom/baidu/ar/npc/ArBridge;->g:Lcom/baidu/ar/npc/ArBridge$f;

    if-eqz v0, :cond_7

    .line 200
    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/ar/npc/ArBridge$f;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-void
.end method
