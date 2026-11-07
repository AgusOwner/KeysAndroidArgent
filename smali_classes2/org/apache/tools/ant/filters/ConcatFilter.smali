.class public final Lorg/apache/tools/ant/filters/ConcatFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "ConcatFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# instance fields
.field private append:Ljava/io/File;

.field private appendReader:Ljava/io/Reader;

.field private prepend:Ljava/io/File;

.field private prependReader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prependReader:Ljava/io/Reader;

    .line 60
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->appendReader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prependReader:Ljava/io/Reader;

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->appendReader:Ljava/io/Reader;

    return-void
.end method

.method private initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 195
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "prepend"

    .line 196
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/filters/ConcatFilter;->setPrepend(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    const-string v5, "append"

    .line 198
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/filters/ConcatFilter;->setAppend(Ljava/io/File;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prepend:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prepend:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prepend:Ljava/io/File;

    .line 207
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prepend:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prependReader:Ljava/io/Reader;

    .line 209
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->append:Ljava/io/File;

    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_5

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->append:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->append:Ljava/io/File;

    .line 213
    :cond_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->append:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->appendReader:Ljava/io/Reader;

    :cond_6
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 175
    new-instance v0, Lorg/apache/tools/ant/filters/ConcatFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ConcatFilter;-><init>(Ljava/io/Reader;)V

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->getPrepend()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ConcatFilter;->setPrepend(Ljava/io/File;)V

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->getAppend()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ConcatFilter;->setAppend(Ljava/io/File;)V

    return-object v0
.end method

.method public getAppend()Ljava/io/File;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->append:Ljava/io/File;

    return-object v0
.end method

.method public getPrepend()Ljava/io/File;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prepend:Ljava/io/File;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/ConcatFilter;->initialize()V

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/ConcatFilter;->setInitialized(Z)V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prependReader:Ljava/io/Reader;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 109
    iget-object v3, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prependReader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 110
    iput-object v1, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prependReader:Ljava/io/Reader;

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    .line 114
    invoke-super {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;->read()I

    move-result v0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 119
    iget-object v3, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->appendReader:Ljava/io/Reader;

    if-eqz v3, :cond_4

    .line 120
    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 123
    iget-object v2, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->appendReader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 124
    iput-object v1, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->appendReader:Ljava/io/Reader;

    :cond_4
    return v0
.end method

.method public setAppend(Ljava/io/File;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->append:Ljava/io/File;

    return-void
.end method

.method public setPrepend(Ljava/io/File;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ConcatFilter;->prepend:Ljava/io/File;

    return-void
.end method
