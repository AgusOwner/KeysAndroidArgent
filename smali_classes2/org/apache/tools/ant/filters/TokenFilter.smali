.class public Lorg/apache/tools/ant/filters/TokenFilter;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "TokenFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/TokenFilter$Filter;,
        Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;,
        Lorg/apache/tools/ant/filters/TokenFilter$IgnoreBlank;,
        Lorg/apache/tools/ant/filters/TokenFilter$Trim;,
        Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;,
        Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;,
        Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;,
        Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;,
        Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;,
        Lorg/apache/tools/ant/filters/TokenFilter$StringTokenizer;,
        Lorg/apache/tools/ant/filters/TokenFilter$FileTokenizer;
    }
.end annotation


# instance fields
.field private delimOutput:Ljava/lang/String;

.field private filters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/filters/TokenFilter$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;

.field private linePos:I

.field private tokenizer:Lorg/apache/tools/ant/util/Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    .line 61
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    return-void
.end method

.method public static convertRegexOptions(Ljava/lang/String;)I
    .locals 0

    .line 706
    invoke-static {p0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 691
    invoke-static {p0}, Lorg/apache/tools/ant/util/StringUtils;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/filters/TokenFilter$Filter;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/Tokenizer;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_0

    .line 202
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    return-void

    .line 200
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one tokenizer allowed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addContainsRegex(Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addContainsString(Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addDeleteCharacters(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addFileTokenizer(Lorg/apache/tools/ant/filters/TokenFilter$FileTokenizer;)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    return-void
.end method

.method public addIgnoreBlank(Lorg/apache/tools/ant/filters/TokenFilter$IgnoreBlank;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addLineTokenizer(Lorg/apache/tools/ant/util/LineTokenizer;)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    return-void
.end method

.method public addReplaceRegex(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addReplaceString(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addStringTokenizer(Lorg/apache/tools/ant/filters/TokenFilter$StringTokenizer;)V
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    return-void
.end method

.method public addTrim(Lorg/apache/tools/ant/filters/TokenFilter$Trim;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 145
    new-instance v0, Lorg/apache/tools/ant/filters/TokenFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;-><init>(Ljava/io/Reader;)V

    .line 146
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    iput-object p1, v0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    .line 147
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    iput-object p1, v0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 148
    iget-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    iput-object p1, v0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->setProject(Lorg/apache/tools/ant/Project;)V

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    .line 129
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    :cond_2
    return v0

    .line 108
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->in:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 112
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/filters/TokenFilter$Filter;

    .line 113
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/tools/ant/filters/TokenFilter$Filter;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_6
    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v0}, Lorg/apache/tools/ant/util/Tokenizer;->getPostToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v1}, Lorg/apache/tools/ant/util/Tokenizer;->getPostToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setDelimOutput(Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-static {p1}, Lorg/apache/tools/ant/filters/TokenFilter;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    return-void
.end method
