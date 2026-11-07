.class final Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;
.super Ljava/lang/Object;
.source "CBZip2OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/bzip2/CBZip2OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Data"
.end annotation


# instance fields
.field final block:[B

.field final fmap:[I

.field final generateMTFValues_yy:[B

.field final heap:[I

.field final inUse:[Z

.field final mtfFreq:[I

.field origPtr:I

.field final parent:[I

.field final selector:[B

.field final selectorMtf:[B

.field final sendMTFValues2_pos:[B

.field final sendMTFValues_code:[[I

.field final sendMTFValues_cost:[S

.field final sendMTFValues_fave:[I

.field final sendMTFValues_len:[[B

.field final sendMTFValues_rfreq:[[I

.field final sentMTFValues4_inUse16:[Z

.field final sfmap:[C

.field final unseqToSeq:[B

.field final weight:[I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [Z

    .line 1520
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    new-array v1, v0, [B

    .line 1521
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->unseqToSeq:[B

    const/16 v1, 0x102

    new-array v2, v1, [I

    .line 1522
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->mtfFreq:[I

    const/16 v2, 0x4652

    new-array v3, v2, [B

    .line 1523
    iput-object v3, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    new-array v2, v2, [B

    .line 1524
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selectorMtf:[B

    new-array v0, v0, [B

    .line 1526
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->generateMTFValues_yy:[B

    const/4 v0, 0x6

    .line 1527
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1529
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_rfreq:[[I

    new-array v2, v0, [I

    .line 1531
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_fave:[I

    new-array v2, v0, [S

    .line 1532
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_cost:[S

    .line 1533
    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_code:[[I

    new-array v0, v0, [B

    .line 1535
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues2_pos:[B

    const/16 v0, 0x10

    new-array v0, v0, [Z

    .line 1536
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sentMTFValues4_inUse16:[Z

    const/16 v0, 0x104

    new-array v0, v0, [I

    .line 1538
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->heap:[I

    const/16 v0, 0x204

    new-array v1, v0, [I

    .line 1539
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->weight:[I

    new-array v0, v0, [I

    .line 1540
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->parent:[I

    const v0, 0x186a0

    mul-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x14

    .line 1569
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 1570
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    mul-int/lit8 p1, p1, 0x2

    .line 1571
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    return-void
.end method
