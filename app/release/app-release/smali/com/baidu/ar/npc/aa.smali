.class Lcom/baidu/ar/npc/aa;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/BaiduArView;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/BaiduArView;)V
    .registers 2
    .parameter

    .line 726
    iput-object p1, p0, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter

    .line 785
    iget-object v0, p0, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    new-instance v1, Lcom/baidu/ar/npc/ad;

    invoke-direct {v1, p0, p1}, Lcom/baidu/ar/npc/ad;-><init>(Lcom/baidu/ar/npc/aa;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .line 763
    iget-object v0, p0, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    new-instance v7, Lcom/baidu/ar/npc/ac;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/baidu/ar/npc/ac;-><init>(Lcom/baidu/ar/npc/aa;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-virtual {v0, v7}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .line 740
    iget-object v0, p0, Lcom/baidu/ar/npc/aa;->a:Lcom/baidu/ar/npc/BaiduArView;

    new-instance v1, Lcom/baidu/ar/npc/ab;

    invoke-direct {v1, p0, p1}, Lcom/baidu/ar/npc/ab;-><init>(Lcom/baidu/ar/npc/aa;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/BaiduArView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method
