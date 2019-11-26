.class Lcom/baidu/lbsapi/auth/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Hashtable;

.field final synthetic f:Lcom/baidu/lbsapi/auth/LBSAuthManager;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/LBSAuthManager;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 7

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/j;->f:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iput p2, p0, Lcom/baidu/lbsapi/auth/j;->a:I

    iput-boolean p3, p0, Lcom/baidu/lbsapi/auth/j;->b:Z

    iput-object p4, p0, Lcom/baidu/lbsapi/auth/j;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/lbsapi/auth/j;->e:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/lbsapi/auth/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; forced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/j;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "checkAK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->f:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/j;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/lbsapi/auth/j;->a:I

    const/16 v1, 0x259

    if-eq v0, v1, :cond_6f

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/j;->b:Z

    if-nez v1, :cond_6f

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->f:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_6f

    :cond_48
    const/16 v0, 0x25a

    iget v1, p0, Lcom/baidu/lbsapi/auth/j;->a:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_62

    const-string v0, "authenticate wait "

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->c()Lcom/baidu/lbsapi/auth/m;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->c()Lcom/baidu/lbsapi/auth/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/m;->b()V

    goto :goto_67

    :cond_62
    const-string v0, "authenticate else"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->f:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    :cond_6f
    :goto_6f
    const-string v0, "authenticate sendAuthRequest"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/b;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authStrings.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    if-eqz v5, :cond_aa

    array-length v0, v5

    const/4 v1, 0x1

    if-le v0, v1, :cond_aa

    const-string v0, "more sha1 auth"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->f:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-boolean v2, p0, Lcom/baidu/lbsapi/auth/j;->b:Z

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/j;->e:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/baidu/lbsapi/auth/j;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    :cond_aa
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->f:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/j;->b:Z

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/j;->e:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/j;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->a(Lcom/baidu/lbsapi/auth/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    :goto_b7
    return-void
.end method
