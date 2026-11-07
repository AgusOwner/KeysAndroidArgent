.class public Lorg/apache/tools/ant/util/RegexpPatternMapper;
.super Ljava/lang/Object;
.source "RegexpPatternMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# static fields
.field private static final DECIMAL:I = 0xa


# instance fields
.field private handleDirSep:Z

.field protected reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

.field private regexpOptions:I

.field protected result:Ljava/lang/StringBuffer;

.field protected to:[C


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->handleDirSep:Z

    .line 52
    iput v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    .line 48
    new-instance v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher()Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 121
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->handleDirSep:Z

    if-eqz v1, :cond_1

    const-string v1, "\\"

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    .line 123
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    .line 127
    invoke-interface {v1, p1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->matches(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/RegexpPatternMapper;->replaceReferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected replaceReferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    iget v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    invoke-interface {v0, p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->getGroups(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    .line 143
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 144
    aget-char v3, v2, v0

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 146
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 147
    aget-char v2, v2, v3

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    goto :goto_1

    .line 152
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 156
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 159
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 72
    invoke-static {p1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->setPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot load regular expression matcher"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 83
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "this mapper requires a \'from\' attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHandleDirSep(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->handleDirSep:Z

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    return-void

    .line 103
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "this mapper requires a \'to\' attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
