.class Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SnackbarManager$SnackbarRecord;,
        Landroid/support/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static snackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/os/Handler;

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .registers 5
    .parameter
    .parameter

    .line 202
    iget-object v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    if-eqz v0, :cond_14

    .line 205
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    invoke-interface {v0, p2}, Landroid/support/design/widget/SnackbarManager$Callback;->dismiss(I)V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .registers 1

    .line 35
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    invoke-direct {v0}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    .line 38
    :cond_b
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3
    .parameter

    .line 213
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3
    .parameter

    .line 217
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .registers 6
    .parameter

    .line 221
    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/16 v0, 0xabe

    .line 227
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_f

    .line 228
    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_16

    .line 229
    :cond_f
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    const/16 v0, 0x5dc

    .line 232
    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackbarLocked()V
    .registers 3

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1b

    .line 188
    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 191
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/SnackbarManager$Callback;

    if-eqz v1, :cond_19

    .line 193
    invoke-interface {v1}, Landroid/support/design/widget/SnackbarManager$Callback;->show()V

    goto :goto_1b

    .line 196
    :cond_19
    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V
    .registers 5
    .parameter
    .parameter

    .line 104
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 106
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_1a

    .line 107
    :cond_f
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 108
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 110
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .registers 4
    .parameter

    .line 237
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_b

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_f

    :cond_b
    const/4 v1, 0x2

    .line 239
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 241
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3
    .parameter

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_9
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 4
    .parameter

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    :goto_13
    monitor-exit v0

    return p1

    :catchall_15
    move-exception p1

    .line 168
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 3
    .parameter

    .line 118
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 122
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_13

    .line 123
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 126
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 3
    .parameter

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 136
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 138
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public pauseTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4
    .parameter

    .line 142
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean p1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez p1, :cond_1b

    .line 144
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    .line 145
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public restoreTimeoutIfPaused(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4
    .parameter

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean p1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz p1, :cond_19

    .line 153
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    .line 154
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 156
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public show(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 5
    .parameter
    .parameter

    .line 72
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 75
    iget-object p2, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, p2, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 79
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 81
    monitor-exit v0

    return-void

    .line 82
    :cond_1b
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 84
    iget-object p2, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, p2, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_2d

    .line 87
    :cond_26
    new-instance v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    iput-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 90
    :goto_2d
    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 p2, 0x4

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 93
    monitor-exit v0

    return-void

    :cond_3c
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p1
.end method
