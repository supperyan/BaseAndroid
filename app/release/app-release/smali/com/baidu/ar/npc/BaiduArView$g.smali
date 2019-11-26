.class Lcom/baidu/ar/npc/BaiduArView$g;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ar/npc/BaiduArView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/ar/npc/BaiduArView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:I

.field private h:Lcom/baidu/ar/npc/RendererUtils$a;

.field private i:Lcom/baidu/ar/npc/BaiduArView$b;

.field private volatile j:Lcom/baidu/ar/npc/BaiduArView$a;


# direct methods
.method private constructor <init>(Lcom/baidu/ar/npc/BaiduArView;)V
    .registers 4
    .parameter

    .line 997
    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 999
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->b:I

    .line 1000
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->c:I

    const/4 p1, 0x0

    .line 1001
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->d:I

    .line 1002
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->e:I

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/ar/npc/BaiduArView$g;->f:J

    .line 1004
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/ar/npc/BaiduArView;Lcom/baidu/ar/npc/w;)V
    .registers 3
    .parameter
    .parameter

    .line 997
    invoke-direct {p0, p1}, Lcom/baidu/ar/npc/BaiduArView$g;-><init>(Lcom/baidu/ar/npc/BaiduArView;)V

    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .registers 11

    .line 1104
    iget-object v0, p0, Lcom/baidu/ar/npc/BaiduArView$g;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-virtual {v0}, Lcom/baidu/ar/npc/BaiduArView;->getWidth()I

    move-result v0

    .line 1105
    iget-object v1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->a:Lcom/baidu/ar/npc/BaiduArView;

    invoke-virtual {v1}, Lcom/baidu/ar/npc/BaiduArView;->getHeight()I

    move-result v8

    mul-int v1, v0, v8

    mul-int/lit8 v1, v1, 0x4

    .line 1106
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1108
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, v0

    move v4, v8

    move-object v7, v9

    .line 1109
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1110
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1112
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1113
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    if-lez p1, :cond_b

    const/16 v0, 0x3c

    if-gt p1, v0, :cond_b

    const/16 v0, 0x3e8

    .line 1017
    div-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/ar/npc/BaiduArView$g;->g:I

    :cond_b
    return-void
.end method

.method public a(Lcom/baidu/ar/npc/BaiduArView$a;)V
    .registers 2
    .parameter

    .line 1022
    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->j:Lcom/baidu/ar/npc/BaiduArView$a;

    return-void
.end method

.method public a(Lcom/baidu/ar/npc/BaiduArView$b;)V
    .registers 2
    .parameter

    .line 1012
    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->i:Lcom/baidu/ar/npc/BaiduArView$b;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter

    .line 1037
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->a:Lcom/baidu/ar/npc/BaiduArView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/baidu/ar/npc/BaiduArView;->mUpdating:Z

    .line 1038
    iget p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->g:I

    if-lez p1, :cond_22

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1040
    iget-wide v2, p0, Lcom/baidu/ar/npc/BaiduArView$g;->f:J

    sub-long/2addr v0, v2

    .line 1041
    iget p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->g:I

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    int-to-long v2, p1

    sub-long/2addr v2, v0

    .line 1043
    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1c

    .line 1048
    :catchall_1c
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/ar/npc/BaiduArView$g;->f:J

    .line 1051
    :cond_22
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->i:Lcom/baidu/ar/npc/BaiduArView$b;

    const/4 v0, 0x0

    if-eqz p1, :cond_83

    .line 1052
    iget p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->b:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5e

    .line 1053
    iget p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->d:I

    iget v1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->e:I

    invoke-static {p1, v1}, Lcom/baidu/ar/npc/RendererUtils;->createTexture(II)I

    move-result p1

    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->c:I

    .line 1054
    iget p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->c:I

    iget v1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->d:I

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView$g;->e:I

    const v3, 0x81a5

    invoke-static {p1, v1, v2, v3}, Lcom/baidu/ar/npc/RendererUtils;->createFBO(IIII)I

    move-result p1

    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->b:I

    .line 1055
    invoke-static {}, Lcom/baidu/ar/npc/RendererUtils;->createProgram()Lcom/baidu/ar/npc/RendererUtils$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->h:Lcom/baidu/ar/npc/RendererUtils$a;

    .line 1056
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->i:Lcom/baidu/ar/npc/BaiduArView$b;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView$g;->d:I

    iget v3, p0, Lcom/baidu/ar/npc/BaiduArView$g;->e:I

    invoke-interface {p1, v1, v2, v3}, Lcom/baidu/ar/npc/BaiduArView$b;->a(Ljavax/microedition/khronos/egl/EGLContext;II)V

    .line 1059
    :cond_5e
    iget p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->b:I

    const v1, 0x8d40

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1060
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/ar/npc/ArBridge;->c()V

    .line 1061
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1063
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->h:Lcom/baidu/ar/npc/RendererUtils$a;

    iget v1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->c:I

    iget v2, p0, Lcom/baidu/ar/npc/BaiduArView$g;->d:I

    iget v3, p0, Lcom/baidu/ar/npc/BaiduArView$g;->e:I

    invoke-static {p1, v1, v2, v3}, Lcom/baidu/ar/npc/RendererUtils;->renderTexture(Lcom/baidu/ar/npc/RendererUtils$a;III)V

    .line 1065
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->i:Lcom/baidu/ar/npc/BaiduArView$b;

    iget v1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->c:I

    invoke-interface {p1, v1}, Lcom/baidu/ar/npc/BaiduArView$b;->a(I)V

    goto :goto_8a

    .line 1067
    :cond_83
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/ar/npc/ArBridge;->c()V

    .line 1070
    :goto_8a
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->j:Lcom/baidu/ar/npc/BaiduArView$a;

    if-eqz p1, :cond_9a

    .line 1071
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->j:Lcom/baidu/ar/npc/BaiduArView$a;

    invoke-direct {p0}, Lcom/baidu/ar/npc/BaiduArView$g;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/baidu/ar/npc/BaiduArView$a;->a(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 1072
    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->j:Lcom/baidu/ar/npc/BaiduArView$a;

    .line 1075
    :cond_9a
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->a:Lcom/baidu/ar/npc/BaiduArView;

    iput-boolean v0, p1, Lcom/baidu/ar/npc/BaiduArView;->mUpdating:Z

    .line 1076
    iget-boolean p1, p1, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    if-eqz p1, :cond_ad

    .line 1077
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/ar/npc/ArBridge;->nativeDestroyCase()V

    .line 1078
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->a:Lcom/baidu/ar/npc/BaiduArView;

    iput-boolean v0, p1, Lcom/baidu/ar/npc/BaiduArView;->mNeedDestroy:Z

    :cond_ad
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .line 1083
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1084
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "onSurfaceChanged thread name %s id %s width %d height %d"

    .line 1083
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iput p2, p0, Lcom/baidu/ar/npc/BaiduArView$g;->d:I

    .line 1086
    iput p3, p0, Lcom/baidu/ar/npc/BaiduArView$g;->e:I

    const/4 p1, -0x1

    .line 1088
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->c:I

    .line 1089
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->b:I

    const/4 p1, 0x0

    .line 1090
    iput-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$g;->h:Lcom/baidu/ar/npc/RendererUtils$a;

    .line 1092
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/baidu/ar/npc/ArBridge;->setSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3
    .parameter
    .parameter

    .line 1097
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSurfaceCreated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/ar/npc/ArBridge;->setGLJniEnv()V

    .line 1100
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/ar/npc/ArBridge;->b()V

    return-void
.end method
