.class Lcom/baidu/ar/npc/u;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .parameter

    .line 374
    iput-object p1, p0, Lcom/baidu/ar/npc/u;->b:Lcom/baidu/ar/npc/ArBridge;

    iput-object p2, p0, Lcom/baidu/ar/npc/u;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/baidu/ar/npc/u;->b:Lcom/baidu/ar/npc/ArBridge;

    iget-object v1, p0, Lcom/baidu/ar/npc/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/ArBridge;->nativeSetTargetInfo(Ljava/util/HashMap;)V

    return-void
.end method
