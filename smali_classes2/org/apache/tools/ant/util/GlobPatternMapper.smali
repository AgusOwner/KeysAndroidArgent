.class public Lorg/apache/tools/ant/util/GlobPatternMapper;
.super Ljava/lang/Object;
.source "GlobPatternMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private caseSensitive:Z

.field private fromContainsStar:Z

.field protected fromPostfix:Ljava/lang/String;

.field protected fromPrefix:Ljava/lang/String;

.field private handleDirSep:Z

.field protected postfixLength:I

.field protected prefixLength:I

.field private toContainsStar:Z

.field protected toPostfix:Ljava/lang/String;

.field protected toPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    .line 72
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toContainsStar:Z

    .line 73
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->caseSensitive:Z

    return-void
.end method

.method private modifyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 198
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->caseSensitive:Z

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    if-eqz v0, :cond_1

    const-string v0, "\\"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 203
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected extractVariablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 188
    iget v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->prefixLength:I

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->postfixLength:I

    sub-int/2addr v1, v2

    .line 188
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHandleDirSep()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    return v0
.end method

.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->prefixLength:I

    iget v4, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->postfixLength:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 165
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 168
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 169
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toContainsStar:Z

    if-eqz v2, :cond_3

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/GlobPatternMapper;->extractVariablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 178
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->caseSensitive:Z

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x2a

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    const-string p1, ""

    .line 119
    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    .line 125
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->prefixLength:I

    .line 126
    iget-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->postfixLength:I

    return-void

    .line 114
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "this mapper requires a \'from\' attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHandleDirSep(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x2a

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 140
    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    const-string p1, ""

    .line 141
    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    .line 145
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toContainsStar:Z

    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "this mapper requires a \'to\' attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
