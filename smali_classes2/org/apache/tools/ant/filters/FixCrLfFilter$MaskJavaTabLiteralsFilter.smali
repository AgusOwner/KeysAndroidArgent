.class Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskJavaTabLiteralsFilter"
.end annotation


# static fields
.field private static final IN_CHAR_CONST:I = 0x2

.field private static final IN_MULTI_COMMENT:I = 0x5

.field private static final IN_SINGLE_COMMENT:I = 0x4

.field private static final IN_STR_CONST:I = 0x3

.field private static final JAVA:I = 0x1

.field private static final TRANS_FROM_MULTI:I = 0x8

.field private static final TRANS_TO_COMMENT:I = 0x6


# instance fields
.field private editsBlocked:Z

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 492
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    const/4 p1, 0x1

    .line 512
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    return-void
.end method


# virtual methods
.method public editsBlocked()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->editsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    .line 522
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    const/16 v5, 0x2a

    const/16 v6, 0x2f

    const/16 v7, 0x27

    const/16 v8, 0x22

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    if-eq v0, v6, :cond_2

    goto :goto_2

    .line 603
    :cond_2
    iput v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :pswitch_2
    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    .line 596
    iput v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    .line 587
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :cond_4
    const/4 v1, 0x5

    .line 584
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    .line 590
    :cond_5
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    .line 593
    :cond_6
    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :pswitch_3
    if-eq v0, v5, :cond_7

    goto :goto_2

    :cond_7
    const/16 v1, 0x8

    .line 574
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    goto :goto_2

    .line 564
    :cond_8
    iput v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :pswitch_5
    if-eq v0, v8, :cond_9

    goto :goto_2

    .line 553
    :cond_9
    iput v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :pswitch_6
    if-eq v0, v7, :cond_a

    goto :goto_2

    .line 544
    :cond_a
    iput v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    :pswitch_7
    if-eq v0, v8, :cond_d

    if-eq v0, v7, :cond_c

    if-eq v0, v6, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x6

    .line 535
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    .line 529
    :cond_c
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_2

    .line 532
    :cond_d
    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
