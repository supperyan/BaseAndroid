.class public abstract Lcn/jiguang/api/JProtocol;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_RESP_CODE:I = 0x0

.field public static final DEFAULT_RID:I = 0x0

.field public static final DEFAULT_SID:I = 0x0

.field public static final NO_JUID:I = -0x1

.field public static final NO_RESP_CODE:I = -0x1

.field public static final NO_SID:I = -0x1

.field private static final PACKET_SIZE:I = 0x1c00

.field private static final TAG:Ljava/lang/String; = "JProtocol"


# instance fields
.field protected body:Ljava/nio/ByteBuffer;

.field protected head:Lcn/jiguang/az/c;

.field private isRequest:Z


# direct methods
.method public constructor <init>(ZIIJ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jiguang/api/JProtocol;->isRequest:Z

    new-instance v6, Lcn/jiguang/az/c;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/jiguang/az/c;-><init>(ZIIJ)V

    iput-object v6, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    const/16 p1, 0x1c00

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ZIIJIJ)V
    .registers 21

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    iput-boolean v2, v0, Lcn/jiguang/api/JProtocol;->isRequest:Z

    new-instance v11, Lcn/jiguang/az/c;

    const/4 v3, 0x0

    move-object v1, v11

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcn/jiguang/az/c;-><init>(ZIIIJIJ)V

    iput-object v11, v0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    const/16 v1, 0x1c00

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jiguang/api/JProtocol;->isRequest:Z

    check-cast p2, Lcn/jiguang/az/c;

    iput-object p2, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    if-eqz p3, :cond_11

    iput-object p3, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcn/jiguang/api/JProtocol;->parseBody()V

    return-void

    :cond_11
    const-string p1, "JProtocol"

    const-string p2, "No body to parse."

    invoke-static {p1, p2}, Lcn/jiguang/az/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/nio/ByteBuffer;[B)V
    .registers 6

    const-string v0, "JProtocol"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jiguang/api/JProtocol;->isRequest:Z

    :try_start_7
    new-instance v1, Lcn/jiguang/az/c;

    invoke-direct {v1, p1, p3}, Lcn/jiguang/az/c;-><init>(Z[B)V

    iput-object v1, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_25

    :catch_f
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "create JHead failed:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/az/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    if-eqz p2, :cond_2d

    iput-object p2, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcn/jiguang/api/JProtocol;->parseBody()V

    return-void

    :cond_2d
    const-string p1, "No body to parse."

    invoke-static {v0, p1}, Lcn/jiguang/az/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseHead(Ljava/lang/Object;)[B
    .registers 4

    const/4 v0, 0x0

    const-string v1, "JProtocol"

    if-nez p0, :cond_b

    const-string p0, "object was null"

    :goto_7
    invoke-static {v1, p0}, Lcn/jiguang/az/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    instance-of v2, p0, Lcn/jiguang/az/c;

    if-eqz v2, :cond_16

    check-cast p0, Lcn/jiguang/az/c;

    invoke-virtual {p0}, Lcn/jiguang/az/c;->f()[B

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "unknow Object"

    goto :goto_7
.end method

.method private final toBytes()[B
    .registers 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcn/jiguang/api/utils/ProtocolUtil;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    const-string v2, "JProtocol"

    if-nez v1, :cond_16

    const-string v0, "toBytes bodyBytes  is  null"

    invoke-static {v2, v0}, Lcn/jiguang/az/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_16
    iget-object v3, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    iget-boolean v4, p0, Lcn/jiguang/api/JProtocol;->isRequest:Z

    if-eqz v4, :cond_1f

    const/16 v4, 0x18

    goto :goto_21

    :cond_1f
    const/16 v4, 0x14

    :goto_21
    array-length v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcn/jiguang/az/c;->a(I)V

    :try_start_26
    iget-object v3, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v3}, Lcn/jiguang/az/c;->f()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_32

    :catch_32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Final - len:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bytes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/jiguang/az/f;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/az/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getCommand()I
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v0}, Lcn/jiguang/az/c;->a()I

    move-result v0

    return v0
.end method

.method public getHead()Lcn/jiguang/az/c;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    return-object v0
.end method

.method public getJuid()J
    .registers 3

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v0}, Lcn/jiguang/az/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getRid()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v0}, Lcn/jiguang/az/c;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSid()I
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v0}, Lcn/jiguang/az/c;->d()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v0}, Lcn/jiguang/az/c;->e()I

    move-result v0

    return v0
.end method

.method protected abstract isNeedParseeErrorMsg()Z
.end method

.method protected abstract parseBody()V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcn/jiguang/api/JProtocol;->isRequest:Z

    if-eqz v1, :cond_c

    const-string v1, "[Request]"

    goto :goto_e

    :cond_c
    const-string v1, "[Response]"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/api/JProtocol;->head:Lcn/jiguang/az/c;

    invoke-virtual {v1}, Lcn/jiguang/az/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract writeBody()V
.end method

.method public final writeBodyAndToBytes()[B
    .registers 2

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcn/jiguang/api/JProtocol;->writeBody()V

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcn/jiguang/api/JProtocol;->toBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected writeBytes([B)V
    .registers 3

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writeInt1(I)V
    .registers 3

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writeInt2(I)V
    .registers 3

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writeInt4(I)V
    .registers 3

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writeLong8(J)V
    .registers 4

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writeTlv2(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcn/jiguang/api/JProtocol;->body:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcn/jiguang/api/utils/ProtocolUtil;->tlv2ToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
