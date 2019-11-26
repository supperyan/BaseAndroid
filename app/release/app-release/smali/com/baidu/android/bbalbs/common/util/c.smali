.class public final Lcom/baidu/android/bbalbs/common/util/c;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/baidu/android/bbalbs/common/util/b; = null

.field private static c:Ljava/lang/String; = ""

.field private static volatile d:Ljava/lang/String; = ""


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Landroid/content/Context;

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/android/bbalbs/common/util/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0newiqr3mini0"

    sput-object v0, Lcom/baidu/android/bbalbs/common/util/c;->c:Ljava/lang/String;

    :cond_c
    sget-object v0, Lcom/baidu/android/bbalbs/common/util/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/c;->b(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/android/bbalbs/common/util/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/baidu/android/bbalbs/common/util/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    const-class v1, Lcom/baidu/android/bbalbs/common/util/b;

    monitor-enter v1

    :try_start_a
    sget-object v2, Lcom/baidu/android/bbalbs/common/util/c;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    sput-object p0, Lcom/baidu/android/bbalbs/common/util/c;->d:Ljava/lang/String;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_3f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "0newiqr3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x0

    :goto_28
    if-ge p0, v0, :cond_32

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_28

    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/android/bbalbs/common/util/c;->c:Ljava/lang/String;

    return-void

    :cond_3d
    :try_start_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw p0

    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expect src only letter or number , less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5b

    :goto_5a
    throw p0

    :goto_5b
    goto :goto_5a
.end method

.method private b()Lcom/baidu/android/bbalbs/common/util/b;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/b;->b(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/a;->b(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/a;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/android/bbalbs/common/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/bbalbs/common/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object v0

    goto :goto_27

    :cond_20
    invoke-virtual {v0}, Lcom/baidu/android/bbalbs/common/util/a;->c()Z

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/b;->a(Lcom/baidu/android/bbalbs/common/util/a;)Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object v0

    :cond_27
    :goto_27
    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/android/bbalbs/common/util/b;->a(Landroid/content/Context;)Z

    :cond_2e
    iget-object v1, p0, Lcom/baidu/android/bbalbs/common/util/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/a;->a(Landroid/content/Context;)Z

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/b;
    .registers 3

    sget-object v0, Lcom/baidu/android/bbalbs/common/util/c;->b:Lcom/baidu/android/bbalbs/common/util/b;

    if-nez v0, :cond_1b

    const-class v0, Lcom/baidu/android/bbalbs/common/util/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/baidu/android/bbalbs/common/util/c;->b:Lcom/baidu/android/bbalbs/common/util/b;

    if-nez v1, :cond_16

    new-instance v1, Lcom/baidu/android/bbalbs/common/util/c;

    invoke-direct {v1, p0}, Lcom/baidu/android/bbalbs/common/util/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1}, Lcom/baidu/android/bbalbs/common/util/c;->b()Lcom/baidu/android/bbalbs/common/util/b;

    move-result-object p0

    sput-object p0, Lcom/baidu/android/bbalbs/common/util/c;->b:Lcom/baidu/android/bbalbs/common/util/b;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/baidu/android/bbalbs/common/util/c;->b:Lcom/baidu/android/bbalbs/common/util/b;

    return-object p0
.end method
