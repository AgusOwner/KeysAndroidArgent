.class public Lorg/apache/tools/ant/types/resources/BZip2Resource;
.super Lorg/apache/tools/ant/types/resources/CompressedResource;
.source "BZip2Resource.java"


# static fields
.field private static final MAGIC:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/types/resources/BZip2Resource;->MAGIC:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x42s
        0x5as
    .end array-data
.end method

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

    const-string v0, "Bzip2"

    return-object v0
.end method

.method protected wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/apache/tools/ant/types/resources/BZip2Resource;->MAGIC:[C

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, v0, v2

    .line 59
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid bz2 stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2InputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/apache/tools/ant/types/resources/BZip2Resource;->MAGIC:[C

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    .line 75
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
