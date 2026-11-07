.class Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddEofFilter"
.end annotation


# instance fields
.field private lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 704
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, -0x1

    .line 701
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 712
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_1

    .line 713
    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    return v2

    .line 717
    :cond_0
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    :cond_1
    return v0
.end method
