.class public abstract Lorg/apache/tools/zip/AbstractUnicodeExtraField;
.super Ljava/lang/Object;
.source "AbstractUnicodeExtraField.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipExtraField;


# instance fields
.field private data:[B

.field private nameCRC32:J

.field private unicodeName:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    const/4 v0, 0x0

    .line 67
    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[BII)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 51
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 52
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    .line 54
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    return-void
.end method

.method private assembleData()V
    .locals 6

    .line 71
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    array-length v0, v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 77
    aput-byte v3, v0, v2

    .line 78
    iget-wide v4, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    invoke-static {v4, v5}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    iget-object v4, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    iget-object v3, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 4

    .line 127
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->assembleData()V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    if-eqz v0, :cond_1

    .line 132
    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 133
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->assembleData()V

    .line 143
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getCentralDirectoryData()[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getNameCRC32()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    return-wide v0
.end method

.method public getUnicodeName()[B
    .locals 4

    .line 104
    iget-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-eqz v0, :cond_0

    .line 105
    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 106
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    .line 165
    aget-byte v1, p1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 172
    invoke-static {p1, v1}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    sub-int/2addr p3, v0

    .line 173
    new-array v1, p3, [B

    iput-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    add-int/2addr p2, v0

    const/4 v0, 0x0

    .line 174
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported version ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "] for UniCode path extra data."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "UniCode path extra data must have at least 5 bytes."

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNameCRC32(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->nameCRC32:J

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    return-void
.end method

.method public setUnicodeName([B)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 116
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 117
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 120
    :cond_0
    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 122
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->data:[B

    return-void
.end method
