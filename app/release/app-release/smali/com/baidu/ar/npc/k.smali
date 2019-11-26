.class Lcom/baidu/ar/npc/k;
.super Landroid/view/OrientationEventListener;
.source "ArBridge.java"


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/ArBridge;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/ArBridge;Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .line 539
    iput-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .parameter

    .line 542
    iget-object v0, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {v0, p1}, Lcom/baidu/ar/npc/ArBridge;->b(Lcom/baidu/ar/npc/ArBridge;I)I

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "orientation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {v0}, Lcom/baidu/ar/npc/ArBridge;->c(Lcom/baidu/ar/npc/ArBridge;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "orientation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {p1}, Lcom/baidu/ar/npc/ArBridge;->c(Lcom/baidu/ar/npc/ArBridge;)I

    move-result p1

    if-gez p1, :cond_31

    .line 545
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->e:Lcom/baidu/ar/npc/ArBridge$e;

    invoke-static {p1, v0}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$e;)Lcom/baidu/ar/npc/ArBridge$e;

    goto :goto_73

    .line 547
    :cond_31
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    invoke-static {p1}, Lcom/baidu/ar/npc/ArBridge;->c(Lcom/baidu/ar/npc/ArBridge;)I

    move-result p1

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    const/16 v0, 0x2d

    if-le p1, v0, :cond_6c

    const/16 v1, 0x13b

    if-le p1, v1, :cond_44

    goto :goto_6c

    :cond_44
    const/16 v2, 0x87

    if-le p1, v0, :cond_52

    if-gt p1, v2, :cond_52

    .line 551
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->d:Lcom/baidu/ar/npc/ArBridge$e;

    invoke-static {p1, v0}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$e;)Lcom/baidu/ar/npc/ArBridge$e;

    goto :goto_73

    :cond_52
    const/16 v0, 0xe1

    if-le p1, v2, :cond_60

    if-gt p1, v0, :cond_60

    .line 553
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->c:Lcom/baidu/ar/npc/ArBridge$e;

    invoke-static {p1, v0}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$e;)Lcom/baidu/ar/npc/ArBridge$e;

    goto :goto_73

    :cond_60
    if-le p1, v0, :cond_73

    if-gt p1, v1, :cond_73

    .line 555
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->b:Lcom/baidu/ar/npc/ArBridge$e;

    invoke-static {p1, v0}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$e;)Lcom/baidu/ar/npc/ArBridge$e;

    goto :goto_73

    .line 549
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/baidu/ar/npc/k;->a:Lcom/baidu/ar/npc/ArBridge;

    sget-object v0, Lcom/baidu/ar/npc/ArBridge$e;->a:Lcom/baidu/ar/npc/ArBridge$e;

    invoke-static {p1, v0}, Lcom/baidu/ar/npc/ArBridge;->a(Lcom/baidu/ar/npc/ArBridge;Lcom/baidu/ar/npc/ArBridge$e;)Lcom/baidu/ar/npc/ArBridge$e;

    :cond_73
    :goto_73
    return-void
.end method
