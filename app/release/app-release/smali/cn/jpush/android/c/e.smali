.class public abstract Lcn/jpush/android/c/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private volatile c:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/c/e;->a:I

    iput v0, p0, Lcn/jpush/android/c/e;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/c/e;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/c/e;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcn/jpush/android/c/e;->g:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/c/e;->h:Ljava/lang/String;

    iput p4, p0, Lcn/jpush/android/c/e;->i:I

    iput-object p3, p0, Lcn/jpush/android/c/e;->j:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    :try_start_3
    iget-object p1, p0, Lcn/jpush/android/c/e;->e:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_23

    :try_start_6
    invoke-virtual {p0}, Lcn/jpush/android/c/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Lcn/jpush/android/c/e;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/jpush/android/c/e;->b:I

    monitor-exit p1

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0

    :cond_13
    iget-object p1, p0, Lcn/jpush/android/c/e;->f:Ljava/lang/Object;

    monitor-enter p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_23

    :try_start_16
    invoke-virtual {p0}, Lcn/jpush/android/c/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Lcn/jpush/android/c/e;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/jpush/android/c/e;->a:I

    monitor-exit p1

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcn/jpush/android/c/e;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget-object v3, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Lcn/jpush/android/c/e;->b:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcn/jpush/android/c/e;->b:I

    if-gtz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    :goto_1d
    if-eqz v2, :cond_2c

    iput v1, p0, Lcn/jpush/android/c/e;->b:I

    iget-object v1, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2a
    iput-object v0, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2c
    monitor-exit p1

    goto :goto_59

    :catchall_2e
    move-exception v0

    monitor-exit p1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    iget-object p1, p0, Lcn/jpush/android/c/e;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_34
    iget-object v3, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_49

    iget v3, p0, Lcn/jpush/android/c/e;->a:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcn/jpush/android/c/e;->a:I

    if-gtz v3, :cond_48

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :cond_49
    :goto_49
    if-eqz v2, :cond_58

    iput v1, p0, Lcn/jpush/android/c/e;->a:I

    iget-object v1, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_56
    iput-object v0, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_58
    monitor-exit p1

    :goto_59
    return-void

    :catchall_5a
    move-exception v0

    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_34 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    iget-object v0, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_c
    iget-object v0, p0, Lcn/jpush/android/c/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_78

    if-nez v1, :cond_45

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcn/jpush/android/c/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1e
    iget-object v1, p0, Lcn/jpush/android/c/e;->g:Landroid/content/Context;

    iget-object v2, p0, Lcn/jpush/android/c/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/c/e;->j:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iget v3, p0, Lcn/jpush/android/c/e;->i:I

    if-ne v2, v3, :cond_49

    const/4 v1, 0x0

    iput v1, p0, Lcn/jpush/android/c/e;->a:I

    iget-object v1, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcn/jpush/android/c/e;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_78

    :cond_46
    iget-object v0, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :cond_49
    :try_start_49
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t upgrade read-only database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/jpush/android/c/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/jpush/android/c/e;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_49 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    iget-object v0, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_c
    iget-object v0, p0, Lcn/jpush/android/c/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_1b
    const/4 v1, 0x0

    iput v1, p0, Lcn/jpush/android/c/e;->b:I

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2f

    iget-object v1, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_33

    :cond_30
    iget-object v0, p0, Lcn/jpush/android/c/e;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method
