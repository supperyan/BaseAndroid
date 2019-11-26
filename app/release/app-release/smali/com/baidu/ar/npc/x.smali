.class Lcom/baidu/ar/npc/x;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/BaiduArView;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/BaiduArView;)V
    .registers 2
    .parameter

    .line 153
    iput-object p1, p0, Lcom/baidu/ar/npc/x;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/baidu/ar/npc/x;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v0}, Lcom/baidu/ar/npc/BaiduArView;->a(Lcom/baidu/ar/npc/BaiduArView;)Lcom/baidu/ar/npc/BaiduArView$g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/BaiduArView$g;->a(Lcom/baidu/ar/npc/BaiduArView$b;)V

    return-void
.end method
