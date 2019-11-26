.class public final Lcn/jiguang/f/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcn/jiguang/f/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const-string v0, "2g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x2

    return p0

    :cond_1e
    const-string v0, "3g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p0, 0x3

    return p0

    :cond_28
    const-string v0, "4g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p0, 0x4

    return p0

    :cond_32
    const-string v0, "5g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x5

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcn/jiguang/f/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCurrentNetType - type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeleonyManagerUtils"

    invoke-static {v1, v0}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "unknown"

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    :try_start_20
    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const-class p1, Landroid/telephony/TelephonyManager;

    const-string v5, "getNetworkClass"

    invoke-static {p1, v5, v4, v3}, Lcn/jiguang/f/h;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_42

    move-object p0, v2

    goto :goto_66

    :cond_42
    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_4e

    const-string p0, "2g"

    goto :goto_66

    :cond_4e
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5b

    const-string p0, "3g"

    goto :goto_66

    :cond_5b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_66

    const-string p0, "4g"

    :cond_66
    :goto_66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "step2 - type:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/an/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_77} :catch_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_77} :catch_78
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    nop

    :cond_79
    :goto_79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_80

    move-object p0, v2

    :cond_80
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    :try_start_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    const-string p0, ""

    :goto_f
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "unknown"

    :try_start_2
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    const-string v0, "wifi"

    goto :goto_52

    :cond_1a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const-string v1, "TeleonyManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNetworkClass networkType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/an/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_4e

    const-string v1, "4g"

    const-string v2, "3g"

    const-string v3, "2g"

    packed-switch p0, :pswitch_data_54

    packed-switch p0, :pswitch_data_76

    goto :goto_52

    :pswitch_44
    move-object v0, v1

    goto :goto_52

    :pswitch_46
    move-object v0, v2

    goto :goto_52

    :pswitch_48
    move-object v0, v3

    goto :goto_52

    :pswitch_4a
    :try_start_4a
    const-string p0, "5g"
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4c} :catch_4e

    move-object v0, p0

    goto :goto_52

    :catch_4e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_52
    :goto_52
    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_46
        :pswitch_48
        :pswitch_46
        :pswitch_46
        :pswitch_48
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_46
        :pswitch_46
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x10
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method
