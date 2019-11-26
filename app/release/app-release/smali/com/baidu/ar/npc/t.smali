.class Lcom/baidu/ar/npc/t;
.super Ljava/lang/Object;
.source "ArBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;Ljava/lang/String;ILjava/util/HashMap;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 364
    iput-object p1, p0, Lcom/baidu/ar/npc/t;->f:Lcom/baidu/ar/npc/ArBridge;

    iput-object p2, p0, Lcom/baidu/ar/npc/t;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/ar/npc/t;->b:I

    iput-object p4, p0, Lcom/baidu/ar/npc/t;->c:Ljava/util/HashMap;

    iput p5, p0, Lcom/baidu/ar/npc/t;->d:I

    iput p6, p0, Lcom/baidu/ar/npc/t;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 367
    iget-object v0, p0, Lcom/baidu/ar/npc/t;->f:Lcom/baidu/ar/npc/ArBridge;

    iget-object v1, p0, Lcom/baidu/ar/npc/t;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/ar/npc/t;->b:I

    iget-object v3, p0, Lcom/baidu/ar/npc/t;->c:Ljava/util/HashMap;

    iget v4, p0, Lcom/baidu/ar/npc/t;->d:I

    iget v5, p0, Lcom/baidu/ar/npc/t;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/ar/npc/ArBridge;->nativeCreateCase(Ljava/lang/String;ILjava/util/HashMap;II)V

    return-void
.end method
