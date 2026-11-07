.class public final Lorg/apache/tools/zip/JarMarker;
.super Ljava/lang/Object;
.source "JarMarker.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lorg/apache/tools/zip/JarMarker;

.field private static final ID:Lorg/apache/tools/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lorg/apache/tools/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->ID:Lorg/apache/tools/zip/ZipShort;

    .line 32
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->NULL:Lorg/apache/tools/zip/ZipShort;

    new-array v0, v1, [B

    .line 33
    sput-object v0, Lorg/apache/tools/zip/JarMarker;->NO_BYTES:[B

    .line 34
    new-instance v0, Lorg/apache/tools/zip/JarMarker;

    invoke-direct {v0}, Lorg/apache/tools/zip/JarMarker;-><init>()V

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->DEFAULT:Lorg/apache/tools/zip/JarMarker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/tools/zip/JarMarker;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->DEFAULT:Lorg/apache/tools/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 91
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NULL:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 82
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 63
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NULL:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "JarMarker doesn\'t expect any data"

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
