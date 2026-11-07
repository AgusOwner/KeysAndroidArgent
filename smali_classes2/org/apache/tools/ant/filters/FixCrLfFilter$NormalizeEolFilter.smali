.class Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalizeEolFilter"
.end annotation


# instance fields
.field private eol:[C

.field private fixLast:Z

.field private normalizedEOL:I

.field private previousWasEOL:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;Z)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 621
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    const/4 p1, 0x0

    .line 623
    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    .line 627
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    .line 628
    iput-boolean p3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    .line 634
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    const/4 v2, 0x1

    if-nez v1, :cond_b

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    const/16 v4, 0xa

    if-eq v0, v4, :cond_6

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 642
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    if-nez v1, :cond_8

    .line 644
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    goto :goto_4

    .line 647
    :cond_1
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    :goto_0
    move v1, v3

    :goto_1
    move v4, v1

    goto :goto_5

    .line 662
    :cond_2
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 663
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v6

    if-ne v1, v5, :cond_3

    if-ne v6, v4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v1, v5, :cond_4

    .line 671
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    if-ne v1, v4, :cond_5

    .line 674
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    goto :goto_2

    .line 677
    :cond_5
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    .line 678
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    :cond_6
    :goto_2
    move v1, v2

    :goto_3
    move v4, v3

    goto :goto_5

    .line 652
    :cond_7
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    if-nez v1, :cond_8

    :goto_4
    move v1, v2

    goto :goto_1

    :cond_8
    move v4, v2

    move v1, v3

    :goto_5
    if-lez v1, :cond_a

    :goto_6
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_9

    .line 685
    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push([C)V

    .line 686
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    iget-object v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    array-length v3, v3

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    move v1, v0

    goto :goto_6

    .line 688
    :cond_9
    iput-boolean v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    .line 689
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->read()I

    move-result v0

    goto :goto_7

    :cond_a
    if-nez v4, :cond_c

    .line 691
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    goto :goto_7

    :cond_b
    sub-int/2addr v1, v2

    .line 694
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    :cond_c
    :goto_7
    return v0
.end method
