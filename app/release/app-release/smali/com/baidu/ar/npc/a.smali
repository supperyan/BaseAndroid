.class Lcom/baidu/ar/npc/a;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;)V
    .registers 2
    .parameter

    .line 43
    iput-object p1, p0, Lcom/baidu/ar/npc/a;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_f

    .line 48
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/ar/npc/ArBridge$b;

    .line 49
    iget-object v0, p0, Lcom/baidu/ar/npc/a;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {v0, p1}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$b;)V

    :goto_f
    const/4 p1, 0x0

    return p1
.end method
