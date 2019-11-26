.class public final Lcn/jiguang/as/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/as/g;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcn/jiguang/as/g;

    const/4 v1, 0x3

    const-string v2, "Message Section"

    invoke-direct {v0, v2, v1}, Lcn/jiguang/as/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcn/jiguang/as/p;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcn/jiguang/as/p;->c:[Ljava/lang/String;

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    invoke-virtual {v0, v1}, Lcn/jiguang/as/g;->a(I)V

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/jiguang/as/g;->a(Z)V

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    const/4 v3, 0x0

    const-string v4, "qd"

    invoke-virtual {v0, v3, v4}, Lcn/jiguang/as/g;->a(ILjava/lang/String;)V

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    const-string v4, "an"

    invoke-virtual {v0, v2, v4}, Lcn/jiguang/as/g;->a(ILjava/lang/String;)V

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    const/4 v4, 0x2

    const-string v5, "au"

    invoke-virtual {v0, v4, v5}, Lcn/jiguang/as/g;->a(ILjava/lang/String;)V

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    const-string v5, "ad"

    invoke-virtual {v0, v1, v5}, Lcn/jiguang/as/g;->a(ILjava/lang/String;)V

    sget-object v0, Lcn/jiguang/as/p;->b:[Ljava/lang/String;

    const-string v5, "QUESTIONS"

    aput-object v5, v0, v3

    const-string v5, "ANSWERS"

    aput-object v5, v0, v2

    const-string v5, "AUTHORITY RECORDS"

    aput-object v5, v0, v4

    const-string v5, "ADDITIONAL RECORDS"

    aput-object v5, v0, v1

    sget-object v0, Lcn/jiguang/as/p;->c:[Ljava/lang/String;

    const-string v6, "ZONE"

    aput-object v6, v0, v3

    const-string v3, "PREREQUISITES"

    aput-object v3, v0, v2

    const-string v2, "UPDATE RECORDS"

    aput-object v2, v0, v4

    aput-object v5, v0, v1

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcn/jiguang/as/p;->a:Lcn/jiguang/as/g;

    invoke-virtual {v0, p0}, Lcn/jiguang/as/g;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
