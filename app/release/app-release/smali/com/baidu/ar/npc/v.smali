.class Lcom/baidu/ar/npc/v;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 383
    iput-object p1, p0, Lcom/baidu/ar/npc/v;->c:Lcom/baidu/ar/npc/ArBridge;

    iput p2, p0, Lcom/baidu/ar/npc/v;->a:I

    iput p3, p0, Lcom/baidu/ar/npc/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/baidu/ar/npc/v;->c:Lcom/baidu/ar/npc/ArBridge;

    iget v1, p0, Lcom/baidu/ar/npc/v;->a:I

    iget v2, p0, Lcom/baidu/ar/npc/v;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/ar/npc/ArBridge;->nativeSetSize(II)V

    return-void
.end method
