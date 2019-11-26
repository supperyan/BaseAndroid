.class public Lcom/baidu/ar/npc/BaiduArView;
.super Landroid/opengl/GLSurfaceView;
.source "BaiduArView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/ar/npc/BaiduArView$a;,
        Lcom/baidu/ar/npc/BaiduArView$b;,
        Lcom/baidu/ar/npc/BaiduArView$c;,
        Lcom/baidu/ar/npc/BaiduArView$f;,
        Lcom/baidu/ar/npc/BaiduArView$g;,
        Lcom/baidu/ar/npc/BaiduArView$d;,
        Lcom/baidu/ar/npc/BaiduArView$e;,
        Lcom/baidu/ar/npc/BaiduArView$h;,
        Lcom/baidu/ar/npc/BaiduArView$i;
    }
.end annotation


# static fields
.field private static G:I

.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:I

.field private static final w:[D


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Lcom/baidu/ar/npc/BaiduArView$c;

.field private H:Landroid/view/GestureDetector$OnGestureListener;

.field a:Lcom/baidu/ar/npc/ArBridge$d;

.field private e:Landroid/view/GestureDetector;

.field private f:Lcom/baidu/ar/npc/BaiduArView$h;

.field private g:Z

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:J

.field public mNeedDestroy:Z

.field public mUpdating:Z

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:D

.field private u:Lcom/baidu/ar/npc/BaiduArView$f;

.field private v:Lcom/baidu/ar/npc/BaiduArView$g;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/baidu/ar/npc/BaiduArView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/baidu/ar/npc/BaiduArView;->c:Z

    const/16 v0, 0x1e

    .line 44
    sput v0, Lcom/baidu/ar/npc/BaiduArView;->d:I

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 70
    fill-array-data v0, :array_1c

    sput-object v0, Lcom/baidu/ar/npc/BaiduArView;->w:[D

    const/4 v0, 0x0

    .line 83
    sput v0, Lcom/baidu/ar/npc/BaiduArView;->G:I

    return-void

    nop

    :array_1c
    .array-data 0x8
        0x18t 0x2dt 0x44t 0x54t 0xfbt 0x21t 0xf9t 0x3ft
        0x18t 0x2dt 0x44t 0x54t 0xfbt 0x21t 0x9t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .line 89
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object p1, Lcom/baidu/ar/npc/BaiduArView$h;->a:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    const/high16 v1, -0x4080

    .line 49
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->i:F

    .line 50
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->j:F

    .line 51
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 52
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->l:F

    const-wide/16 v2, -0x1

    .line 53
    iput-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 54
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 55
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->o:F

    .line 56
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->p:F

    .line 57
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 58
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 59
    iput-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->s:J

    const-wide/high16 v0, -0x4010

    .line 60
    iput-wide v0, p0, Lcom/baidu/ar/npc/BaiduArView;->t:D

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    .line 74
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->y:Z

    .line 75
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    .line 76
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->A:Z

    .line 77
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    .line 78
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->C:Z

    .line 79
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->D:Z

    .line 80
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->E:Z

    .line 82
    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    .line 85
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    .line 86
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->mUpdating:Z

    .line 215
    new-instance v0, Lcom/baidu/ar/npc/z;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/z;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->a:Lcom/baidu/ar/npc/ArBridge$d;

    .line 726
    new-instance v0, Lcom/baidu/ar/npc/aa;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/aa;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->H:Landroid/view/GestureDetector$OnGestureListener;

    const/16 v0, 0x10

    .line 90
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/ar/npc/BaiduArView;->a(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object p1, Lcom/baidu/ar/npc/BaiduArView$h;->a:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    const/4 p2, -0x1

    .line 48
    iput p2, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    const/high16 v0, -0x4080

    .line 49
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->i:F

    .line 50
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->j:F

    .line 51
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 52
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->l:F

    const-wide/16 v1, -0x1

    .line 53
    iput-wide v1, p0, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 54
    iput p2, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 55
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->o:F

    .line 56
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->p:F

    .line 57
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 58
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 59
    iput-wide v1, p0, Lcom/baidu/ar/npc/BaiduArView;->s:J

    const-wide/high16 v0, -0x4010

    .line 60
    iput-wide v0, p0, Lcom/baidu/ar/npc/BaiduArView;->t:D

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    .line 74
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->y:Z

    .line 75
    iput-boolean v0, p0, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    .line 76
    iput-boolean v0, p0, Lcom/baidu/ar/npc/BaiduArView;->A:Z

    .line 77
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    .line 78
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->C:Z

    .line 79
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->D:Z

    .line 80
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->E:Z

    .line 82
    iput-object p2, p0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    .line 85
    iput-boolean v0, p0, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    .line 86
    iput-boolean v0, p0, Lcom/baidu/ar/npc/BaiduArView;->mUpdating:Z

    .line 215
    new-instance p2, Lcom/baidu/ar/npc/z;

    invoke-direct {p2, p0}, Lcom/baidu/ar/npc/z;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object p2, p0, Lcom/baidu/ar/npc/BaiduArView;->a:Lcom/baidu/ar/npc/ArBridge$d;

    .line 726
    new-instance p2, Lcom/baidu/ar/npc/aa;

    invoke-direct {p2, p0}, Lcom/baidu/ar/npc/aa;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object p2, p0, Lcom/baidu/ar/npc/BaiduArView;->H:Landroid/view/GestureDetector$OnGestureListener;

    const/16 p2, 0x10

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/ar/npc/BaiduArView;->a(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .line 100
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object p1, Lcom/baidu/ar/npc/BaiduArView$h;->a:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    const/high16 v1, -0x4080

    .line 49
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->i:F

    .line 50
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->j:F

    .line 51
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 52
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->l:F

    const-wide/16 v2, -0x1

    .line 53
    iput-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 54
    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 55
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->o:F

    .line 56
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->p:F

    .line 57
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 58
    iput v1, p0, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 59
    iput-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->s:J

    const-wide/high16 v0, -0x4010

    .line 60
    iput-wide v0, p0, Lcom/baidu/ar/npc/BaiduArView;->t:D

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    .line 74
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->y:Z

    .line 75
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    .line 76
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->A:Z

    .line 77
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    .line 78
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->C:Z

    .line 79
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->D:Z

    .line 80
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->E:Z

    .line 82
    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    .line 85
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    .line 86
    iput-boolean v1, p0, Lcom/baidu/ar/npc/BaiduArView;->mUpdating:Z

    .line 215
    new-instance p1, Lcom/baidu/ar/npc/z;

    invoke-direct {p1, p0}, Lcom/baidu/ar/npc/z;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView;->a:Lcom/baidu/ar/npc/ArBridge$d;

    .line 726
    new-instance p1, Lcom/baidu/ar/npc/aa;

    invoke-direct {p1, p0}, Lcom/baidu/ar/npc/aa;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView;->H:Landroid/view/GestureDetector$OnGestureListener;

    .line 101
    invoke-direct {p0, p2, p3, p4}, Lcom/baidu/ar/npc/BaiduArView;->a(ZII)V

    return-void
.end method

.method private a(FFFF)D
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    sub-float/2addr p3, p1

    mul-float p3, p3, p3

    sub-float/2addr p4, p2

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    float-to-double p1, p3

    .line 338
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private a(FFFFFFFF)D
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    sub-float/2addr p4, p2

    sub-float/2addr p3, p1

    div-float p1, p4, p3

    sub-float/2addr p8, p6

    sub-float/2addr p7, p5

    div-float p2, p8, p7

    cmpl-float p1, p1, p2

    if-nez p1, :cond_f

    const-wide/high16 p1, -0x4010

    goto :goto_6e

    :cond_f
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 366
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p5, 0x0

    aput-object p2, p1, p5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p6, 0x1

    aput-object p2, p1, p6

    const/4 p2, 0x2

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "vx1 %1.3f vy1 %1.3f vx2 %1.3f vy2 %1.3f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "touchopt"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float p1, p3, p7

    mul-float v0, p4, p8

    add-float/2addr p1, v0

    float-to-double v0, p1

    mul-float p3, p3, p3

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    float-to-double p3, p3

    .line 368
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    mul-float p7, p7, p7

    mul-float p8, p8, p8

    add-float/2addr p7, p8

    float-to-double p7, p7

    invoke-static {p7, p8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p7

    mul-double p3, p3, p7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p3

    new-array p1, p6, [Ljava/lang/Object;

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, p1, p5

    const-string p3, "cosAngle is %1.3f"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    :goto_6e
    return-wide p1
.end method

.method private a(Landroid/view/MotionEvent;)F
    .registers 6
    .parameter

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->m:J

    sub-long/2addr v0, v2

    .line 293
    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->k:F

    sub-float/2addr p1, v2

    long-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method static synthetic a(Lcom/baidu/ar/npc/BaiduArView;)Lcom/baidu/ar/npc/BaiduArView$g;
    .registers 1
    .parameter

    .line 31
    iget-object p0, p0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/ar/npc/BaiduArView;Lcom/baidu/ar/npc/BaiduArView$h;)Lcom/baidu/ar/npc/BaiduArView$h;
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 2
    .parameter
    .parameter

    .line 31
    invoke-static {p0, p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private a(ZII)V
    .registers 19
    .parameter
    .parameter
    .parameter

    move-object v0, p0

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, v1}, Lcom/baidu/ar/npc/BaiduArView;->setZOrderMediaOverlay(Z)V

    if-eqz p1, :cond_f

    .line 181
    invoke-virtual {p0}, Lcom/baidu/ar/npc/BaiduArView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 187
    :cond_f
    new-instance v1, Lcom/baidu/ar/npc/BaiduArView$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/baidu/ar/npc/BaiduArView$e;-><init>(Lcom/baidu/ar/npc/w;)V

    invoke-virtual {p0, v1}, Lcom/baidu/ar/npc/BaiduArView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 193
    new-instance v1, Lcom/baidu/ar/npc/BaiduArView$d;

    if-eqz p1, :cond_2d

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object v3, v1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/baidu/ar/npc/BaiduArView$d;-><init>(IIIIII)V

    goto :goto_39

    :cond_2d
    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x0

    move-object v8, v1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/baidu/ar/npc/BaiduArView$d;-><init>(IIIIII)V

    :goto_39
    invoke-virtual {p0, v1}, Lcom/baidu/ar/npc/BaiduArView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 198
    new-instance v1, Lcom/baidu/ar/npc/BaiduArView$g;

    invoke-direct {v1, p0, v2}, Lcom/baidu/ar/npc/BaiduArView$g;-><init>(Lcom/baidu/ar/npc/BaiduArView;Lcom/baidu/ar/npc/w;)V

    iput-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    .line 199
    sget v1, Lcom/baidu/ar/npc/BaiduArView;->G:I

    if-eqz v1, :cond_4c

    .line 200
    iget-object v2, v0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    invoke-virtual {v2, v1}, Lcom/baidu/ar/npc/BaiduArView$g;->a(I)V

    .line 202
    :cond_4c
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    invoke-virtual {p0, v1}, Lcom/baidu/ar/npc/BaiduArView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 204
    new-instance v1, Lcom/baidu/ar/npc/y;

    invoke-direct {v1, p0}, Lcom/baidu/ar/npc/y;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/ar/npc/BaiduArView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/baidu/ar/npc/BaiduArView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/ar/npc/BaiduArView;->H:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->e:Landroid/view/GestureDetector;

    .line 211
    new-instance v1, Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-direct {v1, p0}, Lcom/baidu/ar/npc/BaiduArView$f;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    iput-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    return-void
.end method

.method static synthetic a(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)F
    .registers 6
    .parameter

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->m:J

    sub-long/2addr v0, v2

    .line 303
    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->l:F

    sub-float/2addr p1, v2

    long-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private static b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 6
    .parameter
    .parameter

    .line 835
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_21

    .line 836
    sget-object v1, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%s: EGL error: 0x%x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_21
    return-void
.end method

.method static synthetic b()Z
    .registers 1

    .line 31
    sget-boolean v0, Lcom/baidu/ar/npc/BaiduArView;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/ar/npc/BaiduArView;)Z
    .registers 1
    .parameter

    .line 31
    iget-boolean p0, p0, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->y:Z

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)F
    .registers 6
    .parameter

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->s:J

    sub-long/2addr v0, v2

    .line 310
    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->q:F

    sub-float/2addr p1, v2

    long-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private c()V
    .registers 16

    .line 280
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->a:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    const-wide/high16 v1, -0x4010

    .line 282
    iput-wide v1, p0, Lcom/baidu/ar/npc/BaiduArView;->t:D

    .line 283
    iget-object v1, p0, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v1, v0}, Lcom/baidu/ar/npc/BaiduArView$f;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/BaiduArView$f;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 285
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v1

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->i:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    const/high16 v6, -0x4080

    const/high16 v7, -0x4080

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const-wide/16 v13, -0x1

    invoke-virtual/range {v1 .. v14}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    :cond_3a
    return-void
.end method

.method static synthetic c(Lcom/baidu/ar/npc/BaiduArView;)Z
    .registers 1
    .parameter

    .line 31
    iget-boolean p0, p0, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    return p1
.end method

.method private d(Landroid/view/MotionEvent;)F
    .registers 6
    .parameter

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView;->s:J

    sub-long/2addr v0, v2

    .line 317
    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView;->r:F

    sub-float/2addr p1, v2

    long-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private d()V
    .registers 31

    move-object/from16 v0, p0

    .line 393
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/ar/npc/BaiduArView$f;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 394
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v1, v2}, Lcom/baidu/ar/npc/BaiduArView$f;->removeMessages(I)V

    .line 396
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    if-eqz v1, :cond_68

    .line 397
    iget-boolean v1, v0, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    if-nez v1, :cond_42

    .line 398
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v2

    sget-object v1, Lcom/baidu/ar/npc/BaiduArView$i;->a:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v3

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    iget v4, v1, Lcom/baidu/ar/npc/BaiduArView$c;->a:I

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    iget v5, v1, Lcom/baidu/ar/npc/BaiduArView$c;->b:F

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    iget v6, v1, Lcom/baidu/ar/npc/BaiduArView$c;->c:F

    const/high16 v7, -0x4080

    const/high16 v8, -0x4080

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    iget-wide v14, v1, Lcom/baidu/ar/npc/BaiduArView$c;->d:J

    invoke-virtual/range {v2 .. v15}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 402
    :cond_42
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v16

    sget-object v1, Lcom/baidu/ar/npc/BaiduArView$i;->i:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v17

    const/16 v18, -0x1

    const/high16 v19, -0x4080

    const/high16 v20, -0x4080

    const/high16 v21, -0x4080

    const/high16 v22, -0x4080

    const/16 v23, -0x1

    const/high16 v24, -0x4080

    const/high16 v25, -0x4080

    const/high16 v26, -0x4080

    const/high16 v27, -0x4080

    const-wide/16 v28, -0x1

    invoke-virtual/range {v16 .. v29}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    const/4 v1, 0x0

    .line 404
    iput-object v1, v0, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    :cond_68
    return-void
.end method

.method static synthetic d(Lcom/baidu/ar/npc/BaiduArView;)Z
    .registers 1
    .parameter

    .line 31
    iget-boolean p0, p0, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    return p0
.end method

.method static synthetic d(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    return p1
.end method

.method private e(Landroid/view/MotionEvent;)F
    .registers 3
    .parameter

    .line 322
    iget v0, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method static synthetic e(Lcom/baidu/ar/npc/BaiduArView;)Z
    .registers 1
    .parameter

    .line 31
    iget-boolean p0, p0, Lcom/baidu/ar/npc/BaiduArView;->D:Z

    return p0
.end method

.method static synthetic e(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->D:Z

    return p1
.end method

.method private f(Landroid/view/MotionEvent;)F
    .registers 3
    .parameter

    .line 326
    iget v0, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method static synthetic f(Lcom/baidu/ar/npc/BaiduArView;)Lcom/baidu/ar/npc/BaiduArView$h;
    .registers 1
    .parameter

    .line 31
    iget-object p0, p0, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->A:Z

    return p1
.end method

.method private g(Landroid/view/MotionEvent;)F
    .registers 3
    .parameter

    .line 330
    iget v0, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method static synthetic g(Lcom/baidu/ar/npc/BaiduArView;)Z
    .registers 1
    .parameter

    .line 31
    iget-boolean p0, p0, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    return p0
.end method

.method static synthetic g(Lcom/baidu/ar/npc/BaiduArView;Z)Z
    .registers 2
    .parameter
    .parameter

    .line 31
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->C:Z

    return p1
.end method

.method private h(Landroid/view/MotionEvent;)F
    .registers 3
    .parameter

    .line 334
    iget v0, p0, Lcom/baidu/ar/npc/BaiduArView;->n:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method static synthetic h(Lcom/baidu/ar/npc/BaiduArView;)I
    .registers 1
    .parameter

    .line 31
    iget p0, p0, Lcom/baidu/ar/npc/BaiduArView;->h:I

    return p0
.end method

.method static synthetic i(Lcom/baidu/ar/npc/BaiduArView;)F
    .registers 1
    .parameter

    .line 31
    iget p0, p0, Lcom/baidu/ar/npc/BaiduArView;->k:F

    return p0
.end method

.method static synthetic j(Lcom/baidu/ar/npc/BaiduArView;)F
    .registers 1
    .parameter

    .line 31
    iget p0, p0, Lcom/baidu/ar/npc/BaiduArView;->l:F

    return p0
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .line 115
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/ar/npc/BaiduArView;->a:Lcom/baidu/ar/npc/ArBridge$d;

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/ArBridge;->removeMessageHandeler(Lcom/baidu/ar/npc/ArBridge$d;)V

    .line 116
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "callseq"

    const-string v1, "BaiduArView::pause()"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->a()V

    .line 119
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/ArBridge;->setArView(Lcom/baidu/ar/npc/BaiduArView;)V

    .line 121
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 106
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/ar/npc/BaiduArView;->a:Lcom/baidu/ar/npc/ArBridge$d;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/baidu/ar/npc/ArBridge;->registerMessageHandler(ILcom/baidu/ar/npc/ArBridge$d;)V

    .line 107
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 108
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "callseq"

    const-string v1, "BaiduArView::resume()"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/ar/npc/ArBridge;->setArView(Lcom/baidu/ar/npc/BaiduArView;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 33
    .parameter

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 412
    invoke-super/range {p0 .. p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 413
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->E:Z

    if-nez v0, :cond_d

    return v11

    .line 418
    :cond_d
    sget-object v0, Lcom/baidu/ar/npc/ae;->a:[I

    iget-object v1, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/high16 v1, 0x4054

    const/4 v3, 0x6

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x4034

    const/4 v8, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch v0, :pswitch_data_680

    goto/16 :goto_67e

    .line 715
    :pswitch_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v13, v0, :cond_67e

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->c()V

    goto/16 :goto_67e

    .line 696
    :pswitch_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_80

    .line 697
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v0, :cond_6c

    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    if-nez v0, :cond_6c

    .line 698
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v12

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->g:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v13

    iget v14, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v17

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v18

    const/16 v19, -0x1

    const/high16 v20, -0x4080

    const/high16 v21, -0x4080

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    .line 698
    invoke-virtual/range {v12 .. v25}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 703
    :cond_6c
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 704
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->f(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    goto/16 :goto_67e

    .line 706
    :cond_80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v13, v0, :cond_8b

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->c()V

    goto/16 :goto_67e

    .line 709
    :cond_8b
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 673
    :pswitch_91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_f8

    .line 674
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    iget v3, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v9, v0, v3, v4, v5}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-lez v0, :cond_67e

    .line 676
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->h:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    .line 677
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v0, :cond_e4

    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    if-nez v0, :cond_e4

    .line 678
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v12

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->g:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v13

    iget v14, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v17

    .line 681
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v18

    const/16 v19, -0x1

    const/high16 v20, -0x4080

    const/high16 v21, -0x4080

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    .line 678
    invoke-virtual/range {v12 .. v25}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 685
    :cond_e4
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 686
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->f(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    goto/16 :goto_67e

    .line 689
    :cond_f8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v13, v0, :cond_103

    .line 690
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->c()V

    goto/16 :goto_67e

    .line 692
    :cond_103
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 630
    :pswitch_109
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v8, v0, :cond_115

    .line 631
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 632
    :cond_115
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v3, v0, :cond_121

    .line 633
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 634
    :cond_121
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_1dc

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_67e

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, v9, Lcom/baidu/ar/npc/BaiduArView;->s:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_67e

    .line 637
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    .line 638
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->f(Landroid/view/MotionEvent;)F

    move-result v1

    .line 639
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->g(Landroid/view/MotionEvent;)F

    move-result v2

    .line 640
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->h(Landroid/view/MotionEvent;)F

    move-result v3

    .line 641
    invoke-direct {v9, v0, v1, v2, v3}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v4

    .line 642
    iget-wide v6, v9, Lcom/baidu/ar/npc/BaiduArView;->t:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_18e

    .line 643
    iget-boolean v6, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v6, :cond_1c4

    iget-boolean v6, v9, Lcom/baidu/ar/npc/BaiduArView;->y:Z

    if-nez v6, :cond_1c4

    .line 644
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v12

    sget-object v6, Lcom/baidu/ar/npc/BaiduArView$i;->f:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v6}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v13

    iget v14, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 645
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v17

    .line 646
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v18

    iget v6, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 647
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->c(Landroid/view/MotionEvent;)F

    move-result v22

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->d(Landroid/view/MotionEvent;)F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move v15, v0

    move/from16 v16, v1

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v3

    .line 644
    invoke-virtual/range {v12 .. v25}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    goto :goto_1c4

    .line 651
    :cond_18e
    iget-boolean v6, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v6, :cond_1c4

    iget-boolean v6, v9, Lcom/baidu/ar/npc/BaiduArView;->y:Z

    if-nez v6, :cond_1c4

    .line 652
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v12

    sget-object v6, Lcom/baidu/ar/npc/BaiduArView$i;->e:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v6}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v13

    iget v14, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 653
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v17

    .line 654
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v18

    iget v6, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 655
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->c(Landroid/view/MotionEvent;)F

    move-result v22

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->d(Landroid/view/MotionEvent;)F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move v15, v0

    move/from16 v16, v1

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v3

    .line 652
    invoke-virtual/range {v12 .. v25}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 659
    :cond_1c4
    :goto_1c4
    iput-wide v4, v9, Lcom/baidu/ar/npc/BaiduArView;->t:D

    .line 660
    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 661
    iput v1, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 663
    iput v2, v9, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 664
    iput v3, v9, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->s:J

    goto/16 :goto_67e

    .line 669
    :cond_1dc
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 598
    :pswitch_1e2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v8, v0, :cond_1ee

    .line 599
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 600
    :cond_1ee
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v3, v0, :cond_1fa

    .line 601
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 602
    :cond_1fa
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_272

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_67e

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, v9, Lcom/baidu/ar/npc/BaiduArView;->s:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_67e

    .line 605
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    .line 606
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->f(Landroid/view/MotionEvent;)F

    move-result v1

    .line 607
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->g(Landroid/view/MotionEvent;)F

    move-result v2

    .line 608
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->h(Landroid/view/MotionEvent;)F

    move-result v3

    .line 609
    iget-boolean v4, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v4, :cond_25c

    iget-boolean v4, v9, Lcom/baidu/ar/npc/BaiduArView;->C:Z

    if-nez v4, :cond_25c

    .line 610
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v12

    sget-object v4, Lcom/baidu/ar/npc/BaiduArView$i;->d:Lcom/baidu/ar/npc/BaiduArView$i;

    .line 611
    invoke-virtual {v4}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v13

    iget v14, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 612
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v17

    .line 613
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v18

    iget v4, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 614
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->c(Landroid/view/MotionEvent;)F

    move-result v22

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->d(Landroid/view/MotionEvent;)F

    move-result v23

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move v15, v0

    move/from16 v16, v1

    move/from16 v19, v4

    move/from16 v20, v2

    move/from16 v21, v3

    .line 611
    invoke-virtual/range {v12 .. v25}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 617
    :cond_25c
    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 618
    iput v1, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 620
    iput v2, v9, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 621
    iput v3, v9, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->s:J

    goto/16 :goto_67e

    .line 626
    :cond_272
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 574
    :pswitch_278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v8, v0, :cond_284

    .line 575
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 576
    :cond_284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v3, v0, :cond_290

    .line 577
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 578
    :cond_290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v13, v0, :cond_29b

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->c()V

    goto/16 :goto_67e

    .line 580
    :cond_29b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_2f0

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_67e

    .line 582
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->e(Landroid/view/MotionEvent;)F

    move-result v0

    .line 583
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->f(Landroid/view/MotionEvent;)F

    move-result v1

    .line 584
    iget-boolean v2, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v2, :cond_2e4

    iget-boolean v2, v9, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    if-nez v2, :cond_2e4

    .line 585
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v12

    sget-object v2, Lcom/baidu/ar/npc/BaiduArView$i;->c:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v2}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v13

    iget v14, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 586
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v17

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v18

    const/16 v19, -0x1

    const/high16 v20, -0x4080

    const/high16 v21, -0x4080

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move v15, v0

    move/from16 v16, v1

    .line 585
    invoke-virtual/range {v12 .. v25}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 589
    :cond_2e4
    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 590
    iput v1, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    goto/16 :goto_67e

    .line 594
    :cond_2f0
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 528
    :pswitch_2f6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v8, v0, :cond_302

    .line 529
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 530
    :cond_302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v3, v0, :cond_30e

    .line 531
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 532
    :cond_30e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_3e8

    .line 533
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->e(Landroid/view/MotionEvent;)F

    move-result v14

    .line 534
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->f(Landroid/view/MotionEvent;)F

    move-result v15

    .line 535
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->g(Landroid/view/MotionEvent;)F

    move-result v8

    .line 536
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->h(Landroid/view/MotionEvent;)F

    move-result v5

    .line 537
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    iget v3, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    invoke-direct {v9, v0, v3, v14, v15}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v3

    .line 538
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->o:F

    iget v12, v9, Lcom/baidu/ar/npc/BaiduArView;->p:F

    invoke-direct {v9, v0, v12, v8, v5}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v17

    cmpl-double v0, v3, v1

    if-gtz v0, :cond_33c

    cmpl-double v0, v17, v1

    if-lez v0, :cond_3cf

    :cond_33c
    cmpl-double v0, v3, v6

    if-lez v0, :cond_3cf

    cmpl-double v0, v17, v6

    if-lez v0, :cond_3cf

    .line 541
    iget v1, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    iget v2, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    iget v6, v9, Lcom/baidu/ar/npc/BaiduArView;->o:F

    iget v7, v9, Lcom/baidu/ar/npc/BaiduArView;->p:F

    move-object/from16 v0, p0

    move v3, v14

    move v4, v15

    move v12, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v29, v8

    move v8, v12

    .line 542
    invoke-direct/range {v0 .. v8}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFFFFFF)D

    move-result-wide v0

    new-array v2, v13, [Ljava/lang/Object;

    .line 544
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "the angle is %1.3f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "touchopt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v4, 0x3fd921fb54442d18L

    cmpg-double v2, v0, v4

    if-gez v2, :cond_3c1

    .line 547
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->e:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    .line 548
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v0, :cond_3bd

    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->C:Z

    if-nez v0, :cond_3bd

    .line 549
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v0

    sget-object v1, Lcom/baidu/ar/npc/BaiduArView$i;->d:Lcom/baidu/ar/npc/BaiduArView$i;

    .line 550
    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v16

    iget v1, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 551
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v20

    .line 552
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v21

    iget v2, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 553
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->c(Landroid/view/MotionEvent;)F

    move-result v25

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->d(Landroid/view/MotionEvent;)F

    move-result v26

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v27

    move v4, v15

    move-object v15, v0

    move/from16 v17, v1

    move/from16 v18, v14

    move/from16 v19, v4

    move/from16 v22, v2

    move/from16 v23, v29

    move/from16 v24, v12

    .line 550
    invoke-virtual/range {v15 .. v28}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    const-string v0, "EStatTwoFingersScroll"

    .line 555
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3be

    :cond_3bd
    move v4, v15

    :goto_3be
    move/from16 v0, v29

    goto :goto_3d2

    :cond_3c1
    move v4, v15

    .line 559
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->i:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    move/from16 v0, v29

    .line 560
    invoke-direct {v9, v14, v4, v0, v12}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v1

    iput-wide v1, v9, Lcom/baidu/ar/npc/BaiduArView;->t:D

    goto :goto_3d2

    :cond_3cf
    move v12, v5

    move v0, v8

    move v4, v15

    .line 563
    :goto_3d2
    iput v14, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 564
    iput v4, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 566
    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 567
    iput v12, v9, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->s:J

    goto/16 :goto_67e

    .line 570
    :cond_3e8
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto/16 :goto_67e

    .line 420
    :pswitch_3ee
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v3, 0x258

    const/4 v5, 0x3

    if-nez v0, :cond_47d

    .line 421
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    const-string v1, "touchinv Action Down when EStatSingleFingerCandidate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    .line 425
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 426
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    .line 429
    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v0, v14}, Lcom/baidu/ar/npc/BaiduArView$f;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_447

    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    if-eqz v0, :cond_447

    .line 430
    iget v0, v0, Lcom/baidu/ar/npc/BaiduArView$c;->b:F

    iget-object v1, v9, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    iget v1, v1, Lcom/baidu/ar/npc/BaiduArView$c;->c:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {v9, v0, v1, v2, v8}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v0

    cmpl-double v2, v0, v6

    if-lez v2, :cond_447

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->d()V

    .line 436
    :cond_447
    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v0, v13, v3, v4}, Lcom/baidu/ar/npc/BaiduArView$f;->sendEmptyMessageDelayed(IJ)Z

    .line 437
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    .line 439
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v13

    iget-wide v2, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v14

    iget v2, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "touchinv Action Down when EStatSingleFingerCandidate x %1.1f, y %1.1f, time %d id %d"

    .line 437
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67e

    .line 441
    :cond_47d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v14, v0, :cond_568

    .line 442
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    iget v8, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-direct {v9, v0, v8, v12, v15}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v17

    .line 443
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView;->b:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v5, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v14

    const-string v8, "touchinv Action Move when EStatSingleFingerCandidate x %1.1f, y %1.1f, distance %1.2f"

    .line 443
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-double v0, v17, v6

    if-gez v0, :cond_509

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long v2, v0, v3

    if-lez v2, :cond_554

    .line 449
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->c:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    .line 450
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v0, :cond_503

    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->D:Z

    if-nez v0, :cond_503

    .line 451
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v14

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->b:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v15

    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, -0x4080

    const/high16 v20, -0x4080

    const/16 v21, -0x1

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    const/high16 v24, -0x4080

    const/high16 v25, -0x4080

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    move/from16 v16, v0

    .line 451
    invoke-virtual/range {v14 .. v27}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 455
    :cond_503
    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v0, v13}, Lcom/baidu/ar/npc/BaiduArView$f;->removeMessages(I)V

    goto :goto_554

    :cond_509
    cmpg-double v0, v17, v1

    if-gez v0, :cond_511

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    goto :goto_554

    .line 460
    :cond_511
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->d()V

    .line 461
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->d:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    .line 462
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v0, :cond_54f

    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->B:Z

    if-nez v0, :cond_54f

    .line 463
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v14

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->c:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v15

    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->h:I

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Landroid/view/MotionEvent;)F

    move-result v19

    .line 465
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ar/npc/BaiduArView;->b(Landroid/view/MotionEvent;)F

    move-result v20

    const/16 v21, -0x1

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    const/high16 v24, -0x4080

    const/high16 v25, -0x4080

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    move/from16 v16, v0

    .line 463
    invoke-virtual/range {v14 .. v27}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 468
    :cond_54f
    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v0, v13}, Lcom/baidu/ar/npc/BaiduArView$f;->removeMessages(I)V

    .line 470
    :cond_554
    :goto_554
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->k:F

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->l:F

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->m:J

    goto/16 :goto_67e

    .line 473
    :cond_568
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v13, v0, :cond_638

    .line 474
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->i:F

    iget v1, v9, Lcom/baidu/ar/npc/BaiduArView;->j:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/baidu/ar/npc/BaiduArView;->a(FFFF)D

    move-result-wide v0

    cmpg-double v2, v0, v6

    if-gez v2, :cond_634

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gez v4, :cond_634

    .line 477
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->x:Z

    if-nez v0, :cond_634

    .line 478
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->A:Z

    if-eqz v0, :cond_5ca

    .line 479
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->z:Z

    if-nez v0, :cond_634

    .line 480
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v17

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->a:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v18

    const/4 v0, 0x0

    .line 481
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    const/16 v24, -0x1

    const/high16 v25, -0x4080

    const/high16 v26, -0x4080

    const/high16 v27, -0x4080

    const/high16 v28, -0x4080

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v29

    .line 480
    invoke-virtual/range {v17 .. v30}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    goto :goto_634

    .line 486
    :cond_5ca
    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v0, v14}, Lcom/baidu/ar/npc/BaiduArView$f;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_604

    .line 487
    iget-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    invoke-virtual {v0, v14}, Lcom/baidu/ar/npc/BaiduArView$f;->removeMessages(I)V

    .line 489
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v17

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->h:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v18

    const/4 v0, 0x0

    .line 490
    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    const/high16 v22, -0x4080

    const/high16 v23, -0x4080

    const/16 v24, -0x1

    const/high16 v25, -0x4080

    const/high16 v26, -0x4080

    const/high16 v27, -0x4080

    const/high16 v28, -0x4080

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v29

    .line 489
    invoke-virtual/range {v17 .. v30}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    goto :goto_634

    .line 494
    :cond_604
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    iput v14, v0, Landroid/os/Message;->what:I

    .line 496
    new-instance v1, Lcom/baidu/ar/npc/BaiduArView$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/baidu/ar/npc/BaiduArView$c;-><init>(Lcom/baidu/ar/npc/w;)V

    const/4 v2, 0x0

    .line 497
    invoke-virtual {v10, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/ar/npc/BaiduArView$c;->a:I

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v1, Lcom/baidu/ar/npc/BaiduArView$c;->b:F

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v1, Lcom/baidu/ar/npc/BaiduArView$c;->c:F

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/ar/npc/BaiduArView$c;->d:J

    .line 501
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    iput-object v1, v9, Lcom/baidu/ar/npc/BaiduArView;->F:Lcom/baidu/ar/npc/BaiduArView$c;

    .line 503
    iget-object v1, v9, Lcom/baidu/ar/npc/BaiduArView;->u:Lcom/baidu/ar/npc/BaiduArView$f;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/ar/npc/BaiduArView$f;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 509
    :cond_634
    :goto_634
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->c()V

    goto :goto_67e

    .line 511
    :cond_638
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v8, v0, :cond_67e

    .line 513
    iget-boolean v0, v9, Lcom/baidu/ar/npc/BaiduArView;->g:Z

    if-eqz v0, :cond_677

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    .line 515
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->o:F

    .line 516
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->n:I

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->p:F

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/ar/npc/BaiduArView;->s:J

    .line 518
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->o:F

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->q:F

    .line 519
    iget v0, v9, Lcom/baidu/ar/npc/BaiduArView;->p:F

    iput v0, v9, Lcom/baidu/ar/npc/BaiduArView;->r:F

    .line 520
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->b:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    goto :goto_67b

    .line 522
    :cond_677
    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$h;->j:Lcom/baidu/ar/npc/BaiduArView$h;

    iput-object v0, v9, Lcom/baidu/ar/npc/BaiduArView;->f:Lcom/baidu/ar/npc/BaiduArView$h;

    .line 524
    :goto_67b
    invoke-direct/range {p0 .. p0}, Lcom/baidu/ar/npc/BaiduArView;->d()V

    :cond_67e
    :goto_67e
    return v11

    nop

    :pswitch_data_680
    .packed-switch 0x1
        :pswitch_3ee
        :pswitch_2f6
        :pswitch_278
        :pswitch_1e2
        :pswitch_109
        :pswitch_91
        :pswitch_31
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public setFrameRate(I)V
    .registers 3
    .parameter

    .line 137
    sput p1, Lcom/baidu/ar/npc/BaiduArView;->G:I

    .line 138
    iget-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {v0, p1}, Lcom/baidu/ar/npc/BaiduArView$g;->a(I)V

    :cond_9
    return-void
.end method

.method public setUserInteractionEnabled(Z)V
    .registers 2
    .parameter

    .line 168
    iput-boolean p1, p0, Lcom/baidu/ar/npc/BaiduArView;->E:Z

    return-void
.end method

.method public startRecord(Lcom/baidu/ar/npc/BaiduArView$b;)V
    .registers 3
    .parameter

    .line 144
    new-instance v0, Lcom/baidu/ar/npc/w;

    invoke-direct {v0, p0, p1}, Lcom/baidu/ar/npc/w;-><init>(Lcom/baidu/ar/npc/BaiduArView;Lcom/baidu/ar/npc/BaiduArView$b;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecord()V
    .registers 2

    .line 153
    new-instance v0, Lcom/baidu/ar/npc/x;

    invoke-direct {v0, p0}, Lcom/baidu/ar/npc/x;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeSnapshot(Lcom/baidu/ar/npc/BaiduArView$a;)V
    .registers 3
    .parameter

    .line 162
    iget-object v0, p0, Lcom/baidu/ar/npc/BaiduArView;->v:Lcom/baidu/ar/npc/BaiduArView$g;

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v0, p1}, Lcom/baidu/ar/npc/BaiduArView$g;->a(Lcom/baidu/ar/npc/BaiduArView$a;)V

    :cond_7
    return-void
.end method
