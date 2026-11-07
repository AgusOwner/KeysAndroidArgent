.class public Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;
.super Ljava/lang/Object;
.source "Zip64ExtendedInformationExtraField.java"

# interfaces
.implements Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;


# static fields
.field private static final EMPTY:[B

.field static final HEADER_ID:Lorg/apache/tools/zip/ZipShort;

.field private static final LFH_MUST_HAVE_BOTH_SIZES_MSG:Ljava/lang/String; = "Zip64 extended information must contain both size values in the local file header."


# instance fields
.field private compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

.field private diskStart:Lorg/apache/tools/zip/ZipLong;

.field private rawCentralDirectoryData:[B

.field private relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

.field private size:Lorg/apache/tools/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 49
    sput-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;-><init>(Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipLong;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipLong;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 96
    iput-object p2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 97
    iput-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 98
    iput-object p4, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    return-void
.end method

.method private addSizes([B)I
    .locals 4

    .line 333
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 337
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v3, :cond_1

    .line 338
    invoke-virtual {v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 5

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v0

    new-array v0, v0, [B

    .line 135
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    move-result v1

    .line 136
    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x8

    .line 140
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .locals 5

    .line 113
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 114
    :goto_0
    iget-object v4, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/2addr v1, v4

    .line 115
    iget-object v4, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v1, v2

    .line 116
    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    :cond_3
    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getCompressedSize()Lorg/apache/tools/zip/ZipEightByteInteger;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getDiskStartNumber()Lorg/apache/tools/zip/ZipLong;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 126
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    return-object v0

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .locals 2

    .line 108
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getRelativeHeaderOffset()Lorg/apache/tools/zip/ZipEightByteInteger;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getSize()Lorg/apache/tools/zip/ZipEightByteInteger;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 182
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    const/4 v1, 0x0

    .line 183
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->parseFromLocalFileData([BII)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne p3, v0, :cond_1

    .line 194
    new-instance p3, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    .line 196
    new-instance p3, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    .line 198
    new-instance p3, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    goto :goto_0

    .line 199
    :cond_1
    rem-int/lit8 v0, p3, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 200
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    add-int/2addr p2, p3

    sub-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    :cond_2
    :goto_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-lt p3, v0, :cond_3

    .line 160
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    const/16 v1, 0x8

    add-int/2addr p2, v1

    .line 162
    new-instance v2, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v2, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/2addr p2, v1

    sub-int/2addr p3, v0

    if-lt p3, v1, :cond_1

    .line 166
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p3, p3, -0x8

    :cond_1
    const/4 v0, 0x4

    if-lt p3, v0, :cond_2

    .line 171
    new-instance p3, Lorg/apache/tools/zip/ZipLong;

    invoke-direct {p3, p1, p2}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    :cond_2
    return-void

    .line 158
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reparseCentralDirectoryData(ZZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    if-eqz p3, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    add-int/2addr v3, v4

    if-eqz p4, :cond_3

    const/4 v4, 0x4

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    add-int/2addr v3, v4

    .line 229
    array-length v0, v0

    if-lt v0, v3, :cond_7

    if-eqz p1, :cond_4

    .line 239
    new-instance p1, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    move v1, v2

    :cond_4
    if-eqz p2, :cond_5

    .line 243
    new-instance p1, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object p2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, p2, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/lit8 v1, v1, 0x8

    :cond_5
    if-eqz p3, :cond_6

    .line 248
    new-instance p1, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object p2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, p2, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/lit8 v1, v1, 0x8

    :cond_6
    if-eqz p4, :cond_8

    .line 253
    new-instance p1, Lorg/apache/tools/zip/ZipLong;

    iget-object p2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, p2, v1}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    goto :goto_4

    .line 230
    :cond_7
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-void
.end method

.method public setDiskStartNumber(Lorg/apache/tools/zip/ZipLong;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    return-void
.end method

.method public setRelativeHeaderOffset(Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-void
.end method

.method public setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-void
.end method
