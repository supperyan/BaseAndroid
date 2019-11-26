.class public Lcn/jiguang/dy/Protocol;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Protocol"

.field public static mContext:Landroid/content/Context; = null

.field private static p:Lcn/jiguang/dy/Protocol; = null

.field public static final soName:Ljava/lang/String; = "jcore222"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcn/jiguang/dy/Protocol;

    invoke-direct {v0}, Lcn/jiguang/dy/Protocol;-><init>()V

    sput-object v0, Lcn/jiguang/dy/Protocol;->p:Lcn/jiguang/dy/Protocol;

    :try_start_7
    const-string v0, "jcore222"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System.loadLibrary::jcore222"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushProtocol"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bf()Lcn/jiguang/dy/Protocol;
    .registers 1

    sget-object v0, Lcn/jiguang/dy/Protocol;->p:Lcn/jiguang/dy/Protocol;

    return-object v0
.end method

.method public static d(IILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcn/jiguang/dy/Protocol;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcn/jiguang/dy/b;->a(Landroid/content/Context;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Z
    .registers 2

    invoke-static {}, Lcn/jiguang/dy/Protocol;->bf()Lcn/jiguang/dy/Protocol;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/dy/Protocol;->c(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public native c(I)Z
.end method
