.class public final Lorg/apache/tools/ant/filters/LineContainsRegExp;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "LineContainsRegExp.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final CS_KEY:Ljava/lang/String; = "casesensitive"

.field private static final NEGATE_KEY:Ljava/lang/String; = "negate"

.field private static final REGEXP_KEY:Ljava/lang/String; = "regexp"


# instance fields
.field private line:Ljava/lang/String;

.field private negate:Z

.field private regexpOptions:I

.field private regexps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/RegularExpression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    .line 71
    iput v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 61
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    .line 71
    iput p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    return-void
.end method

.method private getRegexps()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/RegularExpression;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    const-string v4, "regexp"

    .line 237
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setRegexp(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "negate"

    .line 239
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setNegate(Z)V

    goto :goto_1

    :cond_1
    const-string v4, "casesensitive"

    .line 241
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setCaseSensitive(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setRegexps(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/RegularExpression;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addConfiguredRegexp(Lorg/apache/tools/ant/types/RegularExpression;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    .line 186
    new-instance v0, Lorg/apache/tools/ant/filters/LineContainsRegExp;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;-><init>(Ljava/io/Reader;)V

    .line 187
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getRegexps()Ljava/util/Vector;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setRegexps(Ljava/util/Vector;)V

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->isNegated()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setNegate(Z)V

    .line 189
    iget p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    const/16 v1, 0x100

    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setCaseSensitive(Z)V

    return-object v0
.end method

.method public isNegated()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->initialize()V

    .line 106
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setInitialized(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 113
    iget-object v2, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    goto :goto_1

    .line 116
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/RegularExpression;

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    iget v5, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    invoke-interface {v3, v4, v5}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 127
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->isNegated()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 131
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->read()I

    move-result v0

    return v0

    :cond_6
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 208
    invoke-static {p1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    return-void
.end method

.method public setNegate(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    return-void
.end method

.method public setRegexp(Ljava/lang/String;)V
    .locals 1

    .line 225
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
