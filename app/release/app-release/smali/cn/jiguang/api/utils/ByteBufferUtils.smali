.class public Lcn/jiguang/api/utils/ByteBufferUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_CODE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "ByteBufferUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generalExtraStr(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "|bytebuffer:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1a

    const-string p2, "byteBuffer is null"

    goto :goto_1e

    :cond_1a
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1e
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "byteBuffer info:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ByteBufferUtils"

    invoke-static {p2, p1}, Lcn/jiguang/az/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3f
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "parse data error stackTrace:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcn/jiguang/az/d;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_61

    :catch_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)Ljava/lang/Byte;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0
    :try_end_8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_8} :catch_15
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1a

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1a

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    :goto_1a
    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->onException(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)V

    if-eqz p1, :cond_23

    const/16 p0, 0x2710

    iput p0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Ljava/nio/ByteBuffer;[BLcn/jiguang/api/JResponse;)Ljava/nio/ByteBuffer;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_4} :catch_11
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_16

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_16

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    :goto_16
    invoke-static {p1, p2, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->onException(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)V

    if-eqz p2, :cond_1f

    const/16 p0, 0x2710

    iput p0, p2, Lcn/jiguang/api/JResponse;->code:I

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInt(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_4} :catch_11
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    :goto_16
    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->onException(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)V

    if-eqz p1, :cond_1f

    const/16 p0, 0x2710

    iput p0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static getLong(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)J
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_4} :catch_11
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    :goto_16
    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->onException(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)V

    if-eqz p1, :cond_1f

    const/16 p0, 0x2710

    iput p0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_1f
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getShort(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)S
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_4} :catch_11
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_16

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    :goto_16
    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->onException(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)V

    if-eqz p1, :cond_1f

    const/16 p0, 0x2710

    iput p0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static onException(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/utils/ByteBufferUtils;->generalExtraStr(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    return-void
.end method
