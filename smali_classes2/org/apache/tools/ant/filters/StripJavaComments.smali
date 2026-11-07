.class public final Lorg/apache/tools/ant/filters/StripJavaComments;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "StripJavaComments.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# instance fields
.field private inString:Z

.field private quoted:Z

.field private readAheadCh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 51
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 142
    new-instance v0, Lorg/apache/tools/ant/filters/StripJavaComments;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/StripJavaComments;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    iput v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    goto/16 :goto_2

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 89
    iget-boolean v2, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    if-nez v2, :cond_1

    .line 90
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 91
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    goto :goto_2

    :cond_1
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_2

    .line 93
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    goto :goto_2

    .line 95
    :cond_2
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    .line 96
    iget-boolean v2, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    if-nez v2, :cond_7

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_7

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v2, :cond_3

    :goto_0
    const/16 v2, 0xa

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    const/16 v2, 0xd

    if-eq v0, v2, :cond_7

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6

    :cond_4
    if-eq v0, v1, :cond_7

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_1
    if-ne v0, v3, :cond_5

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_4

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripJavaComments;->read()I

    move-result v0

    goto :goto_2

    .line 119
    :cond_6
    iput v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    move v0, v2

    :cond_7
    :goto_2
    return v0
.end method
