.class Lcom/baidu/ar/npc/o;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:I

.field final synthetic h:F

.field final synthetic i:F

.field final synthetic j:F

.field final synthetic k:F

.field final synthetic l:J

.field final synthetic m:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;IIFFFFIFFFFJ)V
    .registers 15
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
    .parameter

    .line 587
    iput-object p1, p0, Lcom/baidu/ar/npc/o;->m:Lcom/baidu/ar/npc/ArBridge;

    iput p2, p0, Lcom/baidu/ar/npc/o;->a:I

    iput p3, p0, Lcom/baidu/ar/npc/o;->b:I

    iput p4, p0, Lcom/baidu/ar/npc/o;->c:F

    iput p5, p0, Lcom/baidu/ar/npc/o;->d:F

    iput p6, p0, Lcom/baidu/ar/npc/o;->e:F

    iput p7, p0, Lcom/baidu/ar/npc/o;->f:F

    iput p8, p0, Lcom/baidu/ar/npc/o;->g:I

    iput p9, p0, Lcom/baidu/ar/npc/o;->h:F

    iput p10, p0, Lcom/baidu/ar/npc/o;->i:F

    iput p11, p0, Lcom/baidu/ar/npc/o;->j:F

    iput p12, p0, Lcom/baidu/ar/npc/o;->k:F

    iput-wide p13, p0, Lcom/baidu/ar/npc/o;->l:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v0, p0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent the orientation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/ar/npc/o;->m:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {v2}, Lcom/baidu/ar/npc/ArBridge;->d(Lcom/baidu/ar/npc/ArBridge;)Lcom/baidu/ar/npc/ArBridge$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/ar/npc/ArBridge$e;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v3, v0, Lcom/baidu/ar/npc/o;->m:Lcom/baidu/ar/npc/ArBridge;

    iget v4, v0, Lcom/baidu/ar/npc/o;->a:I

    iget v5, v0, Lcom/baidu/ar/npc/o;->b:I

    iget v6, v0, Lcom/baidu/ar/npc/o;->c:F

    iget v7, v0, Lcom/baidu/ar/npc/o;->d:F

    iget v8, v0, Lcom/baidu/ar/npc/o;->e:F

    iget v9, v0, Lcom/baidu/ar/npc/o;->f:F

    iget v10, v0, Lcom/baidu/ar/npc/o;->g:I

    iget v11, v0, Lcom/baidu/ar/npc/o;->h:F

    iget v12, v0, Lcom/baidu/ar/npc/o;->i:F

    iget v13, v0, Lcom/baidu/ar/npc/o;->j:F

    iget v14, v0, Lcom/baidu/ar/npc/o;->k:F

    iget-wide v1, v0, Lcom/baidu/ar/npc/o;->l:J

    .line 593
    invoke-static {v3}, Lcom/baidu/ar/npc/ArBridge;->d(Lcom/baidu/ar/npc/ArBridge;)Lcom/baidu/ar/npc/ArBridge$e;

    move-result-object v15

    invoke-virtual {v15}, Lcom/baidu/ar/npc/ArBridge$e;->ordinal()I

    move-result v17

    move-wide v15, v1

    .line 591
    invoke-virtual/range {v3 .. v17}, Lcom/baidu/ar/npc/ArBridge;->onTouchEventNative(IIFFFFIFFFFJI)V

    return-void
.end method
