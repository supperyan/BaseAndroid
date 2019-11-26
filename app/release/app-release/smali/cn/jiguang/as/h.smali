.class public final Lcn/jiguang/as/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcn/jiguang/as/h;

.field public static final b:Lcn/jiguang/as/h;

.field private static final f:[B

.field private static final g:[B

.field private static final h:Ljava/text/DecimalFormat;

.field private static final i:[B

.field private static final j:Lcn/jiguang/as/h;


# instance fields
.field private c:[B

.field private d:J

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lcn/jiguang/as/h;->f:[B

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_66

    sput-object v1, Lcn/jiguang/as/h;->g:[B

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v1, Lcn/jiguang/as/h;->h:Ljava/text/DecimalFormat;

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcn/jiguang/as/h;->i:[B

    sget-object v1, Lcn/jiguang/as/h;->h:Ljava/text/DecimalFormat;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    const/4 v1, 0x0

    :goto_24
    sget-object v3, Lcn/jiguang/as/h;->i:[B

    array-length v4, v3

    if-ge v1, v4, :cond_42

    const/16 v4, 0x41

    if-lt v1, v4, :cond_3a

    const/16 v4, 0x5a

    if-le v1, v4, :cond_32

    goto :goto_3a

    :cond_32
    add-int/lit8 v4, v1, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_3f

    :cond_3a
    :goto_3a
    sget-object v3, Lcn/jiguang/as/h;->i:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_42
    new-instance v1, Lcn/jiguang/as/h;

    invoke-direct {v1}, Lcn/jiguang/as/h;-><init>()V

    sput-object v1, Lcn/jiguang/as/h;->a:Lcn/jiguang/as/h;

    sget-object v3, Lcn/jiguang/as/h;->f:[B

    invoke-direct {v1, v3, v2, v0}, Lcn/jiguang/as/h;->b([BII)V

    new-instance v1, Lcn/jiguang/as/h;

    invoke-direct {v1}, Lcn/jiguang/as/h;-><init>()V

    sput-object v1, Lcn/jiguang/as/h;->b:Lcn/jiguang/as/h;

    new-array v3, v2, [B

    iput-object v3, v1, Lcn/jiguang/as/h;->c:[B

    new-instance v1, Lcn/jiguang/as/h;

    invoke-direct {v1}, Lcn/jiguang/as/h;-><init>()V

    sput-object v1, Lcn/jiguang/as/h;->j:Lcn/jiguang/as/h;

    sget-object v3, Lcn/jiguang/as/h;->g:[B

    invoke-direct {v1, v3, v2, v0}, Lcn/jiguang/as/h;->b([BII)V

    return-void

    :array_66
    .array-data 0x1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/jiguang/as/c;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-nez v3, :cond_67

    invoke-virtual {p1}, Lcn/jiguang/as/c;->f()I

    move-result v5

    and-int/lit16 v6, v5, 0xc0

    if-eqz v6, :cond_44

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_3c

    invoke-virtual {p1}, Lcn/jiguang/as/c;->f()I

    move-result v6

    and-int/lit16 v5, v5, -0xc1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v6, v5

    invoke-virtual {p1}, Lcn/jiguang/as/c;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v6, v5, :cond_34

    if-nez v4, :cond_30

    invoke-virtual {p1}, Lcn/jiguang/as/c;->d()V

    const/4 v4, 0x1

    :cond_30
    invoke-virtual {p1, v6}, Lcn/jiguang/as/c;->b(I)V

    goto :goto_b

    :cond_34
    new-instance p1, Ljava/io/IOException;

    const-string v0, "bad compression"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "bad label type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_5f

    if-nez v5, :cond_55

    sget-object v3, Lcn/jiguang/as/h;->f:[B

    invoke-direct {p0, v3, v2, v1}, Lcn/jiguang/as/h;->a([BII)V

    const/4 v3, 0x1

    goto :goto_b

    :cond_55
    int-to-byte v6, v5

    aput-byte v6, v0, v2

    invoke-virtual {p1, v0, v1, v5}, Lcn/jiguang/as/c;->a([BII)V

    invoke-direct {p0, v0, v2, v1}, Lcn/jiguang/as/h;->a([BII)V

    goto :goto_b

    :cond_5f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "too many labels"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    if-eqz v4, :cond_6c

    invoke-virtual {p1}, Lcn/jiguang/as/c;->e()V

    :cond_6c
    return-void
.end method

.method private constructor <init>(Lcn/jiguang/as/h;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1}, Lcn/jiguang/as/h;->b()I

    move-result v0

    if-gt p2, v0, :cond_24

    iget-object v1, p1, Lcn/jiguang/as/h;->c:[B

    iput-object v1, p0, Lcn/jiguang/as/h;->c:[B

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->b(I)V

    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x7

    if-ge v1, v2, :cond_23

    if-ge v1, v0, :cond_23

    add-int v2, v1, p2

    invoke-direct {p1, v2}, Lcn/jiguang/as/h;->a(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/jiguang/as/h;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    return-void

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempted to remove too many labels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method private constructor <init>(Ljava/lang/String;Lcn/jiguang/as/h;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-nez v2, :cond_21

    sget-object v1, Lcn/jiguang/as/h;->b:Lcn/jiguang/as/h;

    :goto_1d
    invoke-static {v1, v0}, Lcn/jiguang/as/h;->b(Lcn/jiguang/as/h;Lcn/jiguang/as/h;)V

    return-void

    :cond_21
    invoke-static {v2, v0}, Lcn/jiguang/as/h;->b(Lcn/jiguang/as/h;Lcn/jiguang/as/h;)V

    return-void

    :cond_25
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    sget-object v1, Lcn/jiguang/as/h;->a:Lcn/jiguang/as/h;

    goto :goto_1d

    :cond_30
    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_3a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "bad escape"

    const/4 v15, 0x3

    if-ge v7, v13, :cond_bb

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    int-to-byte v13, v13

    const-string v5, "label too long"

    const/16 v6, 0x3f

    if-eqz v9, :cond_85

    const/16 v4, 0x30

    if-lt v13, v4, :cond_6c

    const/16 v4, 0x39

    if-gt v13, v4, :cond_6c

    if-ge v8, v15, :cond_6c

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v12, v13

    const/16 v4, 0xff

    if-gt v12, v4, :cond_67

    if-lt v8, v15, :cond_b3

    int-to-byte v13, v12

    goto :goto_76

    :cond_67
    invoke-static {v1, v14}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_6c
    if-lez v8, :cond_76

    if-lt v8, v15, :cond_71

    goto :goto_76

    :cond_71
    invoke-static {v1, v14}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_76
    :goto_76
    if-gt v11, v6, :cond_80

    add-int/lit8 v4, v11, 0x1

    aput-byte v13, v3, v11

    move v10, v11

    const/4 v9, 0x0

    :goto_7e
    move v11, v4

    goto :goto_b3

    :cond_80
    invoke-static {v1, v5}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_85
    const/16 v4, 0x5c

    if-ne v13, v4, :cond_8d

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto :goto_b3

    :cond_8d
    const/16 v4, 0x2e

    if-ne v13, v4, :cond_a8

    const/4 v4, -0x1

    if-eq v10, v4, :cond_a1

    add-int/lit8 v11, v11, -0x1

    int-to-byte v5, v11

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    const/4 v5, 0x1

    invoke-direct {v0, v1, v3, v6, v5}, Lcn/jiguang/as/h;->a(Ljava/lang/String;[BII)V

    const/4 v10, -0x1

    const/4 v11, 0x1

    goto :goto_b3

    :cond_a1
    const-string v2, "invalid empty label"

    invoke-static {v1, v2}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_a8
    const/4 v4, -0x1

    if-ne v10, v4, :cond_ac

    move v10, v7

    :cond_ac
    if-gt v11, v6, :cond_b6

    add-int/lit8 v4, v11, 0x1

    aput-byte v13, v3, v11

    goto :goto_7e

    :cond_b3
    :goto_b3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :cond_b6
    invoke-static {v1, v5}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_bb
    if-lez v8, :cond_c5

    if-lt v8, v15, :cond_c0

    goto :goto_c5

    :cond_c0
    invoke-static {v1, v14}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_c5
    :goto_c5
    if-nez v9, :cond_ee

    const/4 v4, -0x1

    if-ne v10, v4, :cond_d2

    sget-object v3, Lcn/jiguang/as/h;->f:[B

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {v0, v1, v3, v6, v4}, Lcn/jiguang/as/h;->a(Ljava/lang/String;[BII)V

    goto :goto_dc

    :cond_d2
    const/4 v4, 0x1

    const/4 v6, 0x0

    sub-int/2addr v11, v4

    int-to-byte v5, v11

    aput-byte v5, v3, v6

    invoke-direct {v0, v1, v3, v6, v4}, Lcn/jiguang/as/h;->a(Ljava/lang/String;[BII)V

    const/4 v4, 0x0

    :goto_dc
    if-eqz v2, :cond_ed

    if-nez v4, :cond_ed

    iget-object v3, v2, Lcn/jiguang/as/h;->c:[B

    invoke-direct {v2, v6}, Lcn/jiguang/as/h;->a(I)I

    move-result v4

    invoke-direct/range {p2 .. p2}, Lcn/jiguang/as/h;->b()I

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Lcn/jiguang/as/h;->a(Ljava/lang/String;[BII)V

    :cond_ed
    return-void

    :cond_ee
    invoke-static {v1, v14}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_f3
    const-string v2, "empty name"

    invoke-static {v1, v2}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_fb

    :goto_fa
    throw v1

    :goto_fb
    goto :goto_fa
.end method

.method private final a(I)I
    .registers 5

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    if-ltz p1, :cond_32

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v0

    if-ge p1, v0, :cond_32

    const/4 v0, 0x7

    if-ge p1, v0, :cond_20

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    iget-wide v1, p0, Lcn/jiguang/as/h;->d:J

    ushr-long v0, v1, v0

    long-to-int p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_20
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->a(I)I

    move-result v1

    :goto_25
    if-ge v0, p1, :cond_31

    iget-object v2, p0, Lcn/jiguang/as/h;->c:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_31
    return v1

    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "label out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method

.method public static a(Lcn/jiguang/as/h;Lcn/jiguang/as/h;)Lcn/jiguang/as/h;
    .registers 4

    invoke-virtual {p0}, Lcn/jiguang/as/h;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lcn/jiguang/as/h;

    invoke-direct {v0}, Lcn/jiguang/as/h;-><init>()V

    invoke-static {p0, v0}, Lcn/jiguang/as/h;->b(Lcn/jiguang/as/h;Lcn/jiguang/as/h;)V

    iget-object p0, p1, Lcn/jiguang/as/h;->c:[B

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v1

    invoke-direct {p1}, Lcn/jiguang/as/h;->b()I

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcn/jiguang/as/h;->a([BII)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcn/jiguang/as/h;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Lcn/jiguang/as/h;)Lcn/jiguang/as/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcn/jiguang/as/h;)Lcn/jiguang/as/h;
    .registers 3

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcn/jiguang/as/h;->a:Lcn/jiguang/as/h;

    return-object p0

    :cond_16
    new-instance v0, Lcn/jiguang/as/h;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/as/h;-><init>(Ljava/lang/String;Lcn/jiguang/as/h;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a([BI)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    move v2, v1

    :goto_a
    add-int v3, v1, p1

    if-ge v2, v3, :cond_53

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-le v3, v4, :cond_43

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1d

    goto :goto_43

    :cond_1d
    const/16 v4, 0x22

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x28

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_3b

    if-eq v3, v5, :cond_3b

    const/16 v4, 0x40

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x24

    if-ne v3, v4, :cond_3e

    :cond_3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3e
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_43
    :goto_43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcn/jiguang/as/h;->h:Ljava/text/DecimalFormat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(II)V
    .registers 10

    const/4 v0, 0x7

    if-lt p1, v0, :cond_4

    return-void

    :cond_4
    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    iget-wide v1, p0, Lcn/jiguang/as/h;->d:J

    const-wide/16 v3, 0xff

    shl-long/2addr v3, v0

    const-wide/16 v5, -0x1

    xor-long/2addr v3, v5

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcn/jiguang/as/h;->d:J

    iget-wide v1, p0, Lcn/jiguang/as/h;->d:J

    int-to-long p1, p2

    shl-long/2addr p1, v0

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcn/jiguang/as/h;->d:J

    return-void
.end method

.method private final a(Ljava/lang/String;[BII)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcn/jiguang/as/h;->a([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    const-string p2, "Name too long"

    invoke-static {p1, p2}, Lcn/jiguang/as/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private final a([BII)V
    .registers 12

    iget-object v0, p0, Lcn/jiguang/as/h;->c:[B

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    array-length v0, v0

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_d
    move v4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, p3, :cond_27

    aget-byte v5, p1, v4

    const/16 v6, 0x3f

    if-gt v5, v6, :cond_1f

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    add-int v2, v0, v3

    const/16 v4, 0xff

    if-gt v2, v4, :cond_64

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v4

    add-int v5, v4, p3

    const/16 v6, 0x80

    if-gt v5, v6, :cond_5c

    new-array v2, v2, [B

    if-eqz v0, :cond_44

    iget-object v6, p0, Lcn/jiguang/as/h;->c:[B

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v7

    invoke-static {v6, v7, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_44
    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcn/jiguang/as/h;->c:[B

    :goto_49
    if-ge v1, p3, :cond_58

    add-int p1, v4, v1

    invoke-direct {p0, p1, v0}, Lcn/jiguang/as/h;->a(II)V

    aget-byte p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_58
    invoke-direct {p0, v5}, Lcn/jiguang/as/h;->b(I)V

    return-void

    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "too many labels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    goto :goto_6b

    :goto_6a
    throw p1

    :goto_6b
    goto :goto_6a
.end method

.method private final b()I
    .registers 5

    iget-wide v0, p0, Lcn/jiguang/as/h;->d:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final b(I)V
    .registers 6

    iget-wide v0, p0, Lcn/jiguang/as/h;->d:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcn/jiguang/as/h;->d:J

    iget-wide v0, p0, Lcn/jiguang/as/h;->d:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcn/jiguang/as/h;->d:J

    return-void
.end method

.method private static final b(Lcn/jiguang/as/h;Lcn/jiguang/as/h;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->a(I)I

    move-result v1

    if-nez v1, :cond_10

    iget-object v0, p0, Lcn/jiguang/as/h;->c:[B

    iput-object v0, p1, Lcn/jiguang/as/h;->c:[B

    iget-wide v0, p0, Lcn/jiguang/as/h;->d:J

    iput-wide v0, p1, Lcn/jiguang/as/h;->d:J

    return-void

    :cond_10
    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->a(I)I

    move-result v1

    iget-object v2, p0, Lcn/jiguang/as/h;->c:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v3

    new-array v4, v2, [B

    iput-object v4, p1, Lcn/jiguang/as/h;->c:[B

    iget-object v4, p0, Lcn/jiguang/as/h;->c:[B

    iget-object v5, p1, Lcn/jiguang/as/h;->c:[B

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_27
    if-ge v0, v3, :cond_37

    const/4 v2, 0x7

    if-ge v0, v2, :cond_37

    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->a(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Lcn/jiguang/as/h;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_37
    invoke-direct {p1, v3}, Lcn/jiguang/as/h;->b(I)V

    return-void
.end method

.method private final b([BII)V
    .registers 4

    const/4 p2, 0x0

    const/4 p3, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/as/h;->a([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method


# virtual methods
.method public final a(Lcn/jiguang/as/d;)V
    .registers 14

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array v0, v1, [B

    goto :goto_53

    :cond_a
    iget-object v2, p0, Lcn/jiguang/as/h;->c:[B

    array-length v2, v2

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1b
    if-ge v3, v0, :cond_52

    iget-object v6, p0, Lcn/jiguang/as/h;->c:[B

    aget-byte v7, v6, v4

    const/16 v8, 0x3f

    if-gt v7, v8, :cond_4a

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v2, v5

    move v5, v8

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v7, :cond_46

    add-int/lit8 v6, v5, 0x1

    sget-object v8, Lcn/jiguang/as/h;->i:[B

    iget-object v10, p0, Lcn/jiguang/as/h;->c:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    aput-byte v8, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    move v9, v11

    goto :goto_2f

    :cond_46
    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_1b

    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    move-object v0, v2

    :goto_53
    invoke-virtual {p1, v0}, Lcn/jiguang/as/d;->a([B)V

    return-void
.end method

.method public final a(Lcn/jiguang/as/d;Lcn/jiguang/as/a;)V
    .registers 9

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_3d

    if-nez v2, :cond_e

    move-object v3, p0

    goto :goto_13

    :cond_e
    new-instance v3, Lcn/jiguang/as/h;

    invoke-direct {v3, p0, v2}, Lcn/jiguang/as/h;-><init>(Lcn/jiguang/as/h;I)V

    :goto_13
    const/4 v4, -0x1

    if-eqz p2, :cond_1a

    invoke-virtual {p2, v3}, Lcn/jiguang/as/a;->a(Lcn/jiguang/as/h;)I

    move-result v4

    :cond_1a
    if-ltz v4, :cond_24

    const p2, 0xc000

    or-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lcn/jiguang/as/d;->c(I)V

    return-void

    :cond_24
    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Lcn/jiguang/as/d;->a()I

    move-result v4

    invoke-virtual {p2, v4, v3}, Lcn/jiguang/as/a;->a(ILcn/jiguang/as/h;)V

    :cond_2d
    invoke-direct {p0, v2}, Lcn/jiguang/as/h;->a(I)I

    move-result v3

    iget-object v4, p0, Lcn/jiguang/as/h;->c:[B

    aget-byte v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Lcn/jiguang/as/d;->a([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_3d
    invoke-virtual {p1, v1}, Lcn/jiguang/as/d;->b(I)V

    return-void
.end method

.method public final a(Lcn/jiguang/as/d;Lcn/jiguang/as/a;Z)V
    .registers 4

    if-eqz p3, :cond_6

    invoke-virtual {p0, p1}, Lcn/jiguang/as/h;->a(Lcn/jiguang/as/d;)V

    return-void

    :cond_6
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/jiguang/as/h;->a(Lcn/jiguang/as/d;Lcn/jiguang/as/a;)V

    return-void
.end method

.method public final a()Z
    .registers 5

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcn/jiguang/as/h;->c:[B

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->a(I)I

    move-result v0

    aget-byte v0, v2, v0

    if-nez v0, :cond_15

    return v3

    :cond_15
    return v1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcn/jiguang/as/h;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcn/jiguang/as/h;->b()I

    move-result v3

    invoke-direct {v1}, Lcn/jiguang/as/h;->b()I

    move-result v4

    if-le v3, v4, :cond_16

    move v5, v4

    goto :goto_17

    :cond_16
    move v5, v3

    :goto_17
    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_19
    if-gt v7, v5, :cond_5b

    sub-int v8, v3, v7

    invoke-direct {v0, v8}, Lcn/jiguang/as/h;->a(I)I

    move-result v8

    sub-int v9, v4, v7

    invoke-direct {v1, v9}, Lcn/jiguang/as/h;->a(I)I

    move-result v9

    iget-object v10, v0, Lcn/jiguang/as/h;->c:[B

    aget-byte v10, v10, v8

    iget-object v11, v1, Lcn/jiguang/as/h;->c:[B

    aget-byte v11, v11, v9

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v10, :cond_54

    if-ge v12, v11, :cond_54

    sget-object v13, Lcn/jiguang/as/h;->i:[B

    iget-object v14, v0, Lcn/jiguang/as/h;->c:[B

    add-int v15, v12, v8

    add-int/2addr v15, v6

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v13, v14

    iget-object v15, v1, Lcn/jiguang/as/h;->c:[B

    add-int v16, v12, v9

    add-int/lit8 v16, v16, 0x1

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    aget-byte v13, v13, v15

    sub-int/2addr v14, v13

    if-eqz v14, :cond_51

    return v14

    :cond_51
    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_54
    if-eq v10, v11, :cond_58

    sub-int/2addr v10, v11

    return v10

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_5b
    sub-int/2addr v3, v4

    return v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_82

    instance-of v2, p1, Lcn/jiguang/as/h;

    if-nez v2, :cond_d

    goto/16 :goto_82

    :cond_d
    check-cast p1, Lcn/jiguang/as/h;

    iget v2, p1, Lcn/jiguang/as/h;->e:I

    if-nez v2, :cond_16

    invoke-virtual {p1}, Lcn/jiguang/as/h;->hashCode()I

    :cond_16
    iget v2, p0, Lcn/jiguang/as/h;->e:I

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Lcn/jiguang/as/h;->hashCode()I

    :cond_1d
    iget v2, p1, Lcn/jiguang/as/h;->e:I

    iget v3, p0, Lcn/jiguang/as/h;->e:I

    if-eq v2, v3, :cond_24

    return v1

    :cond_24
    invoke-direct {p1}, Lcn/jiguang/as/h;->b()I

    move-result v2

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v3

    if-eq v2, v3, :cond_2f

    return v1

    :cond_2f
    iget-object v2, p1, Lcn/jiguang/as/h;->c:[B

    invoke-direct {p1, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result p1

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v3

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v4

    move v5, p1

    const/4 p1, 0x0

    :goto_3f
    if-ge p1, v3, :cond_81

    iget-object v6, p0, Lcn/jiguang/as/h;->c:[B

    aget-byte v7, v6, v4

    aget-byte v8, v2, v5

    if-eq v7, v8, :cond_4a

    return v1

    :cond_4a
    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3f

    if-gt v4, v6, :cond_79

    move v6, v5

    const/4 v5, 0x0

    :goto_56
    if-ge v5, v4, :cond_74

    sget-object v8, Lcn/jiguang/as/h;->i:[B

    iget-object v9, p0, Lcn/jiguang/as/h;->c:[B

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v8, v7

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v8, v6

    if-eq v7, v6, :cond_6f

    return v1

    :cond_6f
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    move v7, v10

    goto :goto_56

    :cond_74
    add-int/lit8 p1, p1, 0x1

    move v5, v6

    move v4, v7

    goto :goto_3f

    :cond_79
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_81
    return v0

    :cond_82
    :goto_82
    return v1
.end method

.method public final hashCode()I
    .registers 6

    iget v0, p0, Lcn/jiguang/as/h;->e:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/jiguang/as/h;->a(I)I

    move-result v1

    :goto_a
    iget-object v2, p0, Lcn/jiguang/as/h;->c:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    shl-int/lit8 v3, v0, 0x3

    sget-object v4, Lcn/jiguang/as/h;->i:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v4, v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    iput v0, p0, Lcn/jiguang/as/h;->e:I

    iget v0, p0, Lcn/jiguang/as/h;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcn/jiguang/as/h;->b()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "@"

    return-object v0

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    iget-object v2, p0, Lcn/jiguang/as/h;->c:[B

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v3

    aget-byte v2, v2, v3

    if-nez v2, :cond_1a

    const-string v0, "."

    return-object v0

    :cond_1a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v1}, Lcn/jiguang/as/h;->a(I)I

    move-result v3

    :goto_23
    if-ge v1, v0, :cond_51

    iget-object v4, p0, Lcn/jiguang/as/h;->c:[B

    aget-byte v4, v4, v3

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_49

    const/16 v5, 0x2e

    if-nez v4, :cond_35

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    :cond_35
    if-lez v1, :cond_3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3a
    iget-object v5, p0, Lcn/jiguang/as/h;->c:[B

    invoke-static {v5, v3}, Lcn/jiguang/as/h;->a([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
