.class public Lcom/baidu/ar/npc/RendererUtils;
.super Ljava/lang/Object;
.source "RendererUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/ar/npc/RendererUtils$a;
    }
.end annotation


# static fields
.field private static final a:[F

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 31
    fill-array-data v1, :array_12

    sput-object v1, Lcom/baidu/ar/npc/RendererUtils;->a:[F

    new-array v0, v0, [F

    .line 34
    fill-array-data v0, :array_26

    sput-object v0, Lcom/baidu/ar/npc/RendererUtils;->b:[F

    return-void

    nop

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .registers 5
    .parameter
    .parameter

    .line 183
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_41

    .line 185
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 186
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 188
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 189
    aget p1, p1, v2

    if-eqz p1, :cond_1b

    goto :goto_41

    .line 190
    :cond_1b
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    return v0
.end method

.method private static a([F)Ljava/nio/FloatBuffer;
    .registers 3
    .parameter

    .line 200
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_21

    .line 203
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    .line 201
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Number of vertices should be four."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFBO(IIII)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 97
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 98
    aget v3, v1, v2

    const v4, 0x8d41

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 99
    invoke-static {v4, p3, p1, p2}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    new-array p1, v0, [I

    .line 102
    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 103
    aget p2, p1, v2

    const p3, 0x8d40

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/16 v0, 0xde1

    .line 105
    invoke-static {p3, p2, v0, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 111
    aget p0, v1, v2

    const p2, 0x8d00

    invoke-static {p3, p2, v4, p0}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 116
    invoke-static {p3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 117
    aget p0, p1, v2

    return p0
.end method

.method public static createProgram()Lcom/baidu/ar/npc/RendererUtils$a;
    .registers 5

    const v0, 0x8b31

    const-string v1, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    .line 149
    invoke-static {v0, v1}, Lcom/baidu/ar/npc/RendererUtils;->a(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    const v2, 0x8b30

    const-string v3, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    .line 153
    invoke-static {v2, v3}, Lcom/baidu/ar/npc/RendererUtils;->a(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    return-object v1

    .line 157
    :cond_19
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_55

    .line 159
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 160
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 161
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const v3, 0x8b82

    const/4 v4, 0x0

    .line 163
    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 164
    aget v2, v2, v4

    if-ne v2, v0, :cond_37

    goto :goto_55

    .line 165
    :cond_37
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_55
    :goto_55
    new-instance v0, Lcom/baidu/ar/npc/RendererUtils$a;

    invoke-direct {v0}, Lcom/baidu/ar/npc/RendererUtils$a;-><init>()V

    const-string v2, "tex_sampler"

    .line 173
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/baidu/ar/npc/RendererUtils$a;->a(Lcom/baidu/ar/npc/RendererUtils$a;I)I

    const-string v2, "a_texcoord"

    .line 174
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/baidu/ar/npc/RendererUtils$a;->b(Lcom/baidu/ar/npc/RendererUtils$a;I)I

    const-string v2, "a_position"

    .line 175
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/baidu/ar/npc/RendererUtils$a;->c(Lcom/baidu/ar/npc/RendererUtils$a;I)I

    .line 176
    sget-object v2, Lcom/baidu/ar/npc/RendererUtils;->a:[F

    invoke-static {v2}, Lcom/baidu/ar/npc/RendererUtils;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/ar/npc/RendererUtils$a;->a(Lcom/baidu/ar/npc/RendererUtils$a;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 177
    sget-object v2, Lcom/baidu/ar/npc/RendererUtils;->b:[F

    invoke-static {v2}, Lcom/baidu/ar/npc/RendererUtils;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/ar/npc/RendererUtils$a;->b(Lcom/baidu/ar/npc/RendererUtils$a;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 178
    invoke-static {v0, v1}, Lcom/baidu/ar/npc/RendererUtils$a;->d(Lcom/baidu/ar/npc/RendererUtils$a;I)I

    return-object v0
.end method

.method public static createTexture()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 59
    aget v0, v0, v2

    return v0
.end method

.method public static createTexture(II)I
    .registers 15
    .parameter
    .parameter

    .line 79
    invoke-static {}, Lcom/baidu/ar/npc/RendererUtils;->createTexture()I

    move-result v0

    const/16 v1, 0xde1

    .line 80
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2601

    const/16 v3, 0x2800

    .line 81
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2801

    .line 83
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v2, 0x812f

    const/16 v3, 0x2802

    .line 85
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 87
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v7, p0

    move v8, p1

    .line 90
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return v0
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .registers 4
    .parameter

    .line 63
    invoke-static {}, Lcom/baidu/ar/npc/RendererUtils;->createTexture()I

    move-result v0

    const/16 v1, 0xde1

    .line 64
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x0

    .line 65
    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 p0, 0x2601

    const/16 v2, 0x2800

    .line 66
    invoke-static {v1, v2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    .line 68
    invoke-static {v1, v2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p0, 0x812f

    const/16 v2, 0x2802

    .line 70
    invoke-static {v1, v2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 72
    invoke-static {v1, v2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static renderTexture(Lcom/baidu/ar/npc/RendererUtils$a;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p2, 0x0

    .line 123
    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 124
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 127
    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->a(Lcom/baidu/ar/npc/RendererUtils$a;)I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 p2, 0xb71

    .line 129
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 p2, 0xbe2

    .line 131
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 133
    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->b(Lcom/baidu/ar/npc/RendererUtils$a;)I

    move-result v1

    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->c(Lcom/baidu/ar/npc/RendererUtils$a;)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->b(Lcom/baidu/ar/npc/RendererUtils$a;)I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 135
    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->d(Lcom/baidu/ar/npc/RendererUtils$a;)I

    move-result v1

    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->e(Lcom/baidu/ar/npc/RendererUtils$a;)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 136
    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->d(Lcom/baidu/ar/npc/RendererUtils$a;)I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p2, 0x84c0

    .line 139
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 141
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 143
    invoke-static {p0}, Lcom/baidu/ar/npc/RendererUtils$a;->f(Lcom/baidu/ar/npc/RendererUtils$a;)I

    move-result p0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 145
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method
