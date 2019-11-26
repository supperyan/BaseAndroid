.class Lcom/baidu/ar/npc/BaiduArView$e;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ar/npc/BaiduArView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static a:I = 0x3098


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/ar/npc/w;)V
    .registers 2
    .parameter

    .line 807
    invoke-direct {p0}, Lcom/baidu/ar/npc/BaiduArView$e;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 7
    .parameter
    .parameter
    .parameter

    .line 811
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurface creating OpenGL ES 2.0 context"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "callseq"

    .line 812
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Before eglCreateContext"

    .line 813
    invoke-static {v0, p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 814
    sget v1, Lcom/baidu/ar/npc/BaiduArView$e;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 815
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    const-string p3, "After eglCreateContext"

    .line 816
    invoke-static {p3, p1}, Lcom/baidu/ar/npc/BaiduArView;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 817
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "createContext"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/ar/npc/ArBridge;->setGLThreadID(J)V

    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .line 823
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurface destroyContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "callseq"

    .line 824
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 826
    invoke-static {}, Lcom/baidu/ar/npc/ArBridge;->getInstance()Lcom/baidu/ar/npc/ArBridge;

    move-result-object p1

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/baidu/ar/npc/ArBridge;->setGLThreadID(J)V

    return-void
.end method
