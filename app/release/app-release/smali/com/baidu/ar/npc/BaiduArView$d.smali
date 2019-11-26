.class Lcom/baidu/ar/npc/BaiduArView$d;
.super Ljava/lang/Object;
.source "BaiduArView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ar/npc/BaiduArView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static g:I = 0x4

.field private static h:[I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x3023

    aput v4, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3040

    aput v4, v0, v3

    .line 856
    sget v3, Lcom/baidu/ar/npc/BaiduArView$d;->g:I

    const/4 v4, 0x7

    aput v3, v0, v4

    const/16 v3, 0x8

    const/16 v4, 0x3032

    aput v4, v0, v3

    const/16 v3, 0x9

    aput v1, v0, v3

    const/16 v1, 0xa

    const/16 v3, 0x3031

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/baidu/ar/npc/BaiduArView$d;->h:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 994
    iput-object v0, p0, Lcom/baidu/ar/npc/BaiduArView$d;->i:[I

    .line 843
    iput p1, p0, Lcom/baidu/ar/npc/BaiduArView$d;->a:I

    .line 844
    iput p2, p0, Lcom/baidu/ar/npc/BaiduArView$d;->b:I

    .line 845
    iput p3, p0, Lcom/baidu/ar/npc/BaiduArView$d;->c:I

    .line 846
    iput p4, p0, Lcom/baidu/ar/npc/BaiduArView$d;->d:I

    .line 847
    iput p5, p0, Lcom/baidu/ar/npc/BaiduArView$d;->e:I

    .line 848
    iput p6, p0, Lcom/baidu/ar/npc/BaiduArView$d;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .line 936
    iget-object v0, p0, Lcom/baidu/ar/npc/BaiduArView$d;->i:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 937
    iget-object p1, p0, Lcom/baidu/ar/npc/BaiduArView$d;->i:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_e
    return p5
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    const/16 v0, 0x11

    new-array v1, v0, [I

    .line 952
    fill-array-data v1, :array_fe

    const/16 v2, 0x21

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EGL_BUFFER_SIZE"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "EGL_ALPHA_SIZE"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "EGL_BLUE_SIZE"

    aput-object v6, v2, v5

    const/4 v6, 0x3

    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "EGL_CONFIG_ID"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "EGL_LEVEL"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v2, v6

    const-string v6, "EGL_SAMPLES"

    aput-object v6, v2, v0

    const/16 v0, 0x12

    const-string v6, "EGL_SAMPLE_BUFFERS"

    aput-object v6, v2, v0

    const/16 v0, 0x13

    const-string v6, "EGL_SURFACE_TYPE"

    aput-object v6, v2, v0

    const/16 v0, 0x14

    const-string v6, "EGL_TRANSPARENT_TYPE"

    aput-object v6, v2, v0

    const/16 v0, 0x15

    const-string v6, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v6, v2, v0

    const/16 v0, 0x16

    const-string v6, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v6, v2, v0

    const/16 v0, 0x17

    const-string v6, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v6, v2, v0

    const/16 v0, 0x18

    const-string v6, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v6, v2, v0

    const/16 v0, 0x19

    const-string v6, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v6, v2, v0

    const/16 v0, 0x1a

    const-string v6, "EGL_MIN_SWAP_INTERVAL"

    aput-object v6, v2, v0

    const/16 v0, 0x1b

    const-string v6, "EGL_MAX_SWAP_INTERVAL"

    aput-object v6, v2, v0

    const/16 v0, 0x1c

    const-string v6, "EGL_LUMINANCE_SIZE"

    aput-object v6, v2, v0

    const/16 v0, 0x1d

    const-string v6, "EGL_ALPHA_MASK_SIZE"

    aput-object v6, v2, v0

    const/16 v0, 0x1e

    const-string v6, "EGL_COLOR_BUFFER_TYPE"

    aput-object v6, v2, v0

    const/16 v0, 0x1f

    const-string v6, "EGL_RENDERABLE_TYPE"

    aput-object v6, v2, v0

    const/16 v0, 0x20

    const-string v6, "EGL_CONFORMANT"

    aput-object v6, v2, v0

    new-array v0, v4, [I

    const/4 v6, 0x0

    .line 973
    :goto_ca
    array-length v7, v1

    if-ge v6, v7, :cond_fd

    .line 974
    aget v7, v1, v6

    .line 975
    aget-object v8, v2, v6

    .line 976
    invoke-interface {p1, p2, p3, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 977
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v3

    aget v8, v0, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v4

    const-string v8, "  %s: %d\n"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 980
    :cond_f1
    :goto_f1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    const/16 v8, 0x3000

    if-eq v7, v8, :cond_fa

    goto :goto_f1

    :cond_fa
    :goto_fa
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    :cond_fd
    return-void

    :array_fe
    .array-data 0x4
        0x20t 0x30t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x27t 0x30t 0x0t 0x0t
        0x28t 0x30t 0x0t 0x0t
        0x29t 0x30t 0x0t 0x0t
        0x2at 0x30t 0x0t 0x0t
        0x2bt 0x30t 0x0t 0x0t
        0x2ct 0x30t 0x0t 0x0t
        0x2dt 0x30t 0x0t 0x0t
        0x2et 0x30t 0x0t 0x0t
        0x2ft 0x30t 0x0t 0x0t
        0x30t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .line 943
    array-length v0, p3

    .line 944
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d configurations"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_38

    .line 946
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, "Configuration %d:\n"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    aget-object v3, p3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_38
    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 19
    .parameter
    .parameter
    .parameter

    move-object v6, p0

    move-object/from16 v7, p3

    .line 910
    array-length v8, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_66

    aget-object v10, v7, v9

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    .line 911
    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v4, 0x3026

    .line 912
    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 915
    iget v1, v6, Lcom/baidu/ar/npc/BaiduArView$d;->e:I

    if-lt v11, v1, :cond_63

    iget v1, v6, Lcom/baidu/ar/npc/BaiduArView$d;->f:I

    if-ge v0, v1, :cond_26

    goto :goto_63

    :cond_26
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    .line 920
    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v4, 0x3023

    .line 921
    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3022

    .line 922
    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3021

    .line 923
    invoke-direct/range {v0 .. v5}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 925
    iget v1, v6, Lcom/baidu/ar/npc/BaiduArView$d;->a:I

    if-ne v12, v1, :cond_63

    iget v1, v6, Lcom/baidu/ar/npc/BaiduArView$d;->b:I

    if-ne v13, v1, :cond_63

    iget v1, v6, Lcom/baidu/ar/npc/BaiduArView$d;->c:I

    if-ne v14, v1, :cond_63

    iget v1, v6, Lcom/baidu/ar/npc/BaiduArView$d;->d:I

    if-ne v0, v1, :cond_63

    iget v0, v6, Lcom/baidu/ar/npc/BaiduArView$d;->e:I

    if-lt v11, v0, :cond_63

    .line 926
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get the config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_63
    :goto_63
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_66
    const/4 v0, 0x0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 11
    .parameter
    .parameter

    const-string v0, "callseq"

    const-string v1, "chooseConfig called"

    .line 867
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 872
    sget-object v3, Lcom/baidu/ar/npc/BaiduArView$d;->h:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v7, 0x0

    .line 874
    aget v1, v0, v7

    if-gtz v1, :cond_3e

    .line 879
    sget-object v3, Lcom/baidu/ar/npc/BaiduArView$d;->h:[I

    const/16 v1, 0xb

    const/4 v2, 0x2

    aput v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    .line 880
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 881
    aget v1, v0, v7

    if-gtz v1, :cond_3e

    .line 884
    sget-object v3, Lcom/baidu/ar/npc/BaiduArView$d;->h:[I

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    .line 885
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 886
    aget v1, v0, v7

    :cond_3e
    move v5, v1

    if-lez v5, :cond_5a

    .line 897
    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 898
    sget-object v3, Lcom/baidu/ar/npc/BaiduArView$d;->h:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 900
    invoke-static {}, Lcom/baidu/ar/npc/BaiduArView;->b()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 901
    invoke-direct {p0, p1, p2, v7}, Lcom/baidu/ar/npc/BaiduArView$d;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 906
    :cond_55
    invoke-virtual {p0, p1, p2, v7}, Lcom/baidu/ar/npc/BaiduArView$d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    .line 891
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
