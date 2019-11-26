.class Lcom/baidu/ar/npc/d;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;Ljava/lang/String;Ljava/util/HashMap;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 419
    iput-object p1, p0, Lcom/baidu/ar/npc/d;->e:Lcom/baidu/ar/npc/ArBridge;

    iput-object p2, p0, Lcom/baidu/ar/npc/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/ar/npc/d;->b:Ljava/util/HashMap;

    iput p4, p0, Lcom/baidu/ar/npc/d;->c:I

    iput p5, p0, Lcom/baidu/ar/npc/d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 422
    iget-object v0, p0, Lcom/baidu/ar/npc/d;->e:Lcom/baidu/ar/npc/ArBridge;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->nativeDestroyCase()V

    .line 423
    iget-object v0, p0, Lcom/baidu/ar/npc/d;->e:Lcom/baidu/ar/npc/ArBridge;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->setGLJniEnv()V

    .line 424
    iget-object v1, p0, Lcom/baidu/ar/npc/d;->e:Lcom/baidu/ar/npc/ArBridge;

    iget-object v2, p0, Lcom/baidu/ar/npc/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/ArBridge;->getCaseId()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/ar/npc/d;->b:Ljava/util/HashMap;

    iget v5, p0, Lcom/baidu/ar/npc/d;->c:I

    iget v6, p0, Lcom/baidu/ar/npc/d;->d:I

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/ar/npc/ArBridge;->nativeCreateCase(Ljava/lang/String;ILjava/util/HashMap;II)V

    return-void
.end method
