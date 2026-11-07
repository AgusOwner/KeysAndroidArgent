.class public final Lorg/apache/tools/ant/filters/HeadFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "HeadFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_NUM_LINES:I = 0xa

.field private static final LINES_KEY:Ljava/lang/String; = "lines"

.field private static final SKIP_KEY:Ljava/lang/String; = "skip"


# instance fields
.field private eof:Z

.field private line:Ljava/lang/String;

.field private linePos:I

.field private lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

.field private lines:J

.field private linesRead:J

.field private skip:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    const-wide/16 v2, 0xa

    .line 53
    iput-wide v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    .line 56
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 62
    iput-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    const-wide/16 v2, 0xa

    .line 53
    iput-wide v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    .line 56
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    .line 86
    new-instance p1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    return-void
.end method

.method private getLines()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    return-wide v0
.end method

.method private getSkip()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    return-wide v0
.end method

.method private headFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 205
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    .line 206
    iget-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v9, 0x0

    if-lez v8, :cond_0

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-object v9

    .line 212
    :cond_0
    iget-wide v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->eof:Z

    return-object v9

    :cond_1
    return-object p1
.end method

.method private initialize()V
    .locals 6

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 191
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lines"

    .line 192
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    goto :goto_1

    :cond_0
    const-string v5, "skip"

    .line 194
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 3

    .line 175
    new-instance v0, Lorg/apache/tools/ant/filters/HeadFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/HeadFilter;-><init>(Ljava/io/Reader;)V

    .line 176
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getLines()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/filters/HeadFilter;->setLines(J)V

    .line 177
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getSkip()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/filters/HeadFilter;->setSkip(J)V

    const/4 p1, 0x1

    .line 178
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/HeadFilter;->setInitialized(Z)V

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->initialize()V

    .line 105
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/HeadFilter;->setInitialized(Z)V

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    iget v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    .line 122
    iget-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    :cond_2
    return v0

    .line 109
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->in:Ljava/io/Reader;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez v0, :cond_4

    return v2

    .line 113
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/filters/HeadFilter;->headFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    .line 114
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->eof:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    goto :goto_0
.end method

.method public setLines(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    return-void
.end method

.method public setSkip(J)V
    .locals 0

    .line 152
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    return-void
.end method
