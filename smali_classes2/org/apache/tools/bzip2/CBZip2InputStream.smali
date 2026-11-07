.class public Lorg/apache/tools/bzip2/CBZip2InputStream;
.super Ljava/io/InputStream;
.source "CBZip2InputStream.java"

# interfaces
.implements Lorg/apache/tools/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/bzip2/CBZip2InputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private blockRandomised:Z

.field private blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/tools/bzip2/CRC;

.field private currentChar:I

.field private currentState:I

.field private data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

.field private final decompressConcatenated:Z

.field private in:Ljava/io/InputStream;

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/tools/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/tools/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 159
    iput-object p1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 160
    iput-boolean p2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->decompressConcatenated:Z

    .line 162
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->init(Z)Z

    .line 163
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->initBlock()V

    .line 164
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupBlock()V

    return-void
.end method

.method private bsGetBit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 440
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 443
    iget-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x8

    .line 451
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sub-int/2addr v0, v2

    .line 454
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    shr-int v0, v1, v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private bsGetInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 463
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v1

    shl-int/2addr v1, v0

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    or-int/2addr v0, v1

    return v0
.end method

.method private bsGetUByte()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 459
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private bsR(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 416
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    if-ge v0, p1, :cond_2

    .line 419
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 421
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x8

    if-lt v0, p1, :cond_0

    .line 431
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    goto :goto_0

    .line 424
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sub-int/2addr v0, p1

    .line 434
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    shr-int v0, v1, v0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    and-int/2addr p1, v0

    return p1
.end method

.method private complete()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetInt()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedCombinedCRC:I

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    const/4 v2, 0x0

    .line 388
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 390
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    if-eq v0, v2, :cond_0

    .line 391
    invoke-static {}, Lorg/apache/tools/bzip2/CBZip2InputStream;->reportCRCError()V

    .line 396
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->decompressConcatenated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/tools/bzip2/CBZip2InputStream;->init(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 597
    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 598
    iget-object v2, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->temp_charArray2d:[[C

    .line 599
    iget-object v3, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    .line 600
    iget-object v4, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    .line 601
    iget-object v5, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    .line 602
    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    const/4 v6, 0x0

    move/from16 v7, p2

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_3

    .line 607
    aget-object v9, v2, v8

    const/16 v10, 0x20

    move/from16 v11, p1

    move v15, v6

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2

    .line 609
    aget-char v12, v9, v11

    if-le v12, v15, :cond_1

    move v15, v12

    :cond_1
    if-ge v12, v10, :cond_0

    move v10, v12

    goto :goto_1

    .line 617
    :cond_2
    aget-object v11, v4, v8

    aget-object v12, v5, v8

    aget-object v13, v1, v8

    aget-object v14, v2, v8

    move v9, v15

    move v15, v10

    move/from16 v16, v9

    move/from16 v17, p1

    invoke-static/range {v11 .. v17}, Lorg/apache/tools/bzip2/CBZip2InputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 619
    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 3

    .line 365
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedBlockCRC:I

    .line 368
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedBlockCRC:I

    if-eq v1, v0, :cond_0

    .line 371
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedCombinedCRC:I

    shl-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v2

    xor-int/2addr v0, v1

    .line 374
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 376
    invoke-static {}, Lorg/apache/tools/bzip2/CBZip2InputStream;->reportCRCError()V

    .line 379
    :cond_0
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    shl-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v1

    .line 382
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    return-void
.end method

.method private getAndMoveToFrontDecode()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x18

    .line 624
    invoke-direct {v0, v1}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v1

    iput v1, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->origPtr:I

    .line 625
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->recvDecodingTables()V

    .line 627
    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 628
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 629
    iget-object v3, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    .line 630
    iget-object v4, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->unzftab:[I

    .line 631
    iget-object v5, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    .line 632
    iget-object v6, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->seqToUnseq:[B

    .line 633
    iget-object v7, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 634
    iget-object v8, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    .line 635
    iget-object v9, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    .line 636
    iget-object v10, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    .line 637
    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    .line 638
    iget v11, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockSize100k:I

    const v12, 0x186a0

    mul-int/2addr v11, v12

    const/16 v12, 0x100

    :goto_0
    const/4 v13, -0x1

    add-int/2addr v12, v13

    const/4 v14, 0x0

    if-ltz v12, :cond_0

    int-to-char v13, v12

    .line 647
    aput-char v13, v7, v12

    .line 648
    aput v14, v4, v12

    goto :goto_0

    .line 653
    :cond_0
    iget v12, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->nInUse:I

    const/4 v15, 0x1

    add-int/2addr v12, v15

    .line 654
    invoke-direct {v0, v14}, Lorg/apache/tools/bzip2/CBZip2InputStream;->getAndMoveToFrontDecode0(I)I

    move-result v16

    .line 655
    iget v13, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 656
    iget v15, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    move/from16 v18, v13

    .line 658
    aget-byte v13, v5, v14

    and-int/lit16 v13, v13, 0xff

    .line 659
    aget-object v19, v10, v13

    .line 660
    aget-object v20, v9, v13

    .line 661
    aget-object v21, v2, v13

    .line 662
    aget v13, v8, v13

    const/16 v22, 0x31

    move/from16 v24, v14

    move/from16 v23, v15

    move/from16 v14, v16

    move/from16 v25, v22

    const/4 v15, -0x1

    move/from16 v34, v18

    move/from16 v18, v13

    move/from16 v13, v34

    :goto_1
    if-eq v14, v12, :cond_16

    move/from16 v26, v12

    const-string v12, "block overrun"

    move/from16 v27, v13

    const-string v13, "unexpected end of stream"

    if-eqz v14, :cond_b

    const/4 v0, 0x1

    if-ne v14, v0, :cond_1

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v15, v15, 0x1

    if-ge v15, v11, :cond_a

    add-int/lit8 v0, v14, -0x1

    .line 736
    aget-char v12, v7, v0

    move/from16 v28, v11

    .line 737
    aget-byte v11, v6, v12

    move-object/from16 v29, v6

    and-int/lit16 v6, v11, 0xff

    aget v30, v4, v6

    const/16 v17, 0x1

    add-int/lit8 v30, v30, 0x1

    aput v30, v4, v6

    .line 738
    aput-byte v11, v3, v15

    const/16 v6, 0x10

    if-gt v14, v6, :cond_3

    :goto_2
    if-lez v0, :cond_2

    add-int/lit8 v6, v0, -0x1

    .line 747
    aget-char v11, v7, v6

    aput-char v11, v7, v0

    move v0, v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 750
    invoke-static {v7, v6, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    :goto_3
    aput-char v12, v7, v6

    if-nez v25, :cond_4

    add-int/lit8 v24, v24, 0x1

    .line 757
    aget-byte v0, v5, v24

    and-int/lit16 v0, v0, 0xff

    .line 758
    aget-object v6, v10, v0

    .line 759
    aget-object v11, v9, v0

    .line 760
    aget-object v12, v2, v0

    .line 761
    aget v0, v8, v0

    move-object/from16 v19, v6

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move/from16 v25, v22

    goto :goto_4

    :cond_4
    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v18

    :goto_4
    move/from16 v6, v23

    :goto_5
    if-ge v6, v0, :cond_6

    .line 771
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v11

    if-ltz v11, :cond_5

    shl-int/lit8 v12, v27, 0x8

    or-int v27, v12, v11

    add-int/lit8 v6, v6, 0x8

    goto :goto_5

    .line 776
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sub-int/2addr v6, v0

    shr-int v11, v27, v6

    const/4 v12, 0x1

    shl-int v14, v12, v0

    sub-int/2addr v14, v12

    and-int/2addr v11, v14

    move/from16 v23, v6

    move v6, v0

    .line 782
    :goto_6
    aget v14, v20, v6

    if-le v11, v14, :cond_9

    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v23

    :goto_7
    if-ge v14, v12, :cond_8

    .line 785
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v12

    if-ltz v12, :cond_7

    shl-int/lit8 v18, v27, 0x8

    or-int v27, v18, v12

    add-int/lit8 v14, v14, 0x8

    const/4 v12, 0x1

    goto :goto_7

    .line 790
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v23, v14, -0x1

    shl-int/lit8 v11, v11, 0x1

    shr-int v12, v27, v23

    const/4 v14, 0x1

    and-int/2addr v12, v14

    or-int/2addr v11, v12

    const/4 v12, 0x1

    goto :goto_6

    .line 796
    :cond_9
    aget v6, v19, v6

    sub-int/2addr v11, v6

    aget v14, v21, v11

    move/from16 v18, v0

    move/from16 v12, v26

    move/from16 v13, v27

    move/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 733
    :cond_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_8
    move-object/from16 v29, v6

    move/from16 v28, v11

    const/4 v0, 0x1

    const/4 v6, -0x1

    :goto_9
    if-nez v14, :cond_c

    add-int/2addr v6, v0

    goto :goto_a

    :cond_c
    const/4 v11, 0x1

    if-ne v14, v11, :cond_13

    shl-int/lit8 v11, v0, 0x1

    add-int/2addr v6, v11

    :goto_a
    if-nez v25, :cond_d

    add-int/lit8 v24, v24, 0x1

    .line 679
    aget-byte v11, v5, v24

    and-int/lit16 v11, v11, 0xff

    .line 680
    aget-object v19, v10, v11

    .line 681
    aget-object v20, v9, v11

    .line 682
    aget-object v21, v2, v11

    .line 683
    aget v18, v8, v11

    move/from16 v11, v18

    move/from16 v25, v22

    goto :goto_b

    :cond_d
    add-int/lit8 v25, v25, -0x1

    move/from16 v11, v18

    :goto_b
    move/from16 v14, v23

    :goto_c
    if-ge v14, v11, :cond_f

    .line 693
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v18

    if-ltz v18, :cond_e

    shl-int/lit8 v23, v27, 0x8

    or-int v27, v23, v18

    add-int/lit8 v14, v14, 0x8

    goto :goto_c

    .line 698
    :cond_e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sub-int/2addr v14, v11

    shr-int v18, v27, v14

    move-object/from16 v30, v2

    const/4 v2, 0x1

    shl-int v17, v2, v11

    add-int/lit8 v17, v17, -0x1

    and-int v17, v18, v17

    move/from16 v23, v14

    move/from16 v14, v17

    move/from16 v17, v11

    .line 704
    :goto_d
    aget v2, v20, v17

    if-le v14, v2, :cond_12

    add-int/lit8 v2, v17, 0x1

    move/from16 v31, v2

    move-object/from16 v32, v5

    move/from16 v2, v23

    :goto_e
    const/4 v5, 0x1

    if-ge v2, v5, :cond_11

    .line 707
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_10

    shl-int/lit8 v18, v27, 0x8

    or-int v27, v18, v5

    add-int/lit8 v2, v2, 0x8

    goto :goto_e

    .line 712
    :cond_10
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    add-int/lit8 v23, v2, -0x1

    shl-int/lit8 v2, v14, 0x1

    shr-int v5, v27, v23

    const/16 v33, 0x1

    and-int/lit8 v5, v5, 0x1

    or-int v14, v2, v5

    move/from16 v17, v31

    move-object/from16 v5, v32

    goto :goto_d

    :cond_12
    move-object/from16 v32, v5

    const/16 v33, 0x1

    .line 718
    aget v2, v19, v17

    sub-int/2addr v14, v2

    aget v14, v21, v14

    shl-int/lit8 v0, v0, 0x1

    move/from16 v18, v11

    move-object/from16 v2, v30

    goto/16 :goto_9

    :cond_13
    move-object/from16 v30, v2

    move-object/from16 v32, v5

    move/from16 v33, v11

    const/4 v0, 0x0

    .line 721
    aget-char v2, v7, v0

    aget-byte v2, v29, v2

    and-int/lit16 v5, v2, 0xff

    .line 722
    aget v11, v4, v5

    add-int/lit8 v13, v6, 0x1

    add-int/2addr v11, v13

    aput v11, v4, v5

    :goto_f
    add-int/lit8 v5, v6, -0x1

    if-ltz v6, :cond_14

    add-int/lit8 v15, v15, 0x1

    .line 725
    aput-byte v2, v3, v15

    move v6, v5

    goto :goto_f

    :cond_14
    move/from16 v11, v28

    if-ge v15, v11, :cond_15

    move-object/from16 v0, p0

    move/from16 v12, v26

    move/from16 v13, v27

    move-object/from16 v6, v29

    move-object/from16 v2, v30

    move-object/from16 v5, v32

    goto/16 :goto_1

    .line 729
    :cond_15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move/from16 v27, v13

    .line 800
    iput v15, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    move/from16 v15, v23

    .line 801
    iput v15, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    move/from16 v1, v27

    .line 802
    iput v1, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    return-void
.end method

.method private getAndMoveToFrontDecode0(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 808
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 809
    iget-object v2, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    .line 810
    iget-object v2, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    aget-object v2, v2, p1

    .line 811
    iget-object v3, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    aget v3, v3, p1

    .line 812
    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v4

    .line 813
    iget v5, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 814
    iget v6, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 816
    :goto_0
    aget v7, v2, v3

    if-le v4, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    const/4 v7, 0x1

    if-ge v5, v7, :cond_1

    .line 819
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_0

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 825
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v4, v4, 0x1

    shr-int v8, v6, v5

    and-int/2addr v7, v8

    or-int/2addr v4, v7

    goto :goto_0

    .line 832
    :cond_2
    iput v5, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 833
    iput v6, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 835
    iget-object v0, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    aget-object v0, v0, p1

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    aget-object p1, v1, p1

    aget p1, p1, v3

    sub-int/2addr v4, p1

    aget p1, v0, v4

    return p1
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 5

    const/4 v0, 0x0

    move v1, p4

    move v2, v0

    :goto_0
    if-gt v1, p5, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, p6, :cond_1

    .line 478
    aget-char v4, p3, v3

    if-ne v4, v1, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 479
    aput v3, p2, v2

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x17

    move v1, p2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3

    .line 485
    aput v0, p1, v1

    .line 486
    aput v0, p0, v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    const/4 v2, 0x1

    if-ge v1, p6, :cond_4

    .line 490
    aget-char v3, p3, v1

    add-int/2addr v3, v2

    aget v4, p1, v3

    add-int/2addr v4, v2

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 493
    :cond_4
    aget p3, p1, v0

    move p6, v2

    :goto_4
    if-ge p6, p2, :cond_5

    .line 494
    aget v1, p1, p6

    add-int/2addr p3, v1

    .line 495
    aput p3, p1, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    .line 498
    :cond_5
    aget p2, p1, p4

    move p3, p4

    :goto_5
    if-gt p3, p5, :cond_6

    add-int/lit8 p6, p3, 0x1

    .line 499
    aget v1, p1, p6

    sub-int p2, v1, p2

    add-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 502
    aput p2, p0, p3

    shl-int/2addr v0, v2

    move p3, p6

    move p2, v1

    goto :goto_5

    :cond_6
    add-int/2addr p4, v2

    :goto_6
    if-gt p4, p5, :cond_7

    add-int/lit8 p2, p4, -0x1

    .line 507
    aget p2, p0, p2

    add-int/2addr p2, v2

    shl-int/2addr p2, v2

    aget p3, p1, p4

    sub-int/2addr p2, p3

    aput p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method private init(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    const-string v1, "Garbage after a valid BZip2 stream"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Empty InputStream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    return v2

    .line 277
    :cond_2
    iget-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x42

    if-ne v0, v4, :cond_6

    const/16 v0, 0x5a

    if-ne v3, v0, :cond_6

    .line 283
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0x68

    if-eq v0, v3, :cond_4

    .line 285
    new-instance v0, Ljava/io/IOException;

    if-eqz p1, :cond_3

    const-string v1, "Stream is not in the BZip2 format"

    .line 287
    :cond_3
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_4
    iget-object p1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/16 v0, 0x31

    if-lt p1, v0, :cond_5

    const/16 v0, 0x39

    if-gt p1, v0, :cond_5

    add-int/lit8 p1, p1, -0x30

    .line 296
    iput p1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockSize100k:I

    .line 298
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 299
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    const/4 p1, 0x1

    return p1

    .line 292
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stream is not BZip2 formatted: illegal blocksize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No InputStream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initBlock()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v0

    .line 315
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v1

    .line 316
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v2

    .line 317
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v3

    .line 318
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v4

    .line 319
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v5

    const/16 v6, 0x17

    if-ne v0, v6, :cond_2

    const/16 v6, 0x72

    if-ne v1, v6, :cond_2

    const/16 v6, 0x45

    if-ne v2, v6, :cond_2

    const/16 v6, 0x38

    if-ne v3, v6, :cond_2

    const/16 v6, 0x50

    if-ne v4, v6, :cond_2

    const/16 v6, 0x90

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->complete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    :goto_0
    const/16 v6, 0x31

    const/4 v7, 0x0

    if-ne v0, v6, :cond_5

    const/16 v0, 0x41

    if-ne v1, v0, :cond_5

    const/16 v0, 0x59

    if-ne v2, v0, :cond_5

    const/16 v1, 0x26

    if-ne v3, v1, :cond_5

    const/16 v1, 0x53

    if-ne v4, v1, :cond_5

    if-ne v5, v0, :cond_5

    .line 345
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetInt()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedBlockCRC:I

    const/4 v0, 0x1

    .line 346
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v1

    if-ne v1, v0, :cond_3

    move v7, v0

    :cond_3
    iput-boolean v7, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockRandomised:Z

    .line 352
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    if-nez v1, :cond_4

    .line 353
    new-instance v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockSize100k:I

    invoke-direct {v1, v2}, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;-><init>(I)V

    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 357
    :cond_4
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->getAndMoveToFrontDecode()V

    .line 359
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1}, Lorg/apache/tools/bzip2/CRC;->initialiseCRC()V

    .line 360
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    return-void

    .line 342
    :cond_5
    iput v7, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 343
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad block header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeMaps()V
    .locals 6

    .line 210
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->inUse:[Z

    .line 211
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->seqToUnseq:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_1

    .line 216
    aget-boolean v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v2

    .line 217
    aput-byte v5, v1, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->nInUse:I

    return-void
.end method

.method private read0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 227
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    packed-switch v1, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 253
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartC()V

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartB()V

    goto :goto_0

    .line 246
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 242
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartC()V

    goto :goto_0

    .line 238
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartB()V

    :goto_0
    return v0

    .line 235
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 232
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_7
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recvDecodingTables()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 513
    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->inUse:[Z

    .line 514
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->recvDecodingTables_pos:[B

    .line 515
    iget-object v3, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    .line 516
    iget-object v4, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selectorMtf:[B

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x10

    const/4 v9, 0x1

    if-ge v6, v8, :cond_1

    .line 522
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v8

    if-eqz v8, :cond_0

    shl-int v8, v9, v6

    or-int/2addr v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x100

    :goto_1
    const/4 v10, -0x1

    add-int/2addr v6, v10

    if-ltz v6, :cond_2

    .line 528
    aput-boolean v5, v1, v6

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_5

    shl-int v11, v9, v6

    and-int/2addr v11, v7

    if-eqz v11, :cond_4

    shl-int/lit8 v11, v6, 0x4

    move v12, v5

    :goto_3
    if-ge v12, v8, :cond_4

    .line 535
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v13

    if-eqz v13, :cond_3

    add-int v13, v11, v12

    .line 536
    aput-boolean v9, v1, v13

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 542
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->makeMaps()V

    .line 543
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->nInUse:I

    add-int/lit8 v1, v1, 0x2

    const/4 v6, 0x3

    .line 546
    invoke-direct {p0, v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v6

    const/16 v7, 0xf

    .line 547
    invoke-direct {p0, v7}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v7

    move v8, v5

    :goto_4
    if-ge v8, v7, :cond_7

    move v11, v5

    .line 551
    :goto_5
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    int-to-byte v11, v11

    .line 554
    aput-byte v11, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move v8, v6

    :goto_6
    add-int/2addr v8, v10

    if-ltz v8, :cond_8

    int-to-byte v11, v8

    .line 559
    aput-byte v11, v2, v8

    goto :goto_6

    :cond_8
    move v8, v5

    :goto_7
    if-ge v8, v7, :cond_a

    .line 563
    aget-byte v11, v4, v8

    and-int/lit16 v11, v11, 0xff

    .line 564
    aget-byte v12, v2, v11

    :goto_8
    if-lez v11, :cond_9

    add-int/lit8 v13, v11, -0x1

    .line 567
    aget-byte v13, v2, v13

    aput-byte v13, v2, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 570
    :cond_9
    aput-byte v12, v2, v5

    .line 571
    aput-byte v12, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 574
    :cond_a
    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->temp_charArray2d:[[C

    move v2, v5

    :goto_9
    if-ge v2, v6, :cond_e

    const/4 v3, 0x5

    .line 578
    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v3

    .line 579
    aget-object v4, v0, v2

    move v7, v5

    :goto_a
    if-ge v7, v1, :cond_d

    .line 581
    :goto_b
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 582
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v10

    goto :goto_c

    :cond_b
    move v8, v9

    :goto_c
    add-int/2addr v3, v8

    goto :goto_b

    :cond_c
    int-to-char v8, v3

    .line 584
    aput-char v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 589
    :cond_e
    invoke-direct {p0, v1, v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;->createHuffmanDecodingTables(II)V

    return-void
.end method

.method private static reportCRCError()V
    .locals 2

    .line 1056
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BZip2 CRC error"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private setupBlock()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->cftab:[I

    .line 844
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->initTT(I)[I

    move-result-object v1

    .line 845
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    const/4 v4, 0x0

    .line 846
    aput v4, v0, v4

    .line 847
    iget-object v5, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v5, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->unzftab:[I

    const/16 v6, 0x100

    invoke-static {v5, v4, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    aget v5, v0, v4

    :goto_0
    if-gt v3, v6, :cond_1

    .line 850
    aget v7, v0, v3

    add-int/2addr v5, v7

    .line 851
    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 854
    :cond_1
    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    move v5, v4

    :goto_1
    if-gt v5, v3, :cond_2

    .line 855
    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    aget v8, v0, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v0, v7

    aput v5, v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 858
    :cond_2
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->origPtr:I

    if-ltz v0, :cond_4

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 862
    aget v0, v1, v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 863
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 864
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 865
    iput v6, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 867
    iget-boolean v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockRandomised:Z

    if-eqz v0, :cond_3

    .line 868
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    .line 869
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    .line 870
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_2

    .line 872
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    :goto_2
    return-void

    .line 859
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupNoRandPartA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    if-gt v0, v1, :cond_0

    .line 903
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    .line 904
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 905
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 906
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 907
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 908
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    const/4 v1, 0x6

    .line 909
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 910
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 912
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 913
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->endBlock()V

    .line 914
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->initBlock()V

    .line 915
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupBlock()V

    :goto_0
    return-void
.end method

.method private setupNoRandPartB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 962
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 963
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    goto :goto_0

    .line 964
    :cond_0
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 965
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    .line 966
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    const/4 v0, 0x0

    .line 967
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    .line 968
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartC()V

    goto :goto_0

    .line 970
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    :goto_0
    return-void
.end method

.method private setupNoRandPartC()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 976
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 977
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 978
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    .line 979
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    const/4 v0, 0x7

    .line 980
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    goto :goto_0

    .line 982
    :cond_0
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    const/4 v0, 0x0

    .line 983
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 984
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    :goto_0
    return-void
.end method

.method private setupRandPartA()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    if-gt v0, v1, :cond_3

    .line 878
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    .line 879
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 880
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 881
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 882
    sget-object v1, Lorg/apache/tools/bzip2/BZip2Constants;->rNums:[I

    iget v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    aget v1, v1, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    add-int/2addr v4, v3

    .line 883
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    const/16 v1, 0x200

    if-ne v4, v1, :cond_1

    .line 884
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    .line 887
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    .line 889
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    xor-int/2addr v0, v2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 890
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 891
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    const/4 v1, 0x3

    .line 892
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 893
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    goto :goto_1

    .line 895
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->endBlock()V

    .line 896
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->initBlock()V

    .line 897
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupBlock()V

    :goto_1
    return-void
.end method

.method private setupRandPartB()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 921
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 922
    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 923
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_1

    .line 924
    :cond_0
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    .line 925
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    .line 926
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 927
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 928
    sget-object v0, Lorg/apache/tools/bzip2/BZip2Constants;->rNums:[I

    iget v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    aget v0, v0, v4

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    add-int/2addr v4, v3

    .line 929
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    const/16 v0, 0x200

    if-ne v4, v0, :cond_2

    .line 930
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    .line 933
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    .line 935
    :cond_2
    :goto_0
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    .line 936
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 937
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_3

    .line 938
    iget-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    .line 940
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartC()V

    goto :goto_1

    .line 942
    :cond_4
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 943
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    :goto_1
    return-void
.end method

.method private setupRandPartC()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 949
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 950
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    .line 951
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 953
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 954
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    const/4 v0, 0x0

    .line 955
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 956
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 404
    :try_start_0
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v2, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 409
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 408
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 409
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 410
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->read0()I

    move-result v0

    return v0

    .line 173
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    .line 191
    array-length v2, p1

    if-gt v0, v2, :cond_3

    .line 196
    iget-object p3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz p3, :cond_2

    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_0

    .line 202
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->read0()I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    .line 203
    aput-byte v1, p1, p3

    move p3, v2

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    sub-int p1, p3, p2

    :goto_1
    return p1

    .line 197
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_3
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

    const-string p3, ") > dest.length("

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

    .line 189
    :cond_4
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

    .line 186
    :cond_5
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
