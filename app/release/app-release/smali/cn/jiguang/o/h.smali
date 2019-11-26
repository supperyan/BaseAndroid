.class public final Lcn/jiguang/o/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcn/jiguang/api/JCoreManager;->isInternal()Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/o/h;->a:Z

    return-void
.end method
