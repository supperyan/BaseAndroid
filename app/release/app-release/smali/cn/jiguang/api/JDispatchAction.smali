.class public abstract Lcn/jiguang/api/JDispatchAction;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforLogin(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public beforRegister(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public checkAction(Ljava/lang/String;I)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public abstract dispatchMessage(Landroid/content/Context;Ljava/lang/String;IIJJLjava/nio/ByteBuffer;)V
.end method

.method public dispatchTimeOutMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 6

    return-void
.end method

.method public abstract getLogPriority(Ljava/lang/String;)S
.end method

.method public abstract getLoginFlag(Ljava/lang/String;)S
.end method

.method public getPInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getRegFlag(Ljava/lang/String;)S
.end method

.method public abstract getRegPriority(Ljava/lang/String;)S
.end method

.method public abstract getReportVersionKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSdkVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserCtrlProperty(Ljava/lang/String;)S
.end method

.method public handleMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public abstract isSupportedCMD(Ljava/lang/String;I)Z
.end method

.method public onActionRun(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    return-void
.end method

.method public onSendData(Landroid/content/Context;Ljava/lang/String;JII)Ljava/lang/Object;
    .registers 7

    const/4 p1, 0x0

    return-object p1
.end method
