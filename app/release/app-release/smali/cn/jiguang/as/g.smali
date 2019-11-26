.class final Lcn/jiguang/as/g;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/Integer;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcn/jiguang/as/g;->a:[Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lcn/jiguang/as/g;->a:[Ljava/lang/Integer;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/as/g;->d:Ljava/lang/String;

    const/4 p1, 0x3

    iput p1, p0, Lcn/jiguang/as/g;->e:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/jiguang/as/g;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/jiguang/as/g;->c:Ljava/util/HashMap;

    const p1, 0x7fffffff

    iput p1, p0, Lcn/jiguang/as/g;->g:I

    return-void
.end method

.method private static c(I)Ljava/lang/Integer;
    .registers 3

    if-ltz p0, :cond_a

    sget-object v0, Lcn/jiguang/as/g;->a:[Ljava/lang/Integer;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object p0, v0, p0

    return-object p0

    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private d(I)V
    .registers 5

    if-ltz p1, :cond_7

    iget v0, p0, Lcn/jiguang/as/g;->g:I

    if-gt p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/jiguang/as/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is out of range"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    const/4 p1, 0x3

    iput p1, p0, Lcn/jiguang/as/g;->g:I

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcn/jiguang/as/g;->d(I)V

    invoke-static {p1}, Lcn/jiguang/as/g;->c(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lcn/jiguang/as/g;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_18

    :cond_11
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :cond_18
    :goto_18
    iget-object v0, p0, Lcn/jiguang/as/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/jiguang/as/g;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/as/g;->h:Z

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcn/jiguang/as/g;->d(I)V

    iget-object v0, p0, Lcn/jiguang/as/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Lcn/jiguang/as/g;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/jiguang/as/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/jiguang/as/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    return-object p1
.end method
