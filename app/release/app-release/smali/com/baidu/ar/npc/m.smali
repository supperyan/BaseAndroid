.class Lcom/baidu/ar/npc/m;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/baidu/ar/npc/l;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/l;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .line 90
    iput-object p1, p0, Lcom/baidu/ar/npc/m;->b:Lcom/baidu/ar/npc/l;

    iput-object p2, p0, Lcom/baidu/ar/npc/m;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/baidu/ar/npc/m;->b:Lcom/baidu/ar/npc/l;

    iget-object v0, v0, Lcom/baidu/ar/npc/l;->a:Lcom/baidu/ar/npc/ArBridge$c;

    iget-object v1, p0, Lcom/baidu/ar/npc/m;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/baidu/ar/npc/ArBridge$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
