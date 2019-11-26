.class public final Lcn/jiguang/av/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Lcn/jiguang/av/c;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/jiguang/av/c;Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/av/e;->f:Lcn/jiguang/av/c;

    const-string p1, "RegisterResponse"

    if-eqz p2, :cond_6e

    iput-object p2, p0, Lcn/jiguang/av/e;->g:Ljava/nio/ByteBuffer;

    const/16 p2, 0x2710

    :try_start_d
    iget-object v0, p0, Lcn/jiguang/av/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcn/jiguang/av/e;->a:I
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    iput p2, p0, Lcn/jiguang/av/e;->a:I

    :goto_18
    iget v0, p0, Lcn/jiguang/av/e;->a:I

    if-lez v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response error - code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/av/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object p1, p0, Lcn/jiguang/av/e;->g:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcn/jiguang/av/e;->a:I

    if-nez v0, :cond_4b

    :try_start_35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/av/e;->b:J

    invoke-static {p1}, Lcn/jiguang/av/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/av/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/av/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/av/e;->d:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_48

    goto :goto_73

    :catchall_48
    iput p2, p0, Lcn/jiguang/av/e;->a:I

    goto :goto_73

    :cond_4b
    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_56

    :try_start_4f
    invoke-static {p1}, Lcn/jiguang/av/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/av/e;->h:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_48

    goto :goto_73

    :cond_56
    const/16 v1, 0x3f4

    if-ne v0, v1, :cond_6d

    :try_start_5a
    invoke-static {p1}, Lcn/jiguang/av/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/av/e;->i:Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_61

    goto :goto_63

    :catchall_61
    iput p2, p0, Lcn/jiguang/av/e;->a:I

    :goto_63
    const/4 p1, 0x0

    invoke-static {p1}, Lcn/jiguang/api/JCoreManager;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/jiguang/av/e;->i:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6d
    return-void

    :cond_6e
    const-string p2, "No body to parse."

    invoke-static {p1, p2}, Lcn/jiguang/an/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RegisterResponse] - code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/av/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", juid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/av/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/av/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/av/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/av/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/av/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
