.class Lcom/baidu/ar/npc/w;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/BaiduArView$b;

.field final synthetic b:Lcom/baidu/ar/npc/BaiduArView;


# direct methods
.method constructor <init>(Lcom/baidu/ar/npc/BaiduArView;Lcom/baidu/ar/npc/BaiduArView$b;)V
    .registers 3
    .parameter
    .parameter

    .line 144
    iput-object p1, p0, Lcom/baidu/ar/npc/w;->b:Lcom/baidu/ar/npc/BaiduArView;

    iput-object p2, p0, Lcom/baidu/ar/npc/w;->a:Lcom/baidu/ar/npc/BaiduArView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/baidu/ar/npc/w;->b:Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v0}, Lcom/baidu/ar/npc/BaiduArView;->a(Lcom/baidu/ar/npc/BaiduArView;)Lcom/baidu/ar/npc/BaiduArView$g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/ar/npc/w;->a:Lcom/baidu/ar/npc/BaiduArView$b;

    invoke-virtual {v0, v1}, Lcom/baidu/ar/npc/BaiduArView$g;->a(Lcom/baidu/ar/npc/BaiduArView$b;)V

    return-void
.end method
