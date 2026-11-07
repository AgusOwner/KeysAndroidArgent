.class Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddTabFilter"
.end annotation


# instance fields
.field private columnNumber:I

.field private tabLength:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 0

    .line 756
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 751
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    .line 757
    iput p2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v0, v3, :cond_9

    const/16 v3, 0xd

    if-eq v0, v3, :cond_9

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    .line 822
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto/16 :goto_4

    .line 769
    :cond_0
    iget v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    .line 770
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->editsBlocked()Z

    move-result v5

    if-nez v5, :cond_b

    .line 771
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v2

    div-int/2addr v0, v5

    mul-int/2addr v0, v5

    move v6, v2

    move v5, v4

    .line 775
    :goto_0
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-eq v7, v1, :cond_3

    if-eq v7, v3, :cond_1

    .line 793
    invoke-virtual {p0, v7}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->push(I)V

    goto :goto_2

    .line 778
    :cond_1
    iget v7, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    if-ne v7, v0, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 781
    iget v6, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 787
    :cond_3
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v5, v5, 0x1

    .line 790
    iget v6, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    :goto_1
    add-int/2addr v0, v6

    move v6, v4

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 v0, v6, -0x1

    if-lez v6, :cond_5

    .line 798
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->push(C)V

    .line 799
    iget v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    move v6, v0

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_6

    .line 802
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->push(C)V

    .line 803
    iget v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    move v5, v0

    goto :goto_3

    .line 805
    :cond_6
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_4

    .line 808
    :cond_7
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto :goto_4

    .line 811
    :cond_8
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto :goto_4

    .line 766
    :cond_9
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto :goto_4

    .line 819
    :cond_a
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v3

    mul-int/2addr v1, v3

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    :cond_b
    :goto_4
    return v0
.end method
