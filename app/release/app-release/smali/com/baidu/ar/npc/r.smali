.class Lcom/baidu/ar/npc/r;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/baidu/ar/npc/ArBridge$d;

.field final synthetic c:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;ILcom/baidu/ar/npc/ArBridge$d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 163
    iput-object p1, p0, Lcom/baidu/ar/npc/r;->c:Lcom/baidu/ar/npc/ArBridge;

    iput p2, p0, Lcom/baidu/ar/npc/r;->a:I

    iput-object p3, p0, Lcom/baidu/ar/npc/r;->b:Lcom/baidu/ar/npc/ArBridge$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 166
    new-instance v0, Lcom/baidu/ar/npc/ArBridge$a;

    iget v1, p0, Lcom/baidu/ar/npc/r;->a:I

    iget-object v2, p0, Lcom/baidu/ar/npc/r;->b:Lcom/baidu/ar/npc/ArBridge$d;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/ar/npc/ArBridge$a;-><init>(IILcom/baidu/ar/npc/ArBridge$d;)V

    .line 167
    iget-object v1, p0, Lcom/baidu/ar/npc/r;->c:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {v1}, Lcom/baidu/ar/npc/ArBridge;->b(Lcom/baidu/ar/npc/ArBridge;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
