.class Lcn/jpush/android/i/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/i/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcn/jpush/android/i/c;


# direct methods
.method constructor <init>(Lcn/jpush/android/i/c;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcn/jpush/android/i/c$1;->d:Lcn/jpush/android/i/c;

    iput-object p2, p0, Lcn/jpush/android/i/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/jpush/android/i/c$1;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcn/jpush/android/i/c$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcn/jpush/android/i/c$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcn/jpush/android/i/c$1;->a:Ljava/lang/String;

    const-string v1, "action_notification_arrived"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcn/jpush/android/i/c$1;->d:Lcn/jpush/android/i/c;

    iget-object v1, p0, Lcn/jpush/android/i/c$1;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcn/jpush/android/i/c;->a(Lcn/jpush/android/i/c;Landroid/os/Bundle;)Lcn/jpush/android/i/c$a;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v1, p0, Lcn/jpush/android/i/c$1;->c:Landroid/content/Context;

    iget-object v2, v0, Lcn/jpush/android/i/c$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcn/jpush/android/i/c$a;->a:Ljava/lang/String;

    iget v4, v0, Lcn/jpush/android/i/c$a;->b:I

    iget-byte v5, v0, Lcn/jpush/android/i/c$a;->d:B

    const/4 v6, 0x0

    :goto_27
    invoke-static/range {v1 .. v6}, Lcn/jpush/android/i/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IBZ)V

    goto :goto_7e

    :cond_2b
    iget-object v0, p0, Lcn/jpush/android/i/c$1;->a:Ljava/lang/String;

    const-string v1, "action_notification_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcn/jpush/android/i/c$1;->d:Lcn/jpush/android/i/c;

    iget-object v1, p0, Lcn/jpush/android/i/c$1;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcn/jpush/android/i/c;->a(Lcn/jpush/android/i/c;Landroid/os/Bundle;)Lcn/jpush/android/i/c$a;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v1, p0, Lcn/jpush/android/i/c$1;->c:Landroid/content/Context;

    iget-object v2, v0, Lcn/jpush/android/i/c$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcn/jpush/android/i/c$a;->a:Ljava/lang/String;

    iget v4, v0, Lcn/jpush/android/i/c$a;->b:I

    iget-byte v5, v0, Lcn/jpush/android/i/c$a;->d:B

    const/4 v6, 0x1

    goto :goto_27

    :cond_4b
    iget-object v0, p0, Lcn/jpush/android/i/c$1;->a:Ljava/lang/String;

    const-string v1, "action_notification_show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_7e

    :cond_56
    iget-object v0, p0, Lcn/jpush/android/i/c$1;->a:Ljava/lang/String;

    const-string v1, "action_register_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcn/jpush/android/i/c$1;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_7e

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/i/c$1;->b:Landroid/os/Bundle;

    const/4 v2, -0x1

    const-string v3, "platform"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iget-object v2, p0, Lcn/jpush/android/i/c$1;->d:Lcn/jpush/android/i/c;

    iget-object v3, p0, Lcn/jpush/android/i/c$1;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcn/jpush/android/i/c;->a(Landroid/content/Context;BLjava/lang/String;)V

    :cond_7e
    :goto_7e
    return-void
.end method
