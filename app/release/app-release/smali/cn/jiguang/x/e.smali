.class public final Lcn/jiguang/x/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/core/IIdentifierListener;


# instance fields
.field private a:Lcn/jiguang/x/d;


# direct methods
.method public constructor <init>(Lcn/jiguang/x/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/x/e;->a:Lcn/jiguang/x/d;

    return-void
.end method


# virtual methods
.method public final OnSupport(ZLcom/bun/miitmdid/supplier/IdSupplier;)V
    .registers 8

    const-string p1, ""

    if-nez p2, :cond_c

    :try_start_4
    iget-object p2, p0, Lcn/jiguang/x/e;->a:Lcn/jiguang/x/d;

    iget-object p2, p2, Lcn/jiguang/x/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void

    :cond_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2}, Lcom/bun/miitmdid/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/bun/miitmdid/supplier/IdSupplier;->getVAID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/bun/miitmdid/supplier/IdSupplier;->getAAID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "oaid"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "vaid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "aaid"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/x/e;->a:Lcn/jiguang/x/d;

    iget-object v1, v1, Lcn/jiguang/x/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/bun/miitmdid/supplier/IdSupplier;->shutDown()V
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    :try_start_4d
    iget-object p2, p0, Lcn/jiguang/x/e;->a:Lcn/jiguang/x/d;

    iget-object p2, p2, Lcn/jiguang/x/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_54

    :catchall_54
    return-void
.end method
