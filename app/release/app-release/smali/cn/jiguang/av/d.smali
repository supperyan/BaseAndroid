.class public final Lcn/jiguang/av/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private final e:Lcn/jiguang/av/c;

.field private f:Ljava/nio/ByteBuffer;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/jiguang/av/c;Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/av/d;->e:Lcn/jiguang/av/c;

    const-string p1, "LoginResponse"

    if-eqz p2, :cond_95

    iput-object p2, p0, Lcn/jiguang/av/d;->f:Ljava/nio/ByteBuffer;

    const/16 p2, 0x2710

    :try_start_d
    iget-object v0, p0, Lcn/jiguang/av/d;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcn/jiguang/av/d;->a:I
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    iput p2, p0, Lcn/jiguang/av/d;->a:I

    :goto_18
    iget v0, p0, Lcn/jiguang/av/d;->a:I

    if-lez v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response error - code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/av/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcn/jiguang/av/d;->f:Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    iput v1, p0, Lcn/jiguang/av/d;->d:I

    iget v1, p0, Lcn/jiguang/av/d;->a:I

    if-nez v1, :cond_7d

    :try_start_38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcn/jiguang/av/d;->b:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcn/jiguang/av/d;->g:I

    invoke-static {v0}, Lcn/jiguang/av/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/av/d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcn/jiguang/av/d;->c:I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_51

    goto :goto_53

    :catchall_51
    iput p2, p0, Lcn/jiguang/av/d;->a:I

    :goto_53
    :try_start_53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iput p2, p0, Lcn/jiguang/av/d;->d:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "idc parse success, value:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/jiguang/av/d;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_6d

    goto :goto_9a

    :catchall_6d
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse idc failed, error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_97

    :cond_7d
    const/16 p1, 0x3f4

    if-ne v1, p1, :cond_94

    :try_start_81
    invoke-static {v0}, Lcn/jiguang/av/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/av/d;->i:Ljava/lang/String;
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_88

    goto :goto_8a

    :catchall_88
    iput p2, p0, Lcn/jiguang/av/d;->a:I

    :goto_8a
    const/4 p1, 0x0

    invoke-static {p1}, Lcn/jiguang/api/JCoreManager;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/jiguang/av/d;->i:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_94
    return-void

    :cond_95
    const-string p2, "No body to parse."

    :goto_97
    invoke-static {p1, p2}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LoginResponse] - code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/av/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/av/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/av/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/av/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/av/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/av/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/av/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
