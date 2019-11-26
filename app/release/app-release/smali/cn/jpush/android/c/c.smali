.class public Lcn/jpush/android/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/c/c;->a:J

    const/4 v2, 0x0

    iput v2, p0, Lcn/jpush/android/c/c;->b:I

    iput v2, p0, Lcn/jpush/android/c/c;->c:I

    iput v2, p0, Lcn/jpush/android/c/c;->d:I

    const-string v3, ""

    iput-object v3, p0, Lcn/jpush/android/c/c;->e:Ljava/lang/String;

    iput-wide v0, p0, Lcn/jpush/android/c/c;->f:J

    iput-wide v0, p0, Lcn/jpush/android/c/c;->g:J

    iput-wide v0, p0, Lcn/jpush/android/c/c;->a:J

    iput v2, p0, Lcn/jpush/android/c/c;->b:I

    iput v2, p0, Lcn/jpush/android/c/c;->c:I

    iput v2, p0, Lcn/jpush/android/c/c;->d:I

    iput-object v3, p0, Lcn/jpush/android/c/c;->e:Ljava/lang/String;

    iput-wide v0, p0, Lcn/jpush/android/c/c;->f:J

    iput-wide v0, p0, Lcn/jpush/android/c/c;->g:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/c/c;->a:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcn/jpush/android/c/c;->b:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcn/jpush/android/c/c;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/jpush/android/c/c;->e:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcn/jpush/android/c/c;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcn/jpush/android/c/c;->c:I

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcn/jpush/android/c/c;->g:J

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcn/jpush/android/c/c;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcn/jpush/android/c/c;->d:I

    return-void
.end method

.method public c(J)V
    .registers 3

    iput-wide p1, p0, Lcn/jpush/android/c/c;->f:J

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/jpush/android/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/c/c;->g:J

    return-wide v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcn/jpush/android/c/c;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalNotificationDBData [ln_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jpush/android/c/c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ln_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/c/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ln_remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/c/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ln_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/c/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ln_extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jpush/android/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ln_trigger_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jpush/android/c/c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ln_add_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jpush/android/c/c;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
