.class Lcom/baidu/ar/npc/BaiduArView$f;
.super Landroid/os/Handler;
.source "BaiduArView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ar/npc/BaiduArView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/ar/npc/BaiduArView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/ar/npc/BaiduArView;)V
    .registers 3
    .parameter

    .line 1124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 31
    .parameter

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1130
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1131
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_71

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    goto/16 :goto_106

    .line 1149
    :cond_11
    iget-object v2, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/ar/npc/BaiduArView;

    if-eqz v2, :cond_106

    .line 1150
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_106

    .line 1151
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView$c;

    .line 1152
    invoke-static {v2}, Lcom/baidu/ar/npc/BaiduArView;->c(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1153
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v3

    sget-object v2, Lcom/baidu/ar/npc/BaiduArView$i;->a:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v2}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v4

    iget v5, v1, Lcom/baidu/ar/npc/BaiduArView$c;->a:I

    iget v6, v1, Lcom/baidu/ar/npc/BaiduArView$c;->b:F

    iget v7, v1, Lcom/baidu/ar/npc/BaiduArView$c;->c:F

    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    const/high16 v14, -0x4080

    iget-wide v1, v1, Lcom/baidu/ar/npc/BaiduArView$c;->d:J

    move-wide v15, v1

    invoke-virtual/range {v3 .. v16}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    .line 1158
    :cond_4c
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v15

    sget-object v1, Lcom/baidu/ar/npc/BaiduArView$i;->i:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v16

    const/16 v17, -0x1

    const/high16 v18, -0x4080

    const/high16 v19, -0x4080

    const/high16 v20, -0x4080

    const/high16 v21, -0x4080

    const/16 v22, -0x1

    const/high16 v23, -0x4080

    const/high16 v24, -0x4080

    const/high16 v25, -0x4080

    const/high16 v26, -0x4080

    const-wide/16 v27, -0x1

    invoke-virtual/range {v15 .. v28}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    goto/16 :goto_106

    .line 1133
    :cond_71
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 1134
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->f(Lcom/baidu/ar/npc/BaiduArView;)Lcom/baidu/ar/npc/BaiduArView$h;

    move-result-object v1

    sget-object v2, Lcom/baidu/ar/npc/BaiduArView$h;->a:Lcom/baidu/ar/npc/BaiduArView$h;

    if-ne v1, v2, :cond_106

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    .line 1135
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->g(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 1137
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    sget-object v2, Lcom/baidu/ar/npc/BaiduArView$h;->c:Lcom/baidu/ar/npc/BaiduArView$h;

    invoke-static {v1, v2}, Lcom/baidu/ar/npc/BaiduArView;->a(Lcom/baidu/ar/npc/BaiduArView;Lcom/baidu/ar/npc/BaiduArView$h;)Lcom/baidu/ar/npc/BaiduArView$h;

    .line 1138
    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->b(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v1

    if-nez v1, :cond_106

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->e(Lcom/baidu/ar/npc/BaiduArView;)Z

    move-result v1

    if-nez v1, :cond_106

    .line 1139
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object v2

    sget-object v1, Lcom/baidu/ar/npc/BaiduArView$i;->b:Lcom/baidu/ar/npc/BaiduArView$i;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView$i;->ordinal()I

    move-result v3

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    .line 1140
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->h(Lcom/baidu/ar/npc/BaiduArView;)I

    move-result v4

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->i(Lcom/baidu/ar/npc/BaiduArView;)F

    move-result v5

    iget-object v1, v0, Lcom/baidu/ar/npc/BaiduArView$f;->a:Ljava/lang/ref/WeakReference;

    .line 1141
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ar/npc/BaiduArView;

    invoke-static {v1}, Lcom/baidu/ar/npc/BaiduArView;->j(Lcom/baidu/ar/npc/BaiduArView;)F

    move-result v6

    const/high16 v7, -0x4080

    const/high16 v8, -0x4080

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    .line 1142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 1139
    invoke-virtual/range {v2 .. v15}, Lcom/baidu/ar/npc/ArBridge;->a(IIFFFFIFFFFJ)V

    :cond_106
    :goto_106
    return-void
.end method
