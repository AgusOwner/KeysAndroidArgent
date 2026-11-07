.class public final Lorg/apache/tools/ant/filters/TailFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "TailFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_NUM_LINES:I = 0xa

.field private static final LINES_KEY:Ljava/lang/String; = "lines"

.field private static final SKIP_KEY:Ljava/lang/String; = "skip"


# instance fields
.field private completedReadAhead:Z

.field private line:Ljava/lang/String;

.field private lineList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linePos:I

.field private lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

.field private lines:J

.field private skip:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const-wide/16 v0, 0xa

    .line 53
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 67
    iput v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const-wide/16 v0, 0xa

    .line 53
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 67
    iput p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    .line 69
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    .line 88
    new-instance p1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    return-void
.end method

.method private getLines()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    return-wide v0
.end method

.method private getSkip()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    return-wide v0
.end method

.method private initialize()V
    .locals 6

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

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

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/filters/TailFilter;->setLines(J)V

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

    iput-wide v3, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private tailFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 209
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    if-nez v0, :cond_5

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3

    .line 211
    iget-object v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-wide v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    cmp-long p1, v4, v0

    if-nez p1, :cond_0

    .line 213
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 214
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 217
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    move-wide v2, v0

    :cond_1
    add-long/2addr v4, v2

    .line 218
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    int-to-long v0, p1

    cmp-long p1, v4, v0

    if-gez p1, :cond_2

    .line 219
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_2
    const-string p1, ""

    return-object p1

    :cond_3
    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    .line 225
    iget-wide v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_4

    const/4 p1, 0x0

    :goto_0
    int-to-long v2, p1

    .line 226
    iget-wide v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 227
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 230
    :cond_4
    iget-wide v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_5

    .line 231
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    .line 232
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_5
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 237
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 3

    .line 175
    new-instance v0, Lorg/apache/tools/ant/filters/TailFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TailFilter;-><init>(Ljava/io/Reader;)V

    .line 176
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getLines()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/filters/TailFilter;->setLines(J)V

    .line 177
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getSkip()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/filters/TailFilter;->setSkip(J)V

    const/4 p1, 0x1

    .line 178
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/TailFilter;->setInitialized(Z)V

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TailFilter;->initialize()V

    .line 108
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/TailFilter;->setInitialized(Z)V

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    iget v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    .line 122
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    :cond_2
    return v0

    .line 112
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->in:Ljava/io/Reader;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 113
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/filters/TailFilter;->tailFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    goto :goto_0
.end method

.method public setLines(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    return-void
.end method

.method public setSkip(J)V
    .locals 0

    .line 152
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    return-void
.end method
