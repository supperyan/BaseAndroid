.class Lcom/baidu/ar/npc/q;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:I

.field final synthetic e:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;IILjava/util/HashMap;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 128
    iput-object p1, p0, Lcom/baidu/ar/npc/q;->e:Lcom/baidu/ar/npc/ArBridge;

    iput p2, p0, Lcom/baidu/ar/npc/q;->a:I

    iput p3, p0, Lcom/baidu/ar/npc/q;->b:I

    iput-object p4, p0, Lcom/baidu/ar/npc/q;->c:Ljava/util/HashMap;

    iput p5, p0, Lcom/baidu/ar/npc/q;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 131
    iget v0, p0, Lcom/baidu/ar/npc/q;->a:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_15

    .line 132
    iget-object v0, p0, Lcom/baidu/ar/npc/q;->e:Lcom/baidu/ar/npc/ArBridge;

    iget v1, p0, Lcom/baidu/ar/npc/q;->b:I

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->getMessageID()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/ar/npc/q;->c:Ljava/util/HashMap;

    iget v4, p0, Lcom/baidu/ar/npc/q;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/ar/npc/ArBridge;->sendMessageToEngine(IILjava/util/HashMap;I)V

    goto :goto_20

    .line 134
    :cond_15
    iget-object v1, p0, Lcom/baidu/ar/npc/q;->e:Lcom/baidu/ar/npc/ArBridge;

    iget v2, p0, Lcom/baidu/ar/npc/q;->b:I

    iget-object v3, p0, Lcom/baidu/ar/npc/q;->c:Ljava/util/HashMap;

    iget v4, p0, Lcom/baidu/ar/npc/q;->d:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/baidu/ar/npc/ArBridge;->sendMessageToEngine(IILjava/util/HashMap;I)V

    :goto_20
    return-void
.end method
