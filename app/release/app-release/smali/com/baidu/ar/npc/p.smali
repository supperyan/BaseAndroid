.class Lcom/baidu/ar/npc/p;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/ArBridge$c;

.field final synthetic b:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$c;)V
    .registers 3
    .parameter
    .parameter

    .line 99
    iput-object p1, p0, Lcom/baidu/ar/npc/p;->b:Lcom/baidu/ar/npc/ArBridge;

    iput-object p2, p0, Lcom/baidu/ar/npc/p;->a:Lcom/baidu/ar/npc/ArBridge$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/baidu/ar/npc/p;->a:Lcom/baidu/ar/npc/ArBridge$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/ar/npc/ArBridge$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
