.class Lcom/baidu/ar/npc/ArBridge$a;
.super Ljava/lang/Object;
.source "ArBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ar/npc/ArBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/baidu/ar/npc/ArBridge$d;


# direct methods
.method public constructor <init>(IILcom/baidu/ar/npc/ArBridge$d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p1, p0, Lcom/baidu/ar/npc/ArBridge$a;->a:I

    .line 241
    iput p2, p0, Lcom/baidu/ar/npc/ArBridge$a;->b:I

    .line 242
    iput-object p3, p0, Lcom/baidu/ar/npc/ArBridge$a;->c:Lcom/baidu/ar/npc/ArBridge$d;

    return-void
.end method
