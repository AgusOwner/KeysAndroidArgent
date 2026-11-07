.class public final Lorg/apache/tools/ant/filters/StripLineBreaks;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "StripLineBreaks.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final LINE_BREAKS_KEY:Ljava/lang/String; = "linebreaks"


# instance fields
.field private lineBreaks:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const-string v0, "\r\n"

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const-string p1, "\r\n"

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    return-void
.end method

.method private getLineBreaks()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "linebreaks"

    .line 144
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 151
    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 130
    new-instance v0, Lorg/apache/tools/ant/filters/StripLineBreaks;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/StripLineBreaks;-><init>(Ljava/io/Reader;)V

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->getLineBreaks()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/StripLineBreaks;->setLineBreaks(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 132
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/StripLineBreaks;->setInitialized(Z)V

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->initialize()V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->setInitialized(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 90
    iget-object v2, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public setLineBreaks(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    return-void
.end method
