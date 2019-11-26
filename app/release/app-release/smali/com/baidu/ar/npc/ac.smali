.class Lcom/baidu/ar/npc/ac;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Landroid/view/MotionEvent;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/baidu/ar/npc/aa;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/aa;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 763
    iput-object p1, p0, Lcom/baidu/ar/npc/ac;->e:Lcom/baidu/ar/npc/aa;

    iput-object p2, p0, Lcom/baidu/ar/npc/ac;->a:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/baidu/ar/npc/ac;->b:Landroid/view/MotionEvent;

    iput p4, p0, Lcom/baidu/ar/npc/ac;->c:F

    iput p5, p0, Lcom/baidu/ar/npc/ac;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    .line 766
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/baidu/ar/npc/ac;->a:Landroid/view/MotionEvent;

    .line 768
    invoke-virtual {v3}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/baidu/ar/npc/ac;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, v0, Lcom/baidu/ar/npc/ac;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget v3, v0, Lcom/baidu/ar/npc/ac;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-string v3, "touch onScroll begin motionevent %s and end motion event %s and speed %1.2f, %1.2f "

    .line 766
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    .line 770
    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->e:Lcom/baidu/ar/npc/aa;

    iget-object v1, v1, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->b(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->e:Lcom/baidu/ar/npc/aa;

    iget-object v1, v1, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->d(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 771
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v5

    sget-object v1, Lcom/baidu/ar/npc/BaiduArView$i;->c:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v6

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->a:Landroid/view/MotionEvent;

    .line 772
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->b:Landroid/view/MotionEvent;

    .line 773
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    iget-object v1, v0, Lcom/baidu/ar/npc/ac;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    iget v15, v0, Lcom/baidu/ar/npc/ac;->c:F

    iget v1, v0, Lcom/baidu/ar/npc/ac;->d:F

    move/from16 v16, v1

    .line 771
    invoke-virtual/range {v5 .. v18}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    :cond_8d
    return-void
.end method
