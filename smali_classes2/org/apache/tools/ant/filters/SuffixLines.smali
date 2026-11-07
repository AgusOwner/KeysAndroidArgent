.class public final Lorg/apache/tools/ant/filters/SuffixLines;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "SuffixLines.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final SUFFIX_KEY:Ljava/lang/String; = "suffix"


# instance fields
.field private queuedData:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    return-void
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "suffix"

    .line 167
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 154
    new-instance v0, Lorg/apache/tools/ant/filters/SuffixLines;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/SuffixLines;-><init>(Ljava/io/Reader;)V

    .line 155
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->getSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/SuffixLines;->setSuffix(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 156
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/SuffixLines;->setInitialized(Z)V

    return-object v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->initialize()V

    .line 85
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/SuffixLines;->setInitialized(Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iput-object v2, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    .line 99
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "\r\n"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, ""

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 107
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 111
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->read()I

    move-result v0

    return v0

    .line 114
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    iget-object v3, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 117
    iput-object v2, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    :cond_7
    :goto_1
    return v0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    return-void
.end method
