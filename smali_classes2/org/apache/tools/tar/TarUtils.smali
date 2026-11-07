.class public Lorg/apache/tools/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

.field private static final NUL:Ljava/lang/String; = "\u0000"

.field private static final NUL_BY_ENCODING:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/apache/tools/zip/ZipEncoding;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final X:Ljava/lang/String; = "X"

.field private static final X_NUL:Ljava/lang/String; = "X\u0000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/tar/TarUtils;->NUL_BY_ENCODING:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 54
    new-instance v0, Lorg/apache/tools/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/tools/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 6

    .line 620
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p0, "\u0000"

    const-string v1, "{NUL}"

    .line 250
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p4, p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid byte %s at offset %d in \'%s\' len=%d"

    .line 251
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .locals 1

    .line 575
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 576
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 577
    array-length p1, p0

    add-int/2addr p4, p3

    sub-int/2addr p4, p1

    const/4 v0, 0x0

    .line 579
    invoke-static {p0, v0, p2, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_0

    const/16 v0, 0xff

    :cond_0
    int-to-byte p0, v0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_1

    .line 582
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 1

    add-int/lit8 v0, p4, -0x2

    .line 603
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p3

    const/4 p1, 0x0

    .line 605
    aput-byte p1, p2, v0

    add-int/2addr p0, p3

    const/16 p1, 0x20

    .line 606
    aput-byte p1, p2, p0

    add-int/2addr p3, p4

    return p3
.end method

.method private static formatLongBinary(J[BIIZ)V
    .locals 9

    add-int/lit8 v0, p4, -0x1

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    const-wide/16 v2, 0x1

    shl-long v4, v2, v0

    .line 555
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    if-eqz p5, :cond_0

    sub-long/2addr v4, v2

    xor-long p0, v6, v4

    const/16 p5, 0xff

    shl-int/2addr p5, v0

    int-to-long v4, p5

    or-long/2addr p0, v4

    add-long v6, p0, v2

    :cond_0
    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_1

    long-to-int p0, v6

    int-to-byte p0, p0

    .line 566
    aput-byte p0, p2, p4

    shr-long/2addr v6, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_1
    return-void

    .line 557
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Value "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is too large for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " byte field."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 1

    add-int/lit8 v0, p4, -0x1

    .line 508
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/2addr v0, p3

    const/16 p0, 0x20

    .line 509
    aput-byte p0, p2, v0

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .locals 9

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    const-wide/32 v0, 0x1fffff

    goto :goto_0

    :cond_0
    const-wide v0, 0x1ffffffffL

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 538
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/tools/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x9

    if-ge p4, v0, :cond_3

    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    .line 542
    invoke-static/range {v3 .. v8}, Lorg/apache/tools/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    :cond_3
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    .line 544
    invoke-static/range {v3 .. v8}, Lorg/apache/tools/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    if-eqz v2, :cond_4

    const/16 p0, 0xff

    goto :goto_2

    :cond_4
    const/16 p0, 0x80

    :goto_2
    int-to-byte p0, p0

    .line 546
    aput-byte p0, p2, p3

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 1

    .line 381
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 384
    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 388
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    invoke-interface {p4, p0}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 416
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 417
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    sub-int/2addr p0, p4

    .line 420
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {p4, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge p0, p3, :cond_1

    add-int p4, p2, p0

    .line 424
    aput-byte v3, p1, p4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr p2, p3

    return p2
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 1

    add-int/lit8 v0, p4, -0x2

    .line 482
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p3

    const/16 p1, 0x20

    .line 484
    aput-byte p1, p2, v0

    add-int/2addr p0, p3

    const/4 p1, 0x0

    .line 485
    aput-byte p1, p2, p0

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 9

    add-int/lit8 v0, p4, -0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/16 v4, 0x30

    if-nez v3, :cond_0

    add-int/lit8 p0, v0, -0x1

    add-int/2addr v0, p3

    .line 444
    aput-byte v4, p2, v0

    goto :goto_1

    :cond_0
    move-wide v5, p0

    :goto_0
    if-ltz v0, :cond_1

    cmp-long v3, v5, v1

    if-eqz v3, :cond_1

    add-int v3, p3, v0

    const-wide/16 v7, 0x7

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    add-int/2addr v7, v4

    int-to-byte v7, v7

    .line 449
    aput-byte v7, p2, v3

    const/4 v3, 0x3

    ushr-long/2addr v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long v1, v5, v1

    if-nez v1, :cond_3

    move p0, v0

    :goto_1
    if-ltz p0, :cond_2

    add-int p1, p3, p0

    .line 461
    aput-byte v4, p2, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    return-void

    .line 454
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 456
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d=%s will not fit in octal number buffer of length %d"

    .line 454
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static getNulByteEquivalent(Lorg/apache/tools/zip/ZipEncoding;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->NUL_BY_ENCODING:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    .line 331
    invoke-static {p0}, Lorg/apache/tools/tar/TarUtils;->getUncachedNulByteEquivalent(Lorg/apache/tools/zip/ZipEncoding;)[B

    move-result-object v1

    .line 332
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private static getUncachedNulByteEquivalent(Lorg/apache/tools/zip/ZipEncoding;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\u0000"

    .line 338
    invoke-interface {p0, v0}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 341
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "X"

    .line 345
    invoke-interface {p0, v1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    const-string v3, "X\u0000"

    .line 347
    invoke-interface {p0, v3}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_1

    return-object v0

    .line 353
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v4, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 356
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, v2

    .line 359
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    add-int/2addr p0, v3

    .line 358
    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .locals 4

    add-int/lit8 v0, p2, -0x1

    .line 209
    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p3, :cond_0

    const-wide/16 v0, -0x1

    .line 214
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    .line 216
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_2

    .line 221
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    if-eqz p3, :cond_1

    neg-long p0, p0

    :cond_1
    return-wide p0

    .line 217
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "At offset %d, %d byte binary number exceeds maximum signed long value"

    .line 217
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseBinaryLong([BIIZ)J
    .locals 7

    const/16 v0, 0x9

    if-ge p2, v0, :cond_3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_0

    const/16 v4, 0x8

    shl-long/2addr v1, v4

    add-int v4, p1, v3

    .line 195
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    sub-int/2addr p2, v0

    int-to-double v3, p2

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 200
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    sub-long/2addr v3, p0

    xor-long/2addr v1, v3

    :cond_1
    if-eqz p3, :cond_2

    neg-long v1, v1

    :cond_2
    return-wide v1

    .line 189
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "At offset %d, %d byte binary number exceeds maximum signed long value"

    .line 189
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseBoolean([BI)Z
    .locals 0

    .line 235
    aget-byte p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 1

    .line 267
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 270
    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 273
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {p3}, Lorg/apache/tools/tar/TarUtils;->getNulByteEquivalent(Lorg/apache/tools/zip/ZipEncoding;)[B

    move-result-object v0

    .line 296
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 299
    aget-byte v0, v0, v2

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v1, p1, v2

    .line 301
    aget-byte v1, p0, v1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p2, v2

    goto :goto_4

    :cond_2
    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    move v4, v2

    :goto_2
    sub-int v5, p2, v1

    if-gt v4, v5, :cond_5

    add-int v5, p1, v4

    add-int v6, v5, v1

    .line 311
    invoke-static {p0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 312
    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move p2, v4

    :goto_4
    if-lez p2, :cond_7

    add-int/2addr p2, p1

    .line 322
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 323
    invoke-interface {p3, p0}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public static parseOctal([BII)J
    .locals 6

    add-int v0, p1, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_6

    .line 118
    aget-byte v1, p0, p1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    move v1, p1

    :goto_0
    const/16 v4, 0x20

    if-ge v1, v0, :cond_1

    .line 124
    aget-byte v5, p0, v1

    if-ne v5, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 135
    aget-byte v5, p0, v5

    :goto_1
    if-ge v1, v0, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    .line 138
    aget-byte v5, p0, v5

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 142
    aget-byte v4, p0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x37

    if-gt v4, v5, :cond_4

    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 145
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    invoke-static {p0, p1, p2, v1, v4}, Lorg/apache/tools/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-wide v2

    .line 115
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " must be at least 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseOctalOrBinary([BII)J
    .locals 2

    .line 175
    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    .line 176
    invoke-static {p0, p1, p2}, Lorg/apache/tools/tar/TarUtils;->parseOctal([BII)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    .line 180
    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide p0

    return-wide p0

    .line 182
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide p0

    return-wide p0
.end method
