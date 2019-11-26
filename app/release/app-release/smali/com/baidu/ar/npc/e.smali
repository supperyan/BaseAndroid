.class Lcom/baidu/ar/npc/e;
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

    .line 448
    iput-object p1, p0, Lcom/baidu/ar/npc/e;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/baidu/ar/npc/e;->a:Lcom/baidu/ar/npc/ArBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Z)Z

    .line 452
    iget-object v0, p0, Lcom/baidu/ar/npc/e;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->nativeOnResumeByUser()V

    return-void
.end method
