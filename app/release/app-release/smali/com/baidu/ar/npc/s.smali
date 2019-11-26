.class Lcom/baidu/ar/npc/s;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/ArBridge$d;

.field final synthetic b:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$d;)V
    .registers 3
    .parameter
    .parameter

    .line 174
    iput-object p1, p0, Lcom/baidu/ar/npc/s;->b:Lcom/baidu/ar/npc/ArBridge;

    iput-object p2, p0, Lcom/baidu/ar/npc/s;->a:Lcom/baidu/ar/npc/ArBridge$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/baidu/ar/npc/s;->b:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {v0}, Lcom/baidu/ar/npc/ArBridge;->b(Lcom/baidu/ar/npc/ArBridge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/ArBridge$a;

    .line 179
    iget-object v1, v1, Lcom/baidu/ar/npc/ArBridge$a;->c:Lcom/baidu/ar/npc/ArBridge$d;

    iget-object v2, p0, Lcom/baidu/ar/npc/s;->a:Lcom/baidu/ar/npc/ArBridge$d;

    if-ne v1, v2, :cond_a

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_20
    return-void
.end method
