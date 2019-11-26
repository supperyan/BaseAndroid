.class public Landroid/support/v7/util/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/SortedList$BatchedCallback;,
        Landroid/support/v7/util/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

.field private mCallback:Landroid/support/v7/util/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    .line 91
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    .line 103
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 542
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    const/4 v0, 0x0

    goto :goto_3d

    .line 545
    :cond_12
    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge v0, v2, :cond_3d

    .line 546
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 547
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 548
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 550
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, p2, v0

    return v0

    .line 553
    :cond_2f
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 554
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, v2, p1}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    return v0

    .line 559
    :cond_3d
    :goto_3d
    invoke-direct {p0, v0, p1}, Landroid/support/v7/util/SortedList;->addToData(ILjava/lang/Object;)V

    if-eqz p2, :cond_47

    .line 561
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    :cond_47
    return v0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 252
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v0

    .line 258
    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v1, :cond_18

    .line 259
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 260
    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 261
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_1b

    .line 263
    :cond_18
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->merge([Ljava/lang/Object;I)V

    :goto_1b
    return-void
.end method

.method private addToData(ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 793
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-gt p1, v0, :cond_3c

    .line 797
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_2b

    .line 799
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 800
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    aput-object p2, v0, p1

    .line 802
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    goto :goto_35

    :cond_2b
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 806
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 809
    :goto_35
    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return-void

    .line 794
    :cond_3c
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot add item to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because size is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 814
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_2d

    add-int v2, p3, p4

    .line 744
    div-int/lit8 v2, v2, 0x2

    .line 745
    aget-object v3, p2, v2

    .line 746
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_16

    add-int/lit8 v2, v2, 0x1

    move p3, v2

    goto :goto_0

    :cond_16
    if-nez v4, :cond_2b

    .line 750
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, v3, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    return v2

    .line 753
    :cond_21
    invoke-direct {p0, p1, v2, p3, p4}, Landroid/support/v7/util/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result p1

    if-ne p5, v1, :cond_2a

    if-ne p1, v0, :cond_2a

    move p1, v2

    :cond_2a
    return p1

    :cond_2b
    move p4, v2

    goto :goto_0

    :cond_2d
    if-ne p5, v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 p3, -0x1

    :goto_31
    return p3
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    :goto_0
    if-ge p3, p4, :cond_10

    .line 397
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v1, p2, p3

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return p3

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_10
    const/4 p1, -0x1

    return p1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, p3, :cond_1d

    .line 770
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 771
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_1d

    .line 775
    :cond_11
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1d
    :goto_1d
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p4, :cond_37

    .line 780
    iget-object p3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object p3, p3, p2

    .line 781
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p3, p1}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_37

    .line 785
    :cond_2e
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p3, p1}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d

    return p2

    :cond_37
    :goto_37
    const/4 p1, -0x1

    return p1
.end method

