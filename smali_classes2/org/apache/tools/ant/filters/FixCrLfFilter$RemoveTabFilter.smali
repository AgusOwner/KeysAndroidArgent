.class Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveTabFilter"
.end annotation


# instance fields
.field private columnNumber:I

.field private tabLength:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 0

    .line 834
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 829
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    .line 836
    iput p2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->tabLength:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 859
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 845
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    goto :goto_1

    .line 848
    :cond_1
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->tabLength:I

    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    rem-int/2addr v3, v1

    sub-int/2addr v1, v3

    .line 850
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->editsBlocked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    const/16 v0, 0x20

    if-le v1, v2, :cond_2

    .line 852
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->push(C)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 856
    :cond_2
    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    :goto_1
    return v0
.end method
