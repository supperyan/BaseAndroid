.class Lcom/baidu/ar/npc/n;
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

    .line 564
    iput-object p1, p0, Lcom/baidu/ar/npc/n;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/baidu/ar/npc/n;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/ArBridge;->nativeOnResume()V

    return-void
.end method
