.class public Lorg/apache/tools/ant/types/selectors/FilenameSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "FilenameSelector.java"


# static fields
.field public static final CASE_KEY:Ljava/lang/String; = "casesensitive"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NEGATE_KEY:Ljava/lang/String; = "negate"

.field public static final REGEX_KEY:Ljava/lang/String; = "regex"


# instance fields
.field private casesensitive:Z

.field private expression:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private negated:Z

.field private pattern:Ljava/lang/String;

.field private reg:Lorg/apache/tools/ant/types/RegularExpression;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->validate()V

    .line 173
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 174
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    invoke-static {p1, p2, v1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean p2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    xor-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    move p3, v0

    :cond_0
    return p3

    .line 177
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez p1, :cond_2

    .line 178
    new-instance p1, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {p1}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    .line 179
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 182
    :cond_2
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    invoke-static {p1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result p1

    .line 183
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    invoke-interface {v1, p2, p1}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result p1

    iget-boolean p2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    xor-int/2addr p2, v0

    if-ne p1, p2, :cond_3

    move p3, v0

    :cond_3
    return p3
.end method

.method public setCasesensitive(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2f

    .line 79
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5c

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 81
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setNegate(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_4

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 129
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "casesensitive"

    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setCasesensitive(Z)V

    goto :goto_1

    :cond_1
    const-string v4, "negate"

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setNegate(Z)V

    goto :goto_1

    :cond_2
    const-string v4, "regex"

    .line 137
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setRegex(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{filenameselector name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [as regular expression]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " negate: "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " casesensitive: "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "The name or regex attribute is required"

    .line 153
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "Only one of name and regex attribute is allowed"

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
