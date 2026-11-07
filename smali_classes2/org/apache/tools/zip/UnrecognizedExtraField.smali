.class public Lorg/apache/tools/zip/UnrecognizedExtraField;
.super Ljava/lang/Object;
.source "UnrecognizedExtraField.java"

# interfaces
.implements Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lorg/apache/tools/zip/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->headerId:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .locals 2

    .line 77
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2

    .line 146
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 147
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    .line 149
    iget-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    if-nez p1, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2

    .line 134
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 135
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 0

    .line 101
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    return-void
.end method

.method public setHeaderId(Lorg/apache/tools/zip/ZipShort;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->headerId:Lorg/apache/tools/zip/ZipShort;

    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 0

    .line 69
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    return-void
.end method
