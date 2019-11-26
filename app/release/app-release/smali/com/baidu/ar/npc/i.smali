.class Lcom/baidu/ar/npc/i;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;)V
    .registers 2
    .parameter

    .line 510
    iput-object p1, p0, Lcom/baidu/ar/npc/i;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/baidu/ar/npc/i;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->nativeGetFps()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;I)I

    return-void
.end method
