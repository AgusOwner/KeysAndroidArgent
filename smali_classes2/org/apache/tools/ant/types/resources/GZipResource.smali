.class public Lorg/apache/tools/ant/types/resources/GZipResource;
.super Lorg/apache/tools/ant/types/resources/CompressedResource;
.source "GZipResource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/CompressedResource;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/CompressedResource;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method


# virtual methods
.method protected getCompressionName()Ljava/lang/String;
    .locals 1

    const-string v0, "GZip"

    return-object v0
.end method

.method protected wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
