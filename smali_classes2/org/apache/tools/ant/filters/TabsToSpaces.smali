.class public final Lorg/apache/tools/ant/filters/TabsToSpaces;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "TabsToSpaces.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_TAB_LENGTH:I = 0x8

.field private static final TAB_LENGTH_KEY:Ljava/lang/String; = "tablength"


# instance fields
.field private spacesRemaining:I

.field private tabLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const/16 v0, 0x8

    .line 49
    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x8

    .line 49
    iput p1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    return-void
.end method

.method private getTablength()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    return v0
.end method

.method private initialize()V
    .locals 6

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    const-string v4, "tablength"

    .line 147
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

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

    .line 133
    new-instance v0, Lorg/apache/tools/ant/filters/TabsToSpaces;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TabsToSpaces;-><init>(Ljava/io/Reader;)V

    .line 134
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->getTablength()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/TabsToSpaces;->setTablength(I)V

    const/4 p1, 0x1

    .line 135
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/TabsToSpaces;->setInitialized(Z)V

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
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->initialize()V

    .line 86
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/TabsToSpaces;->setInitialized(Z)V

    .line 91
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    const/16 v2, 0x20

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 92
    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 97
    iget v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    return v2
.end method

.method public setTablength(I)V
    .locals 0

    .line 110
    iput p1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    return-void
.end method
