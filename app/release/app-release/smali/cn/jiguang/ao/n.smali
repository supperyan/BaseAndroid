.class public final Lcn/jiguang/ao/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/jiguang/ao/n;->a:I

    iput-object p2, p0, Lcn/jiguang/ao/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcn/jiguang/ao/n;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/jiguang/ao/n;->b:Ljava/lang/String;

    return-object v0
.end method
