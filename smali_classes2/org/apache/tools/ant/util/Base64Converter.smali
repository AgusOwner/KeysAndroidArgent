.class public Lorg/apache/tools/ant/util/Base64Converter;
.super Ljava/lang/Object;
.source "Base64Converter.java"


# static fields
.field private static final ALPHABET:[C

.field private static final BYTE:I = 0x8

.field private static final BYTE_MASK:I = 0xff

.field private static final POS_0_MASK:I = 0x3f

.field private static final POS_1_MASK:I = 0xfc0

.field private static final POS_1_SHIFT:I = 0x6

.field private static final POS_2_MASK:I = 0x3f000

.field private static final POS_2_SHIFT:I = 0xc

.field private static final POS_3_MASK:I = 0xfc0000

.field private static final POS_3_SHIFT:I = 0x12

.field private static final WORD:I = 0x10

.field public static final alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    .line 52
    sput-object v0, Lorg/apache/tools/ant/util/Base64Converter;->alphabet:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 9

    .line 75
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v2, 0x3

    .line 81
    array-length v5, p1

    const v6, 0x3f000

    const/high16 v7, 0xfc0000

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 84
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v4, 0x1

    .line 85
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    .line 86
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    and-int v5, v2, v7

    shr-int/lit8 v5, v5, 0x12

    add-int/lit8 v7, v3, 0x1

    .line 89
    sget-object v8, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    aget-char v5, v8, v5

    aput-char v5, v0, v3

    and-int v3, v2, v6

    shr-int/lit8 v3, v3, 0xc

    add-int/lit8 v5, v7, 0x1

    .line 91
    aget-char v3, v8, v3

    aput-char v3, v0, v7

    and-int/lit16 v3, v2, 0xfc0

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v6, v5, 0x1

    .line 93
    aget-char v3, v8, v3

    aput-char v3, v0, v5

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, v6, 0x1

    .line 95
    aget-char v2, v8, v2

    aput-char v2, v0, v6

    move v2, v4

    goto :goto_0

    .line 97
    :cond_0
    array-length v4, p1

    sub-int/2addr v4, v2

    const/4 v5, 0x2

    const/16 v8, 0x3d

    if-ne v4, v5, :cond_1

    .line 99
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v1

    .line 100
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v4

    and-int v1, p1, v7

    shr-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, v3, 0x1

    .line 102
    sget-object v4, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    and-int v1, p1, v6

    shr-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v2, 0x1

    .line 104
    aget-char v1, v4, v1

    aput-char v1, v0, v2

    and-int/lit16 p1, p1, 0xfc0

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 v1, v3, 0x1

    .line 106
    aget-char p1, v4, p1

    aput-char p1, v0, v3

    .line 109
    aput-char v8, v0, v1

    goto :goto_1

    .line 110
    :cond_1
    array-length v4, p1

    sub-int/2addr v4, v2

    if-ne v4, v1, :cond_2

    .line 112
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    and-int v1, p1, v7

    shr-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, v3, 0x1

    .line 114
    sget-object v4, Lorg/apache/tools/ant/util/Base64Converter;->ALPHABET:[C

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    and-int/2addr p1, v6

    shr-int/lit8 p1, p1, 0xc

    add-int/lit8 v1, v2, 0x1

    .line 116
    aget-char p1, v4, p1

    aput-char p1, v0, v2

    add-int/lit8 p1, v1, 0x1

    .line 119
    aput-char v8, v0, v1

    .line 120
    aput-char v8, v0, p1

    .line 122
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method
