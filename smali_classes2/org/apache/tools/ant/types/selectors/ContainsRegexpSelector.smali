.class public Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "ContainsRegexpSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field private static final CS_KEY:Ljava/lang/String; = "casesensitive"

.field public static final EXPRESSION_KEY:Ljava/lang/String; = "expression"

.field private static final ML_KEY:Ljava/lang/String; = "multiline"

.field private static final SL_KEY:Ljava/lang/String; = "singleline"


# instance fields
.field private caseSensitive:Z

.field private multiLine:Z

.field private myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

.field private singleLine:Z

.field private userProvidedExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->caseSensitive:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->multiLine:Z

    .line 58
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->singleLine:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 150
    new-instance p1, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {p1, p3}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    return p1
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 7

    .line 161
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->validate()V

    .line 163
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    .line 169
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 173
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 179
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget-boolean v4, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->caseSensitive:Z

    iget-boolean v5, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->multiLine:Z

    iget-boolean v6, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->singleLine:Z

    .line 180
    invoke-static {v4, v5, v6}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result v4

    .line 179
    invoke-interface {v3, v2, v4}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 189
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 183
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 189
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 187
    :catch_0
    :try_start_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 190
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get InputStream from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->caseSensitive:Z

    return-void
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    return-void
.end method

.method public setMultiLine(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->multiLine:Z

    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 112
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_4

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 115
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expression"

    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setExpression(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "casesensitive"

    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setCaseSensitive(Z)V

    goto :goto_1

    :cond_1
    const-string v4, "multiline"

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setMultiLine(Z)V

    goto :goto_1

    :cond_2
    const-string v4, "singleline"

    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setSingleLine(Z)V

    goto :goto_1

    .line 125
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->singleLine:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{containsregexpselector expression: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "The expression attribute is required"

    .line 137
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
