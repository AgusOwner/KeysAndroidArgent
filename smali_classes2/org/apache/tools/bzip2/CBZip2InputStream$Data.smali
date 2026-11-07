.class final Lorg/apache/tools/bzip2/CBZip2InputStream$Data;
.super Ljava/lang/Object;
.source "CBZip2InputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/bzip2/CBZip2InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data"
.end annotation


# instance fields
.field final base:[[I

.field final cftab:[I

.field final getAndMoveToFrontDecode_yy:[C

.field final inUse:[Z

.field final limit:[[I

.field ll8:[B

.field final minLens:[I

.field final perm:[[I

.field final recvDecodingTables_pos:[B

.field final selector:[B

.field final selectorMtf:[B

.field final seqToUnseq:[B

.field final temp_charArray2d:[[C

.field tt:[I

.field final unzftab:[I


# direct methods
.method constructor <init>(I)V
    .locals 5

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [Z

    .line 991
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->inUse:[Z

    new-array v1, v0, [B

    .line 993
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->seqToUnseq:[B

    const/16 v1, 0x4652

    new-array v2, v1, [B

    .line 994
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    new-array v1, v1, [B

    .line 995
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selectorMtf:[B

    new-array v1, v0, [I

    .line 1001
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->unzftab:[I

    const/4 v1, 0x6

    const/16 v2, 0x102

    .line 1003
    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    .line 1004
    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    .line 1005
    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    new-array v3, v1, [I

    .line 1006
    iput-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    const/16 v3, 0x101

    new-array v3, v3, [I

    .line 1008
    iput-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->cftab:[I

    new-array v0, v0, [C

    .line 1009
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 1010
    filled-new-array {v1, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->temp_charArray2d:[[C

    new-array v0, v1, [B

    .line 1011
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->recvDecodingTables_pos:[B

    const v0, 0x186a0

    mul-int/2addr p1, v0

    .line 1024
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    return-void
.end method


# virtual methods
.method final initTT(I)[I
    .locals 2

    .line 1036
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    if-eqz v0, :cond_0

    .line 1042
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 1043
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    :cond_1
    return-object v0
.end method