.method private merge([Ljava/lang/Object;I)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 410
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 413
    :cond_b
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 414
    iput v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 415
    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iput v3, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0xa

    .line 418
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 419
    iput v2, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 422
    :cond_27
    :goto_27
    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v4, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v3, v4, :cond_2f

    if-ge v2, p2, :cond_61

    .line 423
    :cond_2f
    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v4, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ne v3, v4, :cond_50

    sub-int/2addr p2, v2

    .line 426
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    invoke-static {p1, v2, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget p1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 428
    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 429
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1, p2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_61

    :cond_50
    if-ne v2, p2, :cond_6a

    sub-int/2addr v4, v3

    .line 436
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    invoke-static {p1, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget p1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    :cond_61
    :goto_61
    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_69

    .line 470
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    :cond_69
    return-void

    .line 441
    :cond_6a
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    aget-object v3, v4, v3

    .line 442
    aget-object v4, p1, v2

    .line 443
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_92

    .line 446
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v4, v3, v5

    .line 447
    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/lit8 v2, v2, 0x1

    .line 449
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_27

    :cond_92
    if-nez v5, :cond_c3

    .line 450
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 452
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    .line 454
    iget v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 455
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 456
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v6, v1

    .line 457
    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 456
    invoke-virtual {v5, v6, v1, v3}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_27

    .line 462
    :cond_c3
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v3, v4, v5

    .line 463
    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    goto/16 :goto_27
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 593
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 597
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private removeItemAtIndex(IZ)V
    .registers 7
    .parameter
    .parameter

    .line 602
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 604
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    if-eqz p2, :cond_1f

    .line 606
    iget-object p2, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p2, p1, v3}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    :cond_1f
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object p1, v0, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 335
    iput v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 336
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 337
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .registers 9
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v0, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    :cond_b
    const/4 v2, 0x0

    .line 273
    iput v2, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 274
    iget v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    iput v3, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    .line 275
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 277
    iput v2, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 278
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v2

    .line 279
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 281
    :cond_28
    :goto_28
    iget v3, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    if-lt v3, v2, :cond_32

    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v4, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ge v3, v4, :cond_5f

    .line 282
    :cond_32
    iget v3, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v4, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v3, v4, :cond_50

    .line 283
    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v2, v1

    .line 285
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget p1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 287
    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 288
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_5f

    .line 291
    :cond_50
    iget v5, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    if-lt v5, v2, :cond_68

    sub-int/2addr v4, v3

    .line 293
    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 294
    iget-object p1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {p1, v5, v4}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    :cond_5f
    :goto_5f
    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_67

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    :cond_67
    return-void

    .line 298
    :cond_68
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    aget-object v3, v4, v3

    .line 299
    aget-object v4, p1, v5

    .line 301
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_7a

    .line 303
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->replaceAllRemove()V

    goto :goto_28

    :cond_7a
    if-lez v5, :cond_80

    .line 305
    invoke-direct {p0, v4}, Landroid/support/v7/util/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_28

    .line 307
    :cond_80
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 310
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->replaceAllRemove()V

    .line 311
    invoke-direct {p0, v4}, Landroid/support/v7/util/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_28

    .line 313
    :cond_8f
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    aput-object v4, v5, v6

    .line 314
    iget v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v6, v1

    .line 315
    iput v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    .line 316
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 319
    iget-object v5, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v6, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    sub-int/2addr v6, v1

    .line 320
    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 319
    invoke-virtual {v5, v6, v1, v3}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_28
.end method

.method private replaceAllRemove()V
    .registers 4

    .line 341
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 342
    iget v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 343
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v2, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .registers 9
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 353
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    .line 358
    :cond_5
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    :goto_d
    array-length v3, p1

    if-ge v0, v3, :cond_39

    .line 366
    aget-object v3, p1, v0

    .line 368
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2d

    .line 372
    invoke-direct {p0, v3, p1, v2, v1}, Landroid/support/v7/util/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 375
    aput-object v3, p1, v4

    goto :goto_36

    :cond_26
    if-eq v1, v0, :cond_2a

    .line 379
    aput-object v3, p1, v1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_2d
    if-eq v1, v0, :cond_31

    .line 386
    aput-object v3, p1, v1

    :cond_31
    add-int/lit8 v2, v1, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_39
    return v1
.end method

.method private throwIfInMutationOperation()V
    .registers 3

    .line 479
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 480
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 194
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 163
    array-length v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_d

    .line 168
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_14

    .line 170
    :cond_d
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    :goto_14
    return-void
.end method

.method public beginBatchedUpdates()V
    .registers 3

    .line 518
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 519
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v1, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v1, :cond_a

    return-void

    .line 522
    :cond_a
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v1, :cond_15

    .line 523
    new-instance v1, Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-direct {v1, v0}, Landroid/support/v7/util/SortedList$BatchedCallback;-><init>(Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v1, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    .line 525
    :cond_15
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    return-void
.end method

.method public clear()V
    .registers 5

    .line 822
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 823
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v0, :cond_8

    return-void

    .line 827
    :cond_8
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 828
    iput v3, p0, Landroid/support/v7/util/SortedList;->mSize:I

    .line 829
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    return-void
.end method

.method public endBatchedUpdates()V
    .registers 3

    .line 532
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 533
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v1, v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v1, :cond_e

    .line 534
    check-cast v0, Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 536
    :cond_e
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_18

    .line 537
    iget-object v0, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iput-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    :cond_18
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 705
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge p1, v0, :cond_1a

    if-ltz p1, :cond_1a

    .line 709
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 712
    iget v1, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    if-lt p1, v1, :cond_15

    sub-int/2addr p1, v1

    .line 713
    iget v1, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1

    .line 716
    :cond_15
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 706
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 729
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    return v0

    .line 733
    :cond_14
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    iget v6, p0, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result p1

    if-eq p1, v1, :cond_2a

    .line 735
    iget v0, p0, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/util/SortedList;->mNewDataStart:I

    add-int/2addr p1, v0

    return p1

    :cond_2a
    return v1

    .line 739
    :cond_2b
    iget-object v2, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result p1

    return p1
.end method

.method public recalculatePositionOfItemAt(I)V
    .registers 4
    .parameter

    .line 685
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 687
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 688
    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 689
    invoke-direct {p0, v0, v1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    if-eq p1, v0, :cond_16

    .line 691
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    :cond_16
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 574
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    const/4 v0, 0x1

    .line 575
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 587
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 588
    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 248
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/util/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .registers 3
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    if-eqz p2, :cond_9

    .line 220
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    goto :goto_10

    .line 222
    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/util/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    :goto_10
    return-void
.end method

.method public size()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/support/v7/util/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 631
    invoke-direct {p0}, Landroid/support/v7/util/SortedList;->throwIfInMutationOperation()V

    .line 632
    invoke-virtual {p0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p2, :cond_16

    .line 634
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_16

    :cond_14
    const/4 v3, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v3, 0x1

    :goto_17
    if-eq v0, p2, :cond_31

    .line 637
    iget-object v4, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v4, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_31

    .line 639
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    if-eqz v3, :cond_30

    .line 641
    iget-object v1, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v1, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    :cond_30
    return-void

    :cond_31
    if-eqz v3, :cond_3c

    .line 647
    iget-object v3, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Landroid/support/v7/util/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, v2, v0}, Landroid/support/v7/util/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 650
    :cond_3c
    invoke-direct {p0, p1, v1}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 651
    invoke-direct {p0, p2, v1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result p2

    if-eq p1, p2, :cond_4a

    .line 653
    iget-object v0, p0, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    :cond_4a
    return-void
.end method
