.class Lorg/apache/tools/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 586
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/bzip2/BlockSort;->INCS:[I

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

.method constructor <init>(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    new-array v1, v0, [I

    .line 133
    iput-object v1, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    new-array v1, v0, [I

    .line 134
    iput-object v1, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    new-array v0, v0, [I

    .line 135
    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_dd:[I

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 137
    iput-object v1, p0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_runningOrder:[I

    new-array v1, v0, [I

    .line 138
    iput-object v1, p0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_copy:[I

    new-array v0, v0, [Z

    .line 139
    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_bigDone:[Z

    const v0, 0x10001

    new-array v0, v0, [I

    .line 141
    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->ftab:[I

    .line 151
    iget-object p1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    iput-object p1, p0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    return-void
.end method

.method private fallbackQSort3([I[III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 353
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-wide v8, v4

    move v7, v6

    :goto_0
    if-lez v7, :cond_c

    add-int/lit8 v7, v7, -0x1

    .line 356
    invoke-direct {v0, v7}, Lorg/apache/tools/bzip2/BlockSort;->fpop(I)[I

    move-result-object v10

    .line 357
    aget v11, v10, v3

    .line 358
    aget v10, v10, v6

    sub-int v12, v10, v11

    const/16 v13, 0xa

    if-ge v12, v13, :cond_0

    .line 361
    invoke-direct {v0, v1, v2, v11, v10}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    goto :goto_0

    :cond_0
    const-wide/16 v12, 0x1dc5

    mul-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    const-wide/32 v14, 0x8000

    .line 372
    rem-long/2addr v8, v14

    const-wide/16 v14, 0x3

    .line 373
    rem-long v14, v8, v14

    cmp-long v16, v14, v4

    if-nez v16, :cond_1

    .line 375
    aget v12, v1, v11

    aget v12, v2, v12

    :goto_1
    int-to-long v12, v12

    goto :goto_2

    :cond_1
    cmp-long v12, v14, v12

    if-nez v12, :cond_2

    add-int v12, v11, v10

    ushr-int/2addr v12, v6

    .line 377
    aget v12, v1, v12

    aget v12, v2, v12

    goto :goto_1

    .line 379
    :cond_2
    aget v12, v1, v10

    aget v12, v2, v12

    goto :goto_1

    :goto_2
    move v15, v10

    move/from16 v17, v15

    move v3, v11

    move v14, v3

    :goto_3
    if-le v14, v15, :cond_3

    goto :goto_6

    .line 392
    :cond_3
    aget v18, v1, v14

    aget v18, v2, v18

    long-to-int v4, v12

    sub-int v18, v18, v4

    if-nez v18, :cond_4

    .line 394
    invoke-direct {v0, v1, v14, v3}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v3, v3, 0x1

    :goto_4
    add-int/lit8 v14, v14, 0x1

    :goto_5
    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_4
    if-lez v18, :cond_b

    :goto_6
    move/from16 v4, v17

    :goto_7
    if-le v14, v15, :cond_5

    goto :goto_8

    .line 408
    :cond_5
    aget v5, v1, v15

    aget v5, v2, v5

    long-to-int v6, v12

    sub-int/2addr v5, v6

    if-nez v5, :cond_6

    .line 410
    invoke-direct {v0, v1, v15, v4}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x1

    goto :goto_7

    :cond_6
    if-gez v5, :cond_a

    :goto_8
    if-le v14, v15, :cond_9

    if-ge v4, v3, :cond_7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    sub-int v5, v3, v11

    sub-int v6, v14, v3

    .line 432
    invoke-direct {v0, v5, v6}, Lorg/apache/tools/bzip2/BlockSort;->fmin(II)I

    move-result v5

    sub-int v6, v14, v5

    .line 433
    invoke-direct {v0, v1, v11, v6, v5}, Lorg/apache/tools/bzip2/BlockSort;->fvswap([IIII)V

    sub-int v5, v10, v4

    sub-int/2addr v4, v15

    .line 434
    invoke-direct {v0, v5, v4}, Lorg/apache/tools/bzip2/BlockSort;->fmin(II)I

    move-result v5

    add-int/lit8 v15, v15, 0x1

    sub-int v6, v10, v5

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 435
    invoke-direct {v0, v1, v15, v6, v5}, Lorg/apache/tools/bzip2/BlockSort;->fvswap([IIII)V

    add-int/2addr v14, v11

    sub-int/2addr v14, v3

    add-int/lit8 v14, v14, -0x1

    sub-int v3, v10, v4

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v14, v11

    sub-int v5, v10, v3

    if-le v4, v5, :cond_8

    add-int/lit8 v4, v7, 0x1

    .line 441
    invoke-direct {v0, v7, v11, v14}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v5, v4, 0x1

    .line 442
    invoke-direct {v0, v4, v3, v10}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    move v7, v5

    goto :goto_9

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 444
    invoke-direct {v0, v7, v3, v10}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v3, v4, 0x1

    .line 445
    invoke-direct {v0, v4, v11, v14}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    move v7, v3

    :goto_9
    move/from16 v6, v18

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v18, 0x1

    .line 423
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v17, v4

    move/from16 v6, v18

    goto :goto_5

    :cond_a
    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v6, v18

    goto :goto_7

    :cond_b
    move/from16 v18, v6

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .locals 6

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    add-int/lit8 v0, p4, -0x4

    :goto_0
    if-lt v0, p3, :cond_2

    .line 279
    aget v1, p1, v0

    .line 280
    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x4

    :goto_1
    if-gt v3, p4, :cond_1

    .line 281
    aget v4, p1, v3

    aget v5, p2, v4

    if-le v2, v5, :cond_1

    add-int/lit8 v5, v3, -0x4

    .line 283
    aput v4, p1, v5

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x4

    .line 285
    aput v1, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p4, -0x1

    :goto_2
    if-lt v0, p3, :cond_4

    .line 290
    aget v1, p1, v0

    .line 291
    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    :goto_3
    if-gt v3, p4, :cond_3

    .line 292
    aget v4, p1, v3

    aget v5, p2, v4

    if-le v2, v5, :cond_3

    add-int/lit8 v5, v3, -0x1

    .line 293
    aput v4, p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 295
    aput v1, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private fmin(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private fpop(I)[I
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    aget p1, v1, p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method private fpush(III)V
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 328
    iget-object p2, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    aput p3, p2, p1

    return-void
.end method

.method private fswap([III)V
    .locals 2

    .line 305
    aget v0, p1, p2

    .line 306
    aget v1, p1, p3

    aput v1, p1, p2

    .line 307
    aput v0, p1, p3

    return-void
.end method

.method private fvswap([IIII)V
    .locals 0

    :goto_0
    if-lez p4, :cond_0

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEclass()[I
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->eclass:[I

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->eclass:[I

    return-object v0
.end method

.method private mainQSort3(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 801
    iget-object v8, v6, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    .line 802
    iget-object v9, v6, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    .line 803
    iget-object v10, v6, Lorg/apache/tools/bzip2/BlockSort;->stack_dd:[I

    .line 804
    iget-object v11, v7, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 805
    iget-object v12, v7, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    const/4 v0, 0x0

    .line 807
    aput p2, v8, v0

    .line 808
    aput p3, v9, v0

    .line 809
    aput p4, v10, v0

    const/4 v13, 0x1

    move v0, v13

    :goto_0
    add-int/lit8 v14, v0, -0x1

    if-ltz v14, :cond_b

    .line 812
    aget v2, v8, v14

    .line 813
    aget v3, v9, v14

    .line 814
    aget v4, v10, v14

    sub-int v0, v3, v2

    const/16 v1, 0x14

    if-lt v0, v1, :cond_9

    const/16 v0, 0xa

    if-le v4, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v0, v4, 0x1

    .line 822
    aget v1, v11, v2

    add-int/2addr v1, v0

    aget-byte v1, v12, v1

    aget v5, v11, v3

    add-int/2addr v5, v0

    aget-byte v5, v12, v5

    add-int v15, v2, v3

    ushr-int/2addr v15, v13

    aget v15, v11, v15

    add-int/2addr v15, v0

    aget-byte v15, v12, v15

    invoke-static {v1, v5, v15}, Lorg/apache/tools/bzip2/BlockSort;->med3(BBB)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v5, v2

    move v13, v5

    move v15, v3

    move/from16 v16, v15

    :goto_1
    if-gt v5, v15, :cond_2

    .line 832
    aget v17, v11, v5

    add-int v18, v17, v0

    aget-byte v6, v12, v18

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v6, v1

    if-nez v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 836
    aget v18, v11, v13

    aput v18, v11, v5

    add-int/lit8 v5, v13, 0x1

    .line 837
    aput v17, v11, v13

    move v13, v5

    move v5, v6

    goto :goto_4

    :cond_1
    if-gez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    move/from16 v6, v16

    :goto_2
    if-gt v5, v15, :cond_4

    .line 846
    aget v16, v11, v15

    add-int v17, v16, v0

    aget-byte v7, v12, v17

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v15, -0x1

    .line 850
    aget v17, v11, v6

    aput v17, v11, v15

    add-int/lit8 v15, v6, -0x1

    .line 851
    aput v16, v11, v6

    move v6, v15

    move v15, v7

    goto :goto_3

    :cond_3
    if-lez v7, :cond_4

    add-int/lit8 v15, v15, -0x1

    :goto_3
    move-object/from16 v7, p1

    goto :goto_2

    :cond_4
    if-gt v5, v15, :cond_5

    .line 860
    aget v7, v11, v5

    add-int/lit8 v16, v5, 0x1

    .line 861
    aget v17, v11, v15

    aput v17, v11, v5

    add-int/lit8 v5, v15, -0x1

    .line 862
    aput v7, v11, v15

    move-object/from16 v7, p1

    move v15, v5

    move/from16 v5, v16

    move/from16 v16, v6

    :goto_4
    move-object/from16 v6, p0

    goto :goto_1

    :cond_5
    if-ge v6, v13, :cond_6

    .line 869
    aput v2, v8, v14

    .line 870
    aput v3, v9, v14

    .line 871
    aput v0, v10, v14

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    const/4 v15, 0x1

    goto :goto_9

    :cond_6
    sub-int v1, v13, v2

    sub-int v7, v5, v13

    if-ge v1, v7, :cond_7

    goto :goto_5

    :cond_7
    move v1, v7

    :goto_5
    sub-int v7, v5, v1

    .line 876
    invoke-static {v11, v2, v7, v1}, Lorg/apache/tools/bzip2/BlockSort;->vswap([IIII)V

    sub-int v1, v3, v6

    sub-int/2addr v6, v15

    if-ge v1, v6, :cond_8

    goto :goto_6

    :cond_8
    move v1, v6

    :goto_6
    sub-int v7, v3, v1

    const/4 v15, 0x1

    add-int/2addr v7, v15

    .line 879
    invoke-static {v11, v5, v7, v1}, Lorg/apache/tools/bzip2/BlockSort;->vswap([IIII)V

    add-int/2addr v5, v2

    sub-int/2addr v5, v13

    sub-int/2addr v5, v15

    sub-int v1, v3, v6

    add-int/2addr v1, v15

    .line 884
    aput v2, v8, v14

    .line 885
    aput v5, v9, v14

    .line 886
    aput v4, v10, v14

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v5, v15

    .line 889
    aput v5, v8, v14

    add-int/lit8 v2, v1, -0x1

    .line 890
    aput v2, v9, v14

    .line 891
    aput v0, v10, v14

    add-int/2addr v14, v15

    .line 894
    aput v1, v8, v14

    .line 895
    aput v3, v9, v14

    .line 896
    aput v4, v10, v14

    add-int/2addr v14, v15

    goto :goto_8

    :cond_9
    :goto_7
    move v15, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    .line 817
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    :goto_8
    move v0, v14

    :goto_9
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v13, v15

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 605
    iget-boolean v1, v0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    iget v2, v0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const/4 v5, 0x0

    .line 609
    :goto_1
    sget-object v7, Lorg/apache/tools/bzip2/BlockSort;->INCS:[I

    aget v7, v7, v5

    if-ge v7, v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 613
    :cond_2
    iget-object v3, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 614
    iget-object v7, v0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    .line 615
    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    add-int/lit8 v8, p5, 0x1

    .line 617
    iget-boolean v9, v0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    .line 618
    iget v10, v0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    .line 619
    iget v11, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1b

    .line 625
    sget-object v12, Lorg/apache/tools/bzip2/BlockSort;->INCS:[I

    aget v12, v12, v5

    add-int v13, p2, v12

    add-int/lit8 v14, v13, -0x1

    :goto_3
    if-gt v13, v2, :cond_1a

    const/4 v15, 0x3

    :goto_4
    if-gt v13, v2, :cond_18

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_18

    .line 631
    aget v16, v3, v13

    add-int v17, v16, p4

    move/from16 v19, v13

    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_5
    if-eqz v18, :cond_4

    .line 650
    aput v20, v3, v19

    sub-int v4, v19, v12

    if-gt v4, v14, :cond_3

    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    goto/16 :goto_a

    :cond_3
    move/from16 v19, v4

    goto :goto_6

    :cond_4
    const/16 v18, 0x1

    :goto_6
    sub-int v4, v19, v12

    .line 658
    aget v4, v3, v4

    add-int v21, v4, p4

    add-int/lit8 v22, v21, 0x1

    .line 664
    aget-byte v6, v1, v22

    add-int/lit8 v22, v17, 0x1

    move/from16 p1, v4

    aget-byte v4, v1, v22

    if-ne v6, v4, :cond_15

    add-int/lit8 v4, v21, 0x2

    .line 665
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x2

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_14

    add-int/lit8 v4, v21, 0x3

    .line 666
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x3

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_13

    add-int/lit8 v4, v21, 0x4

    .line 667
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x4

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_12

    add-int/lit8 v4, v21, 0x5

    .line 668
    aget-byte v4, v1, v4

    add-int/lit8 v6, v17, 0x5

    aget-byte v6, v1, v6

    if-ne v4, v6, :cond_11

    add-int/lit8 v21, v21, 0x6

    .line 669
    aget-byte v4, v1, v21

    add-int/lit8 v6, v17, 0x6

    move/from16 v22, v5

    aget-byte v5, v1, v6

    if-ne v4, v5, :cond_10

    move/from16 v4, p5

    :goto_7
    if-lez v4, :cond_f

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v5, v21, 0x1

    move/from16 v23, v4

    .line 674
    aget-byte v4, v1, v5

    add-int/lit8 v24, v6, 0x1

    move/from16 v25, v12

    aget-byte v12, v1, v24

    if-ne v4, v12, :cond_e

    .line 675
    aget-char v4, v7, v21

    aget-char v12, v7, v6

    if-ne v4, v12, :cond_d

    add-int/lit8 v4, v21, 0x2

    .line 676
    aget-byte v12, v1, v4

    add-int/lit8 v26, v6, 0x2

    move/from16 v27, v14

    aget-byte v14, v1, v26

    if-ne v12, v14, :cond_c

    .line 677
    aget-char v5, v7, v5

    aget-char v12, v7, v24

    if-ne v5, v12, :cond_b

    add-int/lit8 v5, v21, 0x3

    .line 678
    aget-byte v12, v1, v5

    add-int/lit8 v14, v6, 0x3

    move/from16 v24, v15

    aget-byte v15, v1, v14

    if-ne v12, v15, :cond_a

    .line 679
    aget-char v4, v7, v4

    aget-char v12, v7, v26

    if-ne v4, v12, :cond_9

    add-int/lit8 v4, v21, 0x4

    .line 680
    aget-byte v12, v1, v4

    add-int/lit8 v6, v6, 0x4

    aget-byte v15, v1, v6

    if-ne v12, v15, :cond_8

    .line 681
    aget-char v5, v7, v5

    aget-char v12, v7, v14

    if-ne v5, v12, :cond_7

    if-lt v4, v8, :cond_5

    sub-int/2addr v4, v8

    :cond_5
    move/from16 v21, v4

    if-lt v6, v8, :cond_6

    sub-int/2addr v6, v8

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v23

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    goto :goto_7

    :cond_7
    if-le v5, v12, :cond_16

    goto :goto_8

    :cond_8
    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v15, 0xff

    if-le v4, v5, :cond_16

    goto :goto_8

    :cond_9
    if-le v4, v12, :cond_16

    goto :goto_8

    :cond_a
    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v15, 0xff

    if-le v4, v5, :cond_16

    goto :goto_8

    :cond_b
    move/from16 v24, v15

    if-le v5, v12, :cond_16

    goto :goto_8

    :cond_c
    move/from16 v24, v15

    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v14, 0xff

    if-le v4, v5, :cond_16

    goto :goto_8

    :cond_d
    move/from16 v27, v14

    move/from16 v24, v15

    if-le v4, v12, :cond_16

    goto :goto_8

    :cond_e
    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v12, 0xff

    if-le v4, v5, :cond_16

    :goto_8
    goto/16 :goto_b

    :cond_f
    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    goto/16 :goto_9

    :cond_10
    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    goto :goto_9

    :cond_11
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-gt v4, v5, :cond_17

    goto :goto_9

    :cond_12
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-gt v4, v5, :cond_17

    goto :goto_9

    :cond_13
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-gt v4, v5, :cond_17

    goto :goto_9

    :cond_14
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-gt v4, v5, :cond_17

    goto :goto_9

    :cond_15
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v5, v6, 0xff

    and-int/lit16 v4, v4, 0xff

    if-gt v5, v4, :cond_17

    :cond_16
    :goto_9
    move/from16 v4, v19

    .line 755
    :goto_a
    aput v16, v3, v4

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v22

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_17
    :goto_b
    move/from16 v20, p1

    move/from16 v5, v22

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_18
    move/from16 v22, v5

    move/from16 v25, v12

    move/from16 v27, v14

    if-eqz v9, :cond_19

    if-gt v13, v2, :cond_19

    if-le v11, v10, :cond_19

    goto :goto_c

    :cond_19
    move/from16 v5, v22

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_1a
    move/from16 v22, v5

    goto/16 :goto_2

    .line 765
    :cond_1b
    :goto_c
    iput v11, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    if-eqz v9, :cond_1c

    if-le v11, v10, :cond_1c

    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    return v4
.end method

.method private static med3(BBB)B
    .locals 0

    if-ge p0, p1, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    :goto_0
    move p0, p1

    goto :goto_2

    :cond_2
    if-le p0, p2, :cond_3

    :goto_1
    move p0, p2

    :cond_3
    :goto_2
    return p0
.end method

.method private static vswap([IIII)V
    .locals 3

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 780
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 781
    aget v2, p0, p2

    aput v2, p0, p1

    add-int/lit8 p1, p2, 0x1

    .line 782
    aput v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V
    .locals 3

    mul-int/lit8 v0, p2, 0x1e

    .line 155
    iput v0, p0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 160
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/bzip2/BlockSort;->mainSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    .line 164
    iget-boolean v1, p0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    iget v2, p0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_1

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    .line 169
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    const/4 v2, -0x1

    .line 170
    iput v2, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->origPtr:I

    :goto_1
    if-gt v0, p2, :cond_3

    .line 172
    aget v2, v1, v0

    if-nez v2, :cond_2

    .line 173
    iput v0, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->origPtr:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method final fallbackSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V
    .locals 5

    .line 188
    iget-object v0, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 189
    iget-object v0, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSort([I[BI)V

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    .line 191
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    aget v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    .line 194
    iget-object v0, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 195
    iget-object p1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    aput p2, p1, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method final fallbackSort([I[BI)V
    .locals 10

    const/16 v0, 0x101

    new-array v1, v0, [I

    .line 484
    invoke-direct {p0}, Lorg/apache/tools/bzip2/BlockSort;->getEclass()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p3, :cond_0

    .line 487
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v4, p3, :cond_1

    .line 494
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_2

    .line 497
    aget v6, v1, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, v1, v7

    add-int/2addr v6, v7

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, p3, :cond_3

    .line 501
    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    .line 502
    aget v6, v1, v4

    sub-int/2addr v6, v5

    .line 503
    aput v6, v1, v4

    .line 504
    aput v0, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p3, 0x40

    .line 508
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move p2, v3

    :goto_4
    const/16 v4, 0x100

    if-ge p2, v4, :cond_4

    .line 510
    aget v4, v1, p2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    move p2, v3

    :goto_5
    const/16 v1, 0x20

    if-ge p2, v1, :cond_5

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p3

    .line 521
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/2addr v1, v5

    .line 522
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    move p2, v5

    :cond_6
    move v1, v3

    move v4, v1

    :goto_6
    if-ge v1, p3, :cond_9

    .line 531
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v1

    .line 534
    :cond_7
    aget v6, p1, v1

    sub-int/2addr v6, p2

    if-gez v6, :cond_8

    add-int/2addr v6, p3

    .line 538
    :cond_8
    aput v4, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, -0x1

    move v4, v1

    move v6, v3

    :cond_a
    add-int/2addr v4, v5

    .line 547
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    if-lt v7, p3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 552
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_d

    :goto_7
    mul-int/lit8 p2, p2, 0x2

    if-gt p2, p3, :cond_c

    if-nez v6, :cond_6

    :cond_c
    return-void

    :cond_d
    if-le v4, v7, :cond_a

    sub-int v8, v4, v7

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 561
    invoke-direct {p0, p1, v2, v7, v4}, Lorg/apache/tools/bzip2/BlockSort;->fallbackQSort3([I[III)V

    move v8, v1

    :goto_8
    if-gt v7, v4, :cond_a

    .line 566
    aget v9, p1, v7

    aget v9, v2, v9

    if-eq v8, v9, :cond_e

    .line 568
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v9

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8
.end method

.method final mainSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 908
    iget-object v9, v6, Lorg/apache/tools/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 909
    iget-object v10, v6, Lorg/apache/tools/bzip2/BlockSort;->mainSort_copy:[I

    .line 910
    iget-object v11, v6, Lorg/apache/tools/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 911
    iget-object v12, v6, Lorg/apache/tools/bzip2/BlockSort;->ftab:[I

    .line 912
    iget-object v13, v7, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 913
    iget-object v14, v7, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 914
    iget-object v15, v6, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    .line 915
    iget v5, v6, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    .line 916
    iget-boolean v4, v6, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    const v0, 0x10001

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v16, 0x0

    if-ltz v0, :cond_0

    .line 920
    aput v16, v12, v0

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_1
    const/16 v3, 0x14

    const/4 v2, 0x1

    if-ge v0, v3, :cond_1

    add-int v1, v8, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v8, 0x1

    .line 929
    rem-int v3, v0, v3

    add-int/2addr v3, v2

    aget-byte v2, v13, v3

    aput-byte v2, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x14

    add-int/2addr v0, v2

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 932
    aput-char v16, v15, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v8, 0x1

    .line 934
    aget-byte v1, v13, v0

    aput-byte v1, v13, v16

    move/from16 v17, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    move/from16 v3, v16

    :goto_3
    if-gt v3, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 940
    aget-byte v2, v13, v3

    and-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    .line 941
    aget v20, v12, v1

    const/16 v19, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v1

    move v1, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_4
    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_4

    .line 946
    aget v2, v12, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    .line 949
    aget-byte v2, v13, v1

    and-int/2addr v2, v4

    move/from16 v3, v16

    :goto_5
    if-ge v3, v8, :cond_5

    add-int/lit8 v19, v3, 0x2

    .line 951
    aget-byte v1, v13, v19

    and-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 952
    aget v19, v12, v2

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aput v19, v12, v2

    aput v3, v14, v19

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move/from16 v1, v20

    goto :goto_5

    :cond_5
    move/from16 v20, v1

    .line 956
    aget-byte v0, v13, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v13, v20

    and-int/2addr v1, v4

    add-int/2addr v0, v1

    aget v1, v12, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, v12, v0

    aput v8, v14, v1

    const/16 v20, 0x100

    move/from16 v0, v20

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 963
    aput-boolean v16, v11, v0

    .line 964
    aput v0, v9, v0

    goto :goto_6

    :cond_6
    const/16 v0, 0x16c

    :cond_7
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 968
    div-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_7
    if-gt v1, v4, :cond_7

    .line 970
    aget v2, v9, v1

    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    .line 971
    aget v3, v12, v3

    shl-int/lit8 v21, v2, 0x8

    aget v21, v12, v21

    sub-int v3, v3, v21

    add-int/lit8 v4, v0, -0x1

    sub-int v22, v1, v0

    .line 974
    aget v22, v9, v22

    move/from16 v23, v1

    :goto_8
    add-int/lit8 v24, v22, 0x1

    shl-int/lit8 v24, v24, 0x8

    aget v24, v12, v24

    shl-int/lit8 v25, v22, 0x8

    aget v25, v12, v25

    move/from16 v26, v5

    sub-int v5, v24, v25

    if-le v5, v3, :cond_9

    .line 976
    aput v22, v9, v23

    sub-int v5, v23, v0

    if-gt v5, v4, :cond_8

    move/from16 v23, v5

    goto :goto_9

    :cond_8
    sub-int v22, v5, v0

    .line 974
    aget v22, v9, v22

    move/from16 v23, v5

    move/from16 v5, v26

    goto :goto_8

    .line 982
    :cond_9
    :goto_9
    aput v2, v9, v23

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v26

    const/16 v4, 0xff

    goto :goto_7

    :cond_a
    move/from16 v26, v5

    move/from16 v5, v16

    :goto_a
    if-gt v5, v4, :cond_17

    .line 993
    aget v21, v9, v5

    move/from16 v3, v16

    :goto_b
    const/high16 v2, 0x200000

    const v0, -0x200001

    if-gt v3, v4, :cond_e

    shl-int/lit8 v1, v21, 0x8

    add-int v22, v1, v3

    .line 1004
    aget v23, v12, v22

    and-int v1, v23, v2

    if-eq v1, v2, :cond_d

    and-int v1, v23, v0

    add-int/lit8 v24, v22, 0x1

    .line 1007
    aget v24, v12, v24

    and-int v0, v24, v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_b

    const/16 v24, 0x2

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, p1

    move/from16 v28, v19

    move/from16 v19, v2

    move/from16 v2, v27

    move/from16 v18, v3

    const/16 v7, 0x14

    move/from16 v3, v25

    move v7, v4

    move/from16 v4, v24

    move/from16 v7, v26

    move-object/from16 v26, v9

    move v9, v5

    move/from16 v5, p2

    .line 1009
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/bzip2/BlockSort;->mainQSort3(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)V

    if-eqz v17, :cond_c

    .line 1010
    iget v0, v6, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    if-le v0, v7, :cond_c

    return-void

    :cond_b
    move/from16 v18, v3

    move/from16 v28, v19

    move/from16 v7, v26

    move/from16 v19, v2

    move-object/from16 v26, v9

    move v9, v5

    :cond_c
    or-int v0, v23, v19

    .line 1015
    aput v0, v12, v22

    goto :goto_c

    :cond_d
    move/from16 v18, v3

    move/from16 v7, v26

    const/16 v28, 0x1

    move-object/from16 v26, v9

    move v9, v5

    :goto_c
    add-int/lit8 v3, v18, 0x1

    move v5, v9

    move-object/from16 v9, v26

    const/16 v4, 0xff

    move/from16 v26, v7

    move-object/from16 v7, p1

    goto :goto_b

    :cond_e
    move/from16 v19, v2

    move/from16 v7, v26

    const/16 v28, 0x1

    move-object/from16 v26, v9

    move v9, v5

    move v2, v4

    move/from16 v1, v16

    :goto_d
    if-gt v1, v2, :cond_f

    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v21

    .line 1024
    aget v2, v12, v2

    and-int/2addr v2, v0

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xff

    goto :goto_d

    :cond_f
    shl-int/lit8 v1, v21, 0x8

    .line 1027
    aget v2, v12, v1

    and-int/2addr v2, v0

    add-int/lit8 v3, v21, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v4, v12, v3

    and-int/2addr v4, v0

    :goto_e
    if-ge v2, v4, :cond_12

    .line 1028
    aget v5, v14, v2

    .line 1029
    aget-byte v0, v13, v5

    move/from16 v22, v4

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 1030
    aget-boolean v4, v11, v0

    if-nez v4, :cond_11

    .line 1031
    aget v4, v10, v0

    if-nez v5, :cond_10

    move v5, v8

    goto :goto_f

    :cond_10
    add-int/lit8 v5, v5, -0x1

    :goto_f
    aput v5, v14, v4

    .line 1032
    aget v4, v10, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v22

    const v0, -0x200001

    goto :goto_e

    :cond_12
    move/from16 v0, v20

    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    shl-int/lit8 v2, v0, 0x8

    add-int v2, v2, v21

    .line 1037
    aget v4, v12, v2

    or-int v4, v4, v19

    aput v4, v12, v2

    goto :goto_10

    .line 1048
    :cond_13
    aput-boolean v28, v11, v21

    const/16 v0, 0xff

    if-ge v9, v0, :cond_16

    .line 1051
    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    .line 1052
    aget v3, v12, v3

    and-int/2addr v2, v3

    sub-int/2addr v2, v1

    move/from16 v3, v16

    :goto_11
    shr-int v4, v2, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_14
    move/from16 v4, v16

    :goto_12
    if-ge v4, v2, :cond_16

    add-int v5, v1, v4

    .line 1060
    aget v5, v14, v5

    shr-int v0, v4, v3

    int-to-char v0, v0

    .line 1062
    aput-char v0, v15, v5

    move/from16 v18, v1

    const/16 v1, 0x14

    if-ge v5, v1, :cond_15

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 1064
    aput-char v0, v15, v5

    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    const/16 v0, 0xff

    goto :goto_12

    :cond_16
    const/16 v1, 0x14

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v9, v26

    const/16 v4, 0xff

    move/from16 v26, v7

    move-object/from16 v7, p1

    goto/16 :goto_a

    :cond_17
    return-void
.end method
