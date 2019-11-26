.class final Lcn/jiguang/ar/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/jiguang/ar/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 12

    check-cast p1, Lcn/jiguang/ar/d;

    check-cast p2, Lcn/jiguang/ar/d;

    invoke-virtual {p1, p2}, Lcn/jiguang/ar/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget v0, p1, Lcn/jiguang/ar/d;->b:I

    iget v1, p2, Lcn/jiguang/ar/d;->b:I

    const/4 v2, -0x1

    if-le v0, v1, :cond_12

    return v2

    :cond_12
    iget v0, p1, Lcn/jiguang/ar/d;->b:I

    iget v1, p2, Lcn/jiguang/ar/d;->b:I

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1a

    return v3

    :cond_1a
    iget v0, p1, Lcn/jiguang/ar/d;->e:I

    iget v1, p2, Lcn/jiguang/ar/d;->e:I

    if-le v0, v1, :cond_21

    return v2

    :cond_21
    iget v0, p1, Lcn/jiguang/ar/d;->e:I

    iget v1, p2, Lcn/jiguang/ar/d;->e:I

    if-ge v0, v1, :cond_28

    return v3

    :cond_28
    iget-wide v0, p1, Lcn/jiguang/ar/d;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_48

    iget-wide v0, p2, Lcn/jiguang/ar/d;->d:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_48

    iget-wide v0, p1, Lcn/jiguang/ar/d;->d:J

    iget-wide v6, p2, Lcn/jiguang/ar/d;->d:J

    cmp-long v8, v0, v6

    if-gez v8, :cond_3f

    return v2

    :cond_3f
    iget-wide v0, p1, Lcn/jiguang/ar/d;->d:J

    iget-wide v6, p2, Lcn/jiguang/ar/d;->d:J

    cmp-long v8, v0, v6

    if-lez v8, :cond_48

    return v3

    :cond_48
    iget-wide v0, p1, Lcn/jiguang/ar/d;->c:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6b

    iget-wide v0, p2, Lcn/jiguang/ar/d;->c:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6b

    iget-wide v0, p1, Lcn/jiguang/ar/d;->c:J

    iget-wide v4, p2, Lcn/jiguang/ar/d;->c:J

    const-wide/32 v6, 0x2bf20

    add-long/2addr v4, v6

    cmp-long v8, v0, v4

    if-lez v8, :cond_61

    return v2

    :cond_61
    iget-wide v0, p1, Lcn/jiguang/ar/d;->c:J

    iget-wide p1, p2, Lcn/jiguang/ar/d;->c:J

    sub-long/2addr p1, v6

    cmp-long v2, v0, p1

    if-gez v2, :cond_6b

    return v3

    :cond_6b
    const/4 p1, 0x0

    return p1
.end method
