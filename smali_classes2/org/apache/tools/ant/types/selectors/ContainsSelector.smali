.class public Lorg/apache/tools/ant/types/selectors/ContainsSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "ContainsSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field public static final CASE_KEY:Ljava/lang/String; = "casesensitive"

.field public static final CONTAINS_KEY:Ljava/lang/String; = "text"

.field public static final EXPRESSION_KEY:Ljava/lang/String; = "expression"

.field public static final WHITESPACE_KEY:Ljava/lang/String; = "ignorewhitespace"


# instance fields
.field private casesensitive:Z

.field private contains:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private ignorewhitespace:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 148
    new-instance p1, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {p1, p3}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    return p1
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 6

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->validate()V

    .line 162
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    .line 167
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    if-nez v2, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    if-eqz v2, :cond_2

    .line 171
    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->encoding:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 175
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    :goto_0
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_7

    .line 179
    iget-boolean v4, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    if-nez v4, :cond_4

    .line 180
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_4
    iget-boolean v4, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    if-eqz v4, :cond_5

    .line 183
    invoke-static {v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 188
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 194
    :cond_7
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 192
    :catch_0
    :try_start_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 195
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get InputStream from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :goto_4
    return v1
.end method

.method public setCasesensitive(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setIgnorewhitespace(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 108
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_3

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 111
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "casesensitive"

    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setCasesensitive(Z)V

    goto :goto_1

    :cond_1
    const-string v4, "ignorewhitespace"

    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setIgnorewhitespace(Z)V

    goto :goto_1

    .line 121
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{containsselector text: \"%s\" casesensitive: %s ignorewhitespace: %s}"

    .line 60
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "The text attribute is required"

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
