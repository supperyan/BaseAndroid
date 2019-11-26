.class public Lcn/jpush/android/g/c;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:J

.field c:J

.field d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IJJLjava/nio/ByteBuffer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/jpush/android/g/c;->a:I

    iput-wide p2, p0, Lcn/jpush/android/g/c;->b:J

    iput-object p6, p0, Lcn/jpush/android/g/c;->d:Ljava/nio/ByteBuffer;

    iput-wide p4, p0, Lcn/jpush/android/g/c;->c:J

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcn/jpush/android/g/c;->a:I

    return v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/g/c;->b:J

    return-wide v0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/g/c;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/g/c;->c:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JPushResponse{cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/g/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jpush/android/g/c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rquestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jpush/android/g/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
