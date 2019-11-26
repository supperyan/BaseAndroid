.class Lcom/baidu/ar/npc/c;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;FF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 401
    iput-object p1, p0, Lcom/baidu/ar/npc/c;->c:Lcom/baidu/ar/npc/ArBridge;

    iput p2, p0, Lcom/baidu/ar/npc/c;->a:F

    iput p3, p0, Lcom/baidu/ar/npc/c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/baidu/ar/npc/c;->c:Lcom/baidu/ar/npc/ArBridge;

    iget v1, p0, Lcom/baidu/ar/npc/c;->a:F

    iget v2, p0, Lcom/baidu/ar/npc/c;->b:F

    invoke-virtual {v0, v1, v2}, Lcom/baidu/ar/npc/ArBridge;->nativeSetFrustum(FF)V

    return-void
.end method
