.class Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .registers 2
    .parameter

    .line 352
    iput-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .line 356
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 p3, 0x1

    and-int/2addr p1, p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_18

    .line 357
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v2, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v0

    .line 358
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v3

    .line 357
    invoke-virtual {p1, v2, v3, v4}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 360
    :cond_18
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-eqz p1, :cond_2d

    .line 361
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v3, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p3

    .line 362
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 361
    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 365
    :cond_2d
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 p3, 0x4

    and-int/2addr p1, p3

    const/4 v3, 0x3

    if-eqz p1, :cond_43

    .line 366
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v4, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v2

    .line 367
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 366
    invoke-virtual {p1, v4, v5, v6}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 370
    :cond_43
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_57

    .line 371
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v4, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v3, v4, v3

    .line 372
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 371
    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 374
    :cond_57
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x10

    const/4 v3, 0x5

    if-eqz p1, :cond_6d

    .line 375
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v4, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, v4, p3

    .line 376
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 375
    invoke-virtual {p1, p3, v4, v5}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 378
    :cond_6d
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x40

    const/4 p3, 0x7

    const/4 v4, 0x6

    if-eqz p1, :cond_84

    .line 379
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v5, v5, v4

    .line 380
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 379
    invoke-virtual {p1, v5, v6, v7}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 383
    :cond_84
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_99

    .line 384
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v3, v5, v3

    .line 385
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 384
    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 388
    :cond_99
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_ae

    .line 389
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v3, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, v3, p3

    .line 390
    invoke-virtual {p2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v3

    .line 389
    invoke-virtual {p1, p3, v3, v4}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 393
    :cond_ae
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_c3

    .line 394
    iget-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object p3, p1, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, p3, v1

    .line 395
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    .line 394
    invoke-virtual {p1, p3, v0, v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_c3
    return-void
.end method
