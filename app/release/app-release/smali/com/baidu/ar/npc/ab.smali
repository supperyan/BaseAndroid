.class Lcom/baidu/ar/npc/ab;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/baidu/ar/npc/aa;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/aa;Landroid/view/MotionEvent;)V
    .registers 3
    .parameter
    .parameter

    .line 740
    iput-object p1, p0, Lcom/baidu/ar/npc/ab;->b:Lcom/baidu/ar/npc/aa;

    iput-object p2, p0, Lcom/baidu/ar/npc/ab;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 743
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch on single tap with motionEvnet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/ar/npc/ab;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 745
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch timeInMils "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/baidu/ar/npc/ab;->b:Lcom/baidu/ar/npc/aa;

    iget-object v0, v0, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v0}, Lcom/baidu/ar/npc/BaiduArView;->b(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/baidu/ar/npc/ab;->b:Lcom/baidu/ar/npc/aa;

    iget-object v0, v0, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v0}, Lcom/baidu/ar/npc/BaiduArView;->c(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 747
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v1

    sget-object v0, Lcom/baidu/ar/npc/BaiduArView$i;->a:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v2

    iget-object v0, p0, Lcom/baidu/ar/npc/ab;->a:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    .line 748
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v0, p0, Lcom/baidu/ar/npc/ab;->a:Landroid/view/MotionEvent;

    .line 749
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v0, p0, Lcom/baidu/ar/npc/ab;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/high16 v6, -0x4080

    const/high16 v7, -0x4080

    const/4 v8, -0x1

    const/high16 v9, -0x4080

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    .line 747
    invoke-virtual/range {v1 .. v14}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    :cond_7b
    return-void
.end method
