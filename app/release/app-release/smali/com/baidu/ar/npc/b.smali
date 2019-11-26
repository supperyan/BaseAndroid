.class Lcom/baidu/ar/npc/b;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;FFFLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 392
    iput-object p1, p0, Lcom/baidu/ar/npc/b;->e:Lcom/baidu/ar/npc/ArBridge;

    iput p2, p0, Lcom/baidu/ar/npc/b;->a:F

    iput p3, p0, Lcom/baidu/ar/npc/b;->b:F

    iput p4, p0, Lcom/baidu/ar/npc/b;->c:F

    iput-object p5, p0, Lcom/baidu/ar/npc/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/baidu/ar/npc/b;->e:Lcom/baidu/ar/npc/ArBridge;

    iget v1, p0, Lcom/baidu/ar/npc/b;->a:F

    iget v2, p0, Lcom/baidu/ar/npc/b;->b:F

    iget v3, p0, Lcom/baidu/ar/npc/b;->c:F

    iget-object v4, p0, Lcom/baidu/ar/npc/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/ar/npc/ArBridge;->nativeSetEuler(FFFLjava/lang/String;)V

    return-void
.end method
