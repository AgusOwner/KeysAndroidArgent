.class public Lorg/apache/tools/bzip2/CBZip2OutputStream;
.super Ljava/io/OutputStream;
.source "CBZip2OutputStream.java"

# interfaces
.implements Lorg/apache/tools/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;
    }
.end annotation


# static fields
.field protected static final CLEARMASK:I = -0x200001

.field protected static final DEPTH_THRESH:I = 0xa

.field protected static final GREATER_ICOST:I = 0xf

.field private static final INCS:[I

.field protected static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1

.field protected static final QSORT_STACK_SIZE:I = 0x3e8

.field protected static final SETMASK:I = 0x200000

.field protected static final SMALL_THRESH:I = 0x14

.field protected static final WORK_FACTOR:I = 0x1e


# instance fields
.field private final allowableBlockSize:I

.field private blockCRC:I

.field private final blockSize100k:I

.field private blockSorter:Lorg/apache/tools/bzip2/BlockSort;

.field private bsBuff:I

.field private bsLive:I

.field private combinedCRC:I

.field private final crc:Lorg/apache/tools/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private out:Ljava/io/OutputStream;

.field private runLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 207
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->INCS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 596
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 541
    new-instance v0, Lorg/apache/tools/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/tools/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    const/4 v0, -0x1

    .line 547
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    const/4 v0, 0x1

    const-string v1, "blockSize("

    if-lt p2, v0, :cond_1

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 637
    iput p2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    .line 638
    iput-object p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    const p1, 0x186a0

    mul-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x14

    .line 641
    iput p2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->allowableBlockSize:I

    .line 642
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->init()V

    return-void

    .line 633
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") > 9"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") < 1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blockSort()V
    .locals 3

    .line 1403
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/bzip2/BlockSort;->blockSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    return-void
.end method

.method private bsFinishedWithStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    :goto_0
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    if-lez v0, :cond_0

    .line 923
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    shr-int/lit8 v0, v0, 0x18

    .line 924
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 925
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 926
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bsPutInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    .line 950
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 951
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 952
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    and-int/lit16 p1, p1, 0xff

    .line 953
    invoke-direct {p0, v1, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    return-void
.end method

.method private bsPutUByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 946
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    return-void
.end method

.method private bsW(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 932
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 933
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    shr-int/lit8 v3, v2, 0x18

    .line 936
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v1, 0x20

    sub-int/2addr v0, p1

    shl-int/2addr p2, v0

    or-int/2addr p2, v2

    .line 941
    iput p2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    add-int/2addr v1, p1

    .line 942
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    return-void
.end method

.method public static chooseBlockSize(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x203a0

    .line 574
    div-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const-wide/16 v0, 0x9

    .line 575
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :goto_0
    return p0
.end method

.method private endBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockCRC:I

    .line 792
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 793
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 796
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 801
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSort()V

    const/16 v0, 0x31

    .line 814
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x41

    .line 815
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x59

    .line 816
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v1, 0x26

    .line 817
    invoke-direct {p0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v1, 0x53

    .line 818
    invoke-direct {p0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 819
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 822
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 825
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 828
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->moveToFrontCodeAndSend()V

    return-void
.end method

.method private endCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x17

    .line 838
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x72

    .line 839
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x45

    .line 840
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x38

    .line 841
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x50

    .line 842
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/16 v0, 0x90

    .line 843
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 845
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutInt(I)V

    .line 846
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsFinishedWithStream()V

    return-void
.end method

.method private generateMTFValues()V
    .locals 18

    move-object/from16 v0, p0

    .line 1414
    iget v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 1415
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1416
    iget-object v3, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    .line 1417
    iget-object v4, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 1418
    iget-object v5, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 1419
    iget-object v6, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1420
    iget-object v7, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->mtfFreq:[I

    .line 1421
    iget-object v8, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->unseqToSeq:[B

    .line 1422
    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->generateMTFValues_yy:[B

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const/16 v12, 0x100

    if-ge v10, v12, :cond_1

    .line 1427
    aget-boolean v12, v3, v10

    if-eqz v12, :cond_0

    int-to-byte v12, v11

    .line 1428
    aput-byte v12, v8, v10

    add-int/lit8 v11, v11, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1432
    :cond_1
    iput v11, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nInUse:I

    add-int/lit8 v3, v11, 0x1

    move v10, v3

    :goto_1
    if-ltz v10, :cond_2

    .line 1437
    aput v9, v7, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_3

    int-to-byte v10, v11

    .line 1441
    aput-byte v10, v2, v11

    goto :goto_2

    :cond_3
    move v10, v9

    move v11, v10

    move v12, v11

    :goto_3
    const/4 v14, 0x1

    if-gt v10, v1, :cond_9

    .line 1448
    aget v15, v5, v10

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v8, v15

    .line 1449
    aget-byte v16, v2, v9

    move/from16 v13, v16

    move/from16 v16, v9

    :goto_4
    if-eq v15, v13, :cond_4

    add-int/lit8 v16, v16, 0x1

    .line 1455
    aget-byte v17, v2, v16

    .line 1456
    aput-byte v13, v2, v16

    move/from16 v13, v17

    goto :goto_4

    .line 1458
    :cond_4
    aput-byte v13, v2, v9

    if-nez v16, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    if-lez v11, :cond_8

    add-int/lit8 v11, v11, -0x1

    :goto_5
    and-int/lit8 v13, v11, 0x1

    if-nez v13, :cond_6

    .line 1467
    aput-char v9, v6, v12

    add-int/lit8 v12, v12, 0x1

    .line 1469
    aget v13, v7, v9

    add-int/2addr v13, v14

    aput v13, v7, v9

    goto :goto_6

    .line 1471
    :cond_6
    aput-char v14, v6, v12

    add-int/lit8 v12, v12, 0x1

    .line 1473
    aget v13, v7, v14

    add-int/2addr v13, v14

    aput v13, v7, v14

    :goto_6
    const/4 v13, 0x2

    if-lt v11, v13, :cond_7

    add-int/lit8 v11, v11, -0x2

    shr-int/2addr v11, v14

    goto :goto_5

    :cond_7
    move v11, v9

    :cond_8
    add-int/lit8 v13, v16, 0x1

    int-to-char v15, v13

    .line 1484
    aput-char v15, v6, v12

    add-int/2addr v12, v14

    .line 1486
    aget v15, v7, v13

    add-int/2addr v15, v14

    aput v15, v7, v13

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    if-lez v11, :cond_b

    add-int/lit8 v11, v11, -0x1

    :goto_8
    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_a

    .line 1494
    aput-char v9, v6, v12

    add-int/lit8 v12, v12, 0x1

    .line 1496
    aget v1, v7, v9

    add-int/2addr v1, v14

    aput v1, v7, v9

    goto :goto_9

    .line 1498
    :cond_a
    aput-char v14, v6, v12

    add-int/lit8 v12, v12, 0x1

    .line 1500
    aget v1, v7, v14

    add-int/2addr v1, v14

    aput v1, v7, v14

    :goto_9
    const/4 v1, 0x2

    if-lt v11, v1, :cond_b

    add-int/lit8 v11, v11, -0x2

    shr-int/2addr v11, v14

    goto :goto_8

    :cond_b
    int-to-char v1, v3

    .line 1511
    aput-char v1, v6, v12

    .line 1512
    aget v1, v7, v3

    add-int/2addr v1, v14

    aput v1, v7, v3

    add-int/2addr v12, v14

    .line 1513
    iput v12, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt p2, p3, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p4, :cond_1

    .line 912
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p2, :cond_0

    .line 913
    aput v1, p0, v2

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/tools/bzip2/CBZip2OutputStream$Data;II)V
    .locals 17

    move-object/from16 v0, p2

    move/from16 v1, p3

    .line 384
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->heap:[I

    .line 385
    iget-object v3, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->weight:[I

    .line 386
    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->parent:[I

    move v4, v1

    :goto_0
    const/4 v5, -0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 389
    aget v7, p1, v4

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    :goto_1
    shl-int/lit8 v6, v6, 0x8

    aput v6, v3, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :cond_2
    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 397
    aput v4, v2, v4

    .line 398
    aput v4, v3, v4

    const/4 v7, -0x2

    .line 399
    aput v7, v0, v4

    move v8, v4

    move v7, v6

    :goto_2
    if-gt v7, v1, :cond_4

    .line 402
    aput v5, v0, v7

    add-int/lit8 v8, v8, 0x1

    .line 404
    aput v7, v2, v8

    move v9, v8

    .line 408
    :goto_3
    aget v10, v3, v7

    shr-int/lit8 v11, v9, 0x1

    aget v12, v2, v11

    aget v13, v3, v12

    if-ge v10, v13, :cond_3

    .line 409
    aput v12, v2, v9

    move v9, v11

    goto :goto_3

    .line 412
    :cond_3
    aput v7, v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_4
    if-le v8, v6, :cond_d

    .line 416
    aget v9, v2, v6

    .line 417
    aget v10, v2, v8

    aput v10, v2, v6

    add-int/lit8 v8, v8, -0x1

    move v11, v6

    :goto_5
    shl-int/lit8 v12, v11, 0x1

    if-le v12, v8, :cond_5

    goto :goto_6

    :cond_5
    if-ge v12, v8, :cond_6

    add-int/lit8 v13, v12, 0x1

    .line 431
    aget v14, v2, v13

    aget v14, v3, v14

    aget v15, v2, v12

    aget v15, v3, v15

    if-ge v14, v15, :cond_6

    move v12, v13

    .line 436
    :cond_6
    aget v13, v3, v10

    aget v14, v2, v12

    aget v15, v3, v14

    if-ge v13, v15, :cond_c

    .line 444
    :goto_6
    aput v10, v2, v11

    .line 446
    aget v13, v2, v6

    .line 447
    aget v15, v2, v8

    aput v15, v2, v6

    add-int/lit8 v8, v8, -0x1

    move v10, v6

    :goto_7
    shl-int/lit8 v11, v10, 0x1

    if-le v11, v8, :cond_7

    goto :goto_8

    :cond_7
    if-ge v11, v8, :cond_8

    add-int/lit8 v12, v11, 0x1

    .line 461
    aget v14, v2, v12

    aget v14, v3, v14

    aget v16, v2, v11

    aget v4, v3, v16

    if-ge v14, v4, :cond_8

    move v11, v12

    .line 466
    :cond_8
    aget v4, v3, v15

    aget v12, v2, v11

    aget v14, v3, v12

    if-ge v4, v14, :cond_b

    .line 474
    :goto_8
    aput v15, v2, v10

    add-int/2addr v7, v6

    .line 476
    aput v7, v0, v13

    aput v7, v0, v9

    .line 478
    aget v4, v3, v9

    .line 479
    aget v9, v3, v13

    and-int/lit16 v10, v4, -0x100

    and-int/lit16 v11, v9, -0x100

    add-int/2addr v10, v11

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v9, v9, 0xff

    if-le v4, v9, :cond_9

    goto :goto_9

    :cond_9
    move v4, v9

    :goto_9
    add-int/2addr v4, v6

    or-int/2addr v4, v10

    .line 485
    aput v4, v3, v7

    .line 487
    aput v5, v0, v7

    add-int/lit8 v8, v8, 0x1

    .line 489
    aput v7, v2, v8

    .line 494
    aget v4, v3, v7

    move v9, v8

    :goto_a
    shr-int/lit8 v10, v9, 0x1

    .line 495
    aget v11, v2, v10

    aget v12, v3, v11

    if-ge v4, v12, :cond_a

    .line 496
    aput v11, v2, v9

    move v9, v10

    goto :goto_a

    .line 499
    :cond_a
    aput v7, v2, v9

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 470
    :cond_b
    aput v12, v2, v10

    move v10, v11

    const/4 v4, 0x0

    goto :goto_7

    .line 440
    :cond_c
    aput v14, v2, v11

    move v11, v12

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_d
    move v7, v6

    const/4 v4, 0x0

    :goto_b
    if-gt v7, v1, :cond_10

    move v8, v7

    const/4 v9, 0x0

    .line 507
    :goto_c
    aget v8, v0, v8

    if-ltz v8, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v8, v7, -0x1

    int-to-byte v10, v9

    .line 512
    aput-byte v10, p0, v8

    move/from16 v8, p4

    if-le v9, v8, :cond_f

    move v4, v6

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    move/from16 v8, p4

    if-eqz v4, :cond_2

    move v7, v6

    :goto_d
    if-ge v7, v1, :cond_2

    .line 520
    aget v9, v3, v7

    shr-int/lit8 v9, v9, 0x8

    shr-int/2addr v9, v6

    add-int/2addr v9, v6

    shl-int/lit8 v9, v9, 0x8

    .line 522
    aput v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_11
    return-void
.end method

.method protected static hbMakeCodeLengths([C[III)V
    .locals 17

    move/from16 v0, p2

    const/16 v1, 0x204

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v1, v1, [I

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 232
    aget v7, p1, v4

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    :goto_1
    shl-int/lit8 v6, v6, 0x8

    aput v6, v3, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :cond_2
    if-eqz v4, :cond_11

    const/4 v4, 0x0

    aput v4, v2, v4

    aput v4, v3, v4

    const/4 v7, -0x2

    aput v7, v1, v4

    move v8, v4

    move v7, v6

    :goto_2
    if-gt v7, v0, :cond_4

    .line 245
    aput v5, v1, v7

    add-int/lit8 v8, v8, 0x1

    .line 247
    aput v7, v2, v8

    move v9, v8

    .line 251
    :goto_3
    aget v10, v3, v7

    shr-int/lit8 v11, v9, 0x1

    aget v12, v2, v11

    aget v13, v3, v12

    if-ge v10, v13, :cond_3

    .line 252
    aput v12, v2, v9

    move v9, v11

    goto :goto_3

    .line 255
    :cond_3
    aput v7, v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v0

    :goto_4
    if-le v8, v6, :cond_d

    aget v9, v2, v6

    .line 262
    aget v10, v2, v8

    aput v10, v2, v6

    add-int/lit8 v8, v8, -0x1

    move v11, v6

    :goto_5
    shl-int/lit8 v12, v11, 0x1

    if-le v12, v8, :cond_5

    goto :goto_6

    :cond_5
    if-ge v12, v8, :cond_6

    add-int/lit8 v13, v12, 0x1

    .line 276
    aget v14, v2, v13

    aget v14, v3, v14

    aget v15, v2, v12

    aget v15, v3, v15

    if-ge v14, v15, :cond_6

    move v12, v13

    .line 281
    :cond_6
    aget v13, v3, v10

    aget v14, v2, v12

    aget v15, v3, v14

    if-ge v13, v15, :cond_c

    .line 289
    :goto_6
    aput v10, v2, v11

    aget v13, v2, v6

    .line 292
    aget v15, v2, v8

    aput v15, v2, v6

    add-int/lit8 v8, v8, -0x1

    move v10, v6

    :goto_7
    shl-int/lit8 v11, v10, 0x1

    if-le v11, v8, :cond_7

    goto :goto_8

    :cond_7
    if-ge v11, v8, :cond_8

    add-int/lit8 v12, v11, 0x1

    .line 306
    aget v14, v2, v12

    aget v14, v3, v14

    aget v16, v2, v11

    aget v4, v3, v16

    if-ge v14, v4, :cond_8

    move v11, v12

    .line 311
    :cond_8
    aget v4, v3, v15

    aget v12, v2, v11

    aget v14, v3, v12

    if-ge v4, v14, :cond_b

    .line 319
    :goto_8
    aput v15, v2, v10

    add-int/2addr v7, v6

    .line 321
    aput v7, v1, v13

    aput v7, v1, v9

    .line 323
    aget v4, v3, v9

    .line 324
    aget v9, v3, v13

    and-int/lit16 v10, v4, -0x100

    and-int/lit16 v11, v9, -0x100

    add-int/2addr v10, v11

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v9, v9, 0xff

    if-le v4, v9, :cond_9

    goto :goto_9

    :cond_9
    move v4, v9

    :goto_9
    add-int/2addr v4, v6

    or-int/2addr v4, v10

    .line 331
    aput v4, v3, v7

    .line 334
    aput v5, v1, v7

    add-int/lit8 v8, v8, 0x1

    .line 336
    aput v7, v2, v8

    .line 341
    aget v4, v3, v7

    move v9, v8

    :goto_a
    shr-int/lit8 v10, v9, 0x1

    .line 342
    aget v11, v2, v10

    aget v12, v3, v11

    if-ge v4, v12, :cond_a

    .line 343
    aput v11, v2, v9

    move v9, v10

    goto :goto_a

    .line 346
    :cond_a
    aput v7, v2, v9

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 315
    :cond_b
    aput v12, v2, v10

    move v10, v11

    const/4 v4, 0x0

    goto :goto_7

    .line 285
    :cond_c
    aput v14, v2, v11

    move v11, v12

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_d
    move v7, v6

    const/4 v4, 0x0

    :goto_b
    if-gt v7, v0, :cond_10

    move v8, v7

    const/4 v9, 0x0

    .line 356
    :goto_c
    aget v8, v1, v8

    if-ltz v8, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v8, v7, -0x1

    int-to-char v10, v9

    .line 361
    aput-char v10, p0, v8

    move/from16 v8, p3

    if-le v9, v8, :cond_f

    move v4, v6

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    move/from16 v8, p3

    if-eqz v4, :cond_2

    move v7, v6

    :goto_d
    if-ge v7, v0, :cond_2

    .line 369
    aget v9, v3, v7

    shr-int/lit8 v9, v9, 0x8

    shr-int/2addr v9, v6

    add-int/2addr v9, v6

    shl-int/lit8 v9, v9, 0x8

    .line 371
    aput v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_11
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 765
    new-instance v0, Lorg/apache/tools/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    invoke-direct {v0, v1}, Lorg/apache/tools/bzip2/BlockSort;-><init>(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;)V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    const/16 v0, 0x68

    .line 771
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 772
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    const/4 v0, 0x0

    .line 774
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 775
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->initBlock()V

    return-void
.end method

.method private initBlock()V
    .locals 4

    .line 780
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->initialiseCRC()V

    const/4 v0, -0x1

    .line 781
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 784
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    const/16 v2, 0x100

    :goto_0
    add-int/2addr v2, v0

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 786
    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private moveToFrontCodeAndSend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->origPtr:I

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 1398
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->generateMTFValues()V

    .line 1399
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues()V

    return-void
.end method

.method private sendMTFValues()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 958
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nInUse:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/4 v3, 0x6

    move v4, v3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    .line 961
    aget-object v5, v0, v4

    move v6, v1

    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    const/16 v7, 0xf

    .line 963
    aput-byte v7, v5, v6

    goto :goto_0

    .line 969
    :cond_1
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    const/16 v4, 0xc8

    if-ge v0, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x258

    if-ge v0, v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/16 v2, 0x4b0

    if-ge v0, v2, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    const/16 v2, 0x960

    if-ge v0, v2, :cond_5

    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    move v2, v3

    .line 973
    :goto_1
    invoke-direct {p0, v2, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues0(II)V

    .line 978
    invoke-direct {p0, v2, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues1(II)I

    move-result v0

    .line 981
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues2(II)V

    .line 984
    invoke-direct {p0, v2, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues3(II)V

    .line 987
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues4()V

    .line 990
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues5(II)V

    .line 993
    invoke-direct {p0, v2, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues6(II)V

    .line 996
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues7()V

    return-void
.end method

.method private sendMTFValues0(II)V
    .locals 11

    .line 1000
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1001
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->mtfFreq:[I

    .line 1003
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    const/4 v3, 0x0

    move v4, p1

    move v5, v3

    :goto_0
    if-lez v4, :cond_4

    .line 1007
    div-int v6, v2, v4

    add-int/lit8 v7, v5, -0x1

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, p2, -0x1

    if-ge v7, v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 1012
    aget v9, v1, v7

    add-int/2addr v8, v9

    goto :goto_1

    :cond_0
    if-le v7, v5, :cond_1

    if-eq v4, p1, :cond_1

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    sub-int v9, p1, v4

    and-int/2addr v6, v9

    if-eqz v6, :cond_1

    add-int/lit8 v6, v7, -0x1

    .line 1016
    aget v7, v1, v7

    sub-int/2addr v8, v7

    move v7, v6

    :cond_1
    add-int/lit8 v6, v4, -0x1

    .line 1019
    aget-object v6, v0, v6

    move v9, p2

    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    if-lt v9, v5, :cond_2

    if-gt v9, v7, :cond_2

    .line 1022
    aput-byte v3, v6, v9

    goto :goto_2

    :cond_2
    const/16 v10, 0xf

    .line 1024
    aput-byte v10, v6, v9

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v7, 0x1

    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private sendMTFValues1(II)I
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1034
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1035
    iget-object v3, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 1036
    iget-object v4, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_fave:[I

    .line 1037
    iget-object v5, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_cost:[S

    .line 1038
    iget-object v6, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1039
    iget-object v7, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    .line 1040
    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    const/4 v8, 0x0

    .line 1041
    aget-object v9, v2, v8

    const/4 v10, 0x1

    .line 1042
    aget-object v11, v2, v10

    const/4 v12, 0x2

    .line 1043
    aget-object v13, v2, v12

    const/4 v14, 0x3

    .line 1044
    aget-object v15, v2, v14

    const/4 v14, 0x4

    .line 1045
    aget-object v17, v2, v14

    const/16 v18, 0x5

    .line 1046
    aget-object v19, v2, v18

    .line 1047
    iget v12, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    move v10, v8

    move/from16 v22, v10

    :goto_0
    if-ge v10, v14, :cond_c

    move/from16 v22, v1

    :cond_0
    const/16 v23, -0x1

    add-int/lit8 v22, v22, -0x1

    if-ltz v22, :cond_1

    .line 1053
    aput v8, v4, v22

    .line 1054
    aget-object v24, v3, v22

    move/from16 v25, p2

    :goto_1
    add-int/lit8 v25, v25, -0x1

    if-ltz v25, :cond_0

    .line 1056
    aput v8, v24, v25

    goto :goto_1

    :cond_1
    move v14, v8

    move/from16 v22, v14

    .line 1062
    :goto_2
    iget v8, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    if-ge v14, v8, :cond_a

    add-int/lit8 v8, v14, 0x32

    const/16 v21, 0x1

    add-int/lit8 v8, v8, -0x1

    move/from16 v26, v14

    add-int/lit8 v14, v12, -0x1

    .line 1070
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v14, 0x6

    if-ne v1, v14, :cond_3

    move/from16 v14, v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_3
    if-gt v14, v8, :cond_2

    .line 1083
    aget-char v33, v6, v14

    move/from16 v34, v12

    .line 1084
    aget-byte v12, v9, v33

    and-int/lit16 v12, v12, 0xff

    add-int v12, v27, v12

    int-to-short v12, v12

    move-object/from16 v35, v9

    .line 1085
    aget-byte v9, v11, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v28, v9

    int-to-short v9, v9

    move/from16 v27, v9

    .line 1086
    aget-byte v9, v13, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v29, v9

    int-to-short v9, v9

    move/from16 v28, v9

    .line 1087
    aget-byte v9, v15, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v30, v9

    int-to-short v9, v9

    move/from16 v29, v9

    .line 1088
    aget-byte v9, v17, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v31, v9

    int-to-short v9, v9

    move/from16 v30, v9

    .line 1089
    aget-byte v9, v19, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v32, v9

    int-to-short v9, v9

    add-int/lit8 v14, v14, 0x1

    move/from16 v32, v9

    move/from16 v31, v30

    move-object/from16 v9, v35

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, v12

    move/from16 v12, v34

    goto :goto_3

    :cond_2
    move-object/from16 v35, v9

    move/from16 v34, v12

    const/4 v9, 0x0

    .line 1092
    aput-short v27, v5, v9

    const/4 v12, 0x1

    .line 1093
    aput-short v28, v5, v12

    const/4 v12, 0x2

    .line 1094
    aput-short v29, v5, v12

    const/4 v14, 0x3

    .line 1095
    aput-short v30, v5, v14

    const/16 v16, 0x4

    .line 1096
    aput-short v31, v5, v16

    .line 1097
    aput-short v32, v5, v18

    goto :goto_7

    :cond_3
    move-object/from16 v35, v9

    move/from16 v34, v12

    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v14, 0x3

    const/16 v16, 0x4

    move/from16 v20, v1

    :goto_4
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_4

    .line 1101
    aput-short v9, v5, v20

    goto :goto_4

    :cond_4
    move/from16 v9, v26

    :goto_5
    if-gt v9, v8, :cond_6

    .line 1105
    aget-char v20, v6, v9

    move/from16 v24, v1

    :goto_6
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_5

    .line 1107
    aget-short v27, v5, v24

    aget-object v28, v2, v24

    aget-byte v12, v28, v20

    and-int/lit16 v12, v12, 0xff

    add-int v12, v27, v12

    int-to-short v12, v12

    aput-short v12, v5, v24

    const/4 v12, 0x2

    goto :goto_6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x2

    goto :goto_5

    :cond_6
    :goto_7
    const v9, 0x3b9ac9ff

    move v12, v1

    move/from16 v14, v23

    :goto_8
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_8

    move-object/from16 v24, v11

    .line 1118
    aget-short v11, v5, v12

    if-ge v11, v9, :cond_7

    move v9, v11

    move v14, v12

    :cond_7
    move-object/from16 v11, v24

    goto :goto_8

    :cond_8
    move-object/from16 v24, v11

    .line 1125
    aget v9, v4, v14

    const/4 v11, 0x1

    add-int/2addr v9, v11

    aput v9, v4, v14

    int-to-byte v9, v14

    .line 1126
    aput-byte v9, v7, v22

    add-int/lit8 v22, v22, 0x1

    .line 1132
    aget-object v9, v3, v14

    move/from16 v14, v26

    :goto_9
    if-gt v14, v8, :cond_9

    .line 1134
    aget-char v12, v6, v14

    aget v21, v9, v12

    add-int/lit8 v21, v21, 0x1

    aput v21, v9, v12

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v11, v24

    move/from16 v12, v34

    move-object/from16 v9, v35

    goto/16 :goto_2

    :cond_a
    move-object/from16 v35, v9

    move-object/from16 v24, v11

    move/from16 v34, v12

    const/4 v11, 0x1

    const/16 v16, 0x4

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v1, :cond_b

    .line 1144
    aget-object v9, v2, v8

    aget-object v12, v3, v8

    iget-object v14, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    const/16 v11, 0x14

    move/from16 v0, p2

    invoke-static {v9, v12, v14, v0, v11}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->hbMakeCodeLengths([B[ILorg/apache/tools/bzip2/CBZip2OutputStream$Data;II)V

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_b
    move/from16 v0, p2

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v14, v16

    move-object/from16 v11, v24

    move/from16 v12, v34

    move-object/from16 v9, v35

    goto/16 :goto_0

    :cond_c
    return v22
.end method

.method private sendMTFValues2(II)V
    .locals 7

    .line 1154
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1155
    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues2_pos:[B

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    int-to-byte v2, p1

    .line 1158
    aput-byte v2, v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v2, p1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 1162
    iget-object v3, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    aget-byte v3, v3, v2

    .line 1163
    aget-byte v4, v1, p1

    move v5, p1

    :goto_2
    if-eq v3, v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 1169
    aget-byte v6, v1, v5

    .line 1170
    aput-byte v4, v1, v5

    move v4, v6

    goto :goto_2

    .line 1173
    :cond_1
    aput-byte v4, v1, p1

    .line 1174
    iget-object v3, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selectorMtf:[B

    int-to-byte v4, v5

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private sendMTFValues3(II)V
    .locals 9

    .line 1179
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_code:[[I

    .line 1180
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_3

    .line 1185
    aget-object v4, v1, v3

    const/16 v5, 0x20

    move v6, p2

    move v7, v2

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_2

    .line 1187
    aget-byte v8, v4, v6

    and-int/lit16 v8, v8, 0xff

    if-le v8, v7, :cond_1

    move v7, v8

    :cond_1
    if-ge v8, v5, :cond_0

    move v5, v8

    goto :goto_1

    .line 1199
    :cond_2
    aget-object v4, v0, v3

    aget-object v6, v1, v3

    invoke-static {v4, v6, v5, v7, p2}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->hbAssignCodes([I[BIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private sendMTFValues4()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    .line 1205
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sentMTFValues4_inUse16:[Z

    const/16 v2, 0x10

    move v3, v2

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    .line 1208
    aput-boolean v4, v1, v3

    mul-int/lit8 v4, v3, 0x10

    move v6, v2

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    add-int v7, v4, v6

    .line 1211
    aget-boolean v7, v0, v7

    if-eqz v7, :cond_1

    .line 1212
    aput-boolean v5, v1, v3

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1219
    aget-boolean v6, v1, v3

    invoke-direct {p0, v5, v6}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1222
    :cond_3
    iget-object v3, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1223
    iget v6, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1224
    iget v7, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    move v8, v4

    :goto_2
    if-ge v8, v2, :cond_7

    .line 1227
    aget-boolean v9, v1, v8

    if-eqz v9, :cond_6

    mul-int/lit8 v9, v8, 0x10

    move v10, v4

    :goto_3
    if-ge v10, v2, :cond_6

    :goto_4
    const/16 v11, 0x8

    if-lt v6, v11, :cond_4

    shr-int/lit8 v11, v7, 0x18

    .line 1232
    invoke-virtual {v3, v11}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v6, v6, -0x8

    goto :goto_4

    :cond_4
    add-int v11, v9, v10

    .line 1236
    aget-boolean v11, v0, v11

    if-eqz v11, :cond_5

    rsub-int/lit8 v11, v6, 0x20

    sub-int/2addr v11, v5

    shl-int v11, v5, v11

    or-int/2addr v7, v11

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1244
    :cond_7
    iput v7, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1245
    iput v6, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    return-void
.end method

.method private sendMTFValues5(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1250
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    const/16 p1, 0xf

    .line 1251
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 1253
    iget-object p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1254
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selectorMtf:[B

    .line 1256
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1257
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_3

    .line 1260
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    move v6, v3

    :goto_1
    const/16 v7, 0x8

    if-ge v6, v5, :cond_1

    :goto_2
    if-lt v1, v7, :cond_0

    shr-int/lit8 v8, v2, 0x18

    .line 1263
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    :cond_0
    rsub-int/lit8 v7, v1, 0x20

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    shl-int v7, v8, v7

    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_3
    if-lt v1, v7, :cond_2

    shr-int/lit8 v5, v2, 0x18

    .line 1273
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1281
    :cond_3
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1282
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    return-void
.end method

.method private sendMTFValues6(II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1287
    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1288
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1290
    iget v3, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1291
    iget v4, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    const/4 v5, 0x0

    move/from16 v6, p1

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_7

    .line 1294
    aget-object v8, v1, v7

    .line 1295
    aget-byte v9, v8, v5

    and-int/lit16 v9, v9, 0xff

    :goto_1
    const/16 v10, 0x8

    if-lt v3, v10, :cond_0

    shr-int/lit8 v10, v4, 0x18

    .line 1299
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    :cond_0
    rsub-int/lit8 v11, v3, 0x20

    add-int/lit8 v11, v11, -0x5

    shl-int v11, v9, v11

    or-int/2addr v4, v11

    add-int/lit8 v3, v3, 0x5

    move/from16 v11, p2

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_6

    .line 1307
    aget-byte v13, v8, v12

    and-int/lit16 v13, v13, 0xff

    :goto_3
    const/4 v14, 0x2

    if-ge v9, v13, :cond_2

    :goto_4
    if-lt v3, v10, :cond_1

    shr-int/lit8 v15, v4, 0x18

    .line 1311
    invoke-virtual {v2, v15}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    :cond_1
    rsub-int/lit8 v15, v3, 0x20

    sub-int/2addr v15, v14

    shl-int/2addr v14, v15

    or-int/2addr v4, v14

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    :goto_5
    if-le v9, v13, :cond_4

    :goto_6
    if-lt v3, v10, :cond_3

    shr-int/lit8 v15, v4, 0x18

    .line 1324
    invoke-virtual {v2, v15}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_6

    :cond_3
    rsub-int/lit8 v15, v3, 0x20

    sub-int/2addr v15, v14

    const/16 v16, 0x3

    shl-int v15, v16, v15

    or-int/2addr v4, v15

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_4
    :goto_7
    if-lt v3, v10, :cond_5

    shr-int/lit8 v13, v4, 0x18

    .line 1336
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1345
    :cond_7
    iput v4, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1346
    iput v3, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    return-void
.end method

.method private sendMTFValues7()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1350
    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1351
    iget-object v2, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1352
    iget-object v3, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_code:[[I

    .line 1353
    iget-object v4, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1354
    iget-object v5, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    .line 1355
    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1356
    iget v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    .line 1360
    iget v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1361
    iget v8, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v9, v6, :cond_2

    add-int/lit8 v11, v9, 0x32

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v6, -0x1

    .line 1364
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1365
    aget-byte v12, v5, v10

    and-int/lit16 v12, v12, 0xff

    .line 1366
    aget-object v13, v3, v12

    .line 1367
    aget-object v12, v2, v12

    :goto_1
    if-gt v9, v11, :cond_1

    .line 1370
    aget-char v14, v1, v9

    :goto_2
    const/16 v15, 0x8

    if-lt v7, v15, :cond_0

    shr-int/lit8 v15, v8, 0x18

    .line 1377
    invoke-virtual {v4, v15}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_2

    .line 1381
    :cond_0
    aget-byte v15, v12, v14

    and-int/lit16 v15, v15, 0xff

    .line 1382
    aget v14, v13, v14

    rsub-int/lit8 v16, v7, 0x20

    sub-int v16, v16, v15

    shl-int v14, v14, v16

    or-int/2addr v8, v14

    add-int/2addr v7, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1392
    :cond_2
    iput v8, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1393
    iput v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    return-void
.end method

.method private write0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    and-int/lit16 p1, p1, 0xff

    if-ne v0, p1, :cond_0

    .line 889
    iget p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    const/16 v0, 0xfe

    if-le p1, v0, :cond_2

    .line 890
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    .line 891
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 p1, 0x0

    .line 892
    iput p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    goto :goto_0

    .line 896
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    .line 897
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    .line 898
    iput p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p1, 0xff

    .line 901
    iput p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 902
    iget p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    :cond_2
    :goto_0
    return-void
.end method

.method private writeRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 671
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->allowableBlockSize:I

    if-ge v0, v1, :cond_3

    .line 672
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 673
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 674
    iget-object v3, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    int-to-byte v3, v1

    .line 677
    iget v5, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    .line 678
    iget-object v6, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v6, v1, v5}, Lorg/apache/tools/bzip2/CRC;->updateCRC(II)V

    .line 679
    iget-object v1, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    if-eq v5, v4, :cond_2

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    if-eq v5, v6, :cond_0

    add-int/lit8 v5, v5, -0x4

    .line 699
    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    aput-boolean v4, v2, v5

    add-int/lit8 v2, v0, 0x2

    .line 700
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    .line 701
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x4

    .line 702
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x5

    .line 703
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x6

    int-to-byte v3, v5

    .line 704
    aput-byte v3, v1, v0

    .line 705
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x2

    .line 692
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    .line 693
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x4

    .line 694
    aput-byte v3, v1, v0

    .line 695
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x2

    .line 687
    aput-byte v3, v1, v2

    add-int/2addr v0, v6

    .line 688
    aput-byte v3, v1, v0

    .line 689
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x2

    .line 683
    aput-byte v3, v1, v2

    add-int/2addr v0, v4

    .line 684
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_0

    .line 709
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->endBlock()V

    .line 710
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->initBlock()V

    .line 711
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->finish()V

    .line 747
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->finish()V

    .line 721
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 728
    :try_start_0
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    if-lez v1, :cond_0

    .line 729
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    :cond_0
    const/4 v1, -0x1

    .line 731
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 732
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->endBlock()V

    .line 733
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->endCompression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 736
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 737
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 735
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 736
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 737
    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    .line 738
    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final getBlockSize()I
    .locals 1

    .line 855
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 649
    invoke-direct {p0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->write0(I)V

    return-void

    .line 651
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_4

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 867
    array-length v2, p1

    if-gt v0, v2, :cond_2

    .line 872
    iget-object p3, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz p3, :cond_1

    :goto_0
    if-ge p2, v0, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 877
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->write0(I)V

    move p2, p3

    goto :goto_0

    :cond_0
    return-void

    .line 873
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 868
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ") + len("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") > buf.length("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "len("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 862
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
