.class final Lcn/jiguang/net/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcn/jiguang/net/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/jiguang/net/HttpUtils$HttpListener;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/jiguang/net/HttpUtils$HttpListener;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcn/jiguang/net/b;->a:Lcn/jiguang/net/HttpUtils$HttpListener;

    iput-object p2, p0, Lcn/jiguang/net/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_12

    array-length v0, p1

    if-nez v0, :cond_8

    goto :goto_12

    :cond_8
    iget-object v0, p0, Lcn/jiguang/net/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/net/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected final onPreExecute()V
    .registers 1

    return-void
.end method
