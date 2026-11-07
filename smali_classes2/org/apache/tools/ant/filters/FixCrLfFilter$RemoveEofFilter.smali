.class Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveEofFilter"
.end annotation


# instance fields
.field private lookAhead:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 727
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, -0x1

    .line 724
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    .line 730
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    :goto_0
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

    .line 737
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 740
    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    return v1

    .line 744
    :cond_0
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    .line 745
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    return v1
.end method
