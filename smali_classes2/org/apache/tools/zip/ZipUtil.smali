.class public abstract Lorg/apache/tools/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final DOS_TIME_MIN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2100

    .line 33
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipUtil;->DOS_TIME_MIN:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToLong(I)J
    .locals 4

    if-gez p0, :cond_0

    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method static canHandleEntryData(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 1

    .line 229
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsMethodOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static checkRequestedFeatures(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/zip/UnsupportedZipFeatureException;
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsMethodOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/tools/zip/ZipEntry;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/tools/zip/ZipEntry;)V

    throw v0
.end method

.method static copy([B)[B
    .locals 3

    if-eqz p0, :cond_0

    .line 216
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 217
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dosToJavaTime(J)J
    .locals 7

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x15

    shr-long v3, p0, v1

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v1, v3

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    .line 131
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x10

    shr-long v3, p0, v1

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    .line 132
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    shr-long v4, p0, v1

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    .line 133
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    shr-long v3, p0, v3

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    .line 134
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    shl-long/2addr p0, v2

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x3e

    const/16 p1, 0xd

    .line 135
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 136
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static fromDosTime(Lorg/apache/tools/zip/ZipLong;)Ljava/util/Date;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 117
    new-instance p0, Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 187
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 188
    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 189
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 193
    :try_start_0
    sget-object p1, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 194
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method static setNameAndCommentFromExtraFields(Lorg/apache/tools/zip/ZipEntry;[B[B)V
    .locals 2

    .line 153
    sget-object v0, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/UnicodePathExtraField;

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v0, p1}, Lorg/apache/tools/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 162
    array-length p1, p2

    if-lez p1, :cond_1

    .line 163
    sget-object p1, Lorg/apache/tools/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/tools/zip/ZipShort;

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    .line 166
    invoke-static {p1, p2}, Lorg/apache/tools/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static supportsEncryptionOf(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 0

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getGeneralPurposeBit()Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/tools/zip/GeneralPurposeBit;->usesEncryption()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static supportsMethodOf(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;
    .locals 3

    .line 42
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/tools/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method public static toDosTime(J[BI)V
    .locals 1

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    return-void
.end method

.method static toDosTime(Ljava/util/Calendar;J[BI)V
    .locals 3

    .line 75
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v0, 0x7bc

    if-ge p2, v0, :cond_0

    .line 79
    sget-object p0, Lorg/apache/tools/zip/ZipUtil;->DOS_TIME_MIN:[B

    const/4 p1, 0x0

    array-length p2, p0

    invoke-static {p0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x19

    shl-int/lit8 v0, v1, 0x15

    or-int/2addr p2, v0

    const/4 v0, 0x5

    .line 85
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    const/16 v1, 0xb

    .line 86
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v1, v2, 0xb

    or-int/2addr p2, v1

    const/16 v1, 0xc

    .line 87
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x5

    or-int/2addr p2, v0

    const/16 v0, 0xd

    .line 88
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    shr-int/2addr p0, p1

    or-int/2addr p0, p2

    int-to-long p0, p0

    .line 89
    invoke-static {p0, p1, p3, p4}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    return-void
.end method

.method public static toDosTime(J)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(J[BI)V

    return-object v0
.end method
