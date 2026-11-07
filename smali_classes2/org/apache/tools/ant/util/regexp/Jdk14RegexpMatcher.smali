.class public Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;
.super Ljava/lang/Object;
.source "Jdk14RegexpMatcher.java"

# interfaces
.implements Lorg/apache/tools/ant/util/regexp/RegexpMatcher;


# instance fields
.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCompiledPattern(I)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getCompilerOptions(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getCompilerOptions(I)I
    .locals 2

    const/16 v0, 0x100

    .line 156
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x1000

    .line 159
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    const/high16 v1, 0x10000

    .line 162
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x20

    :cond_2
    return v0
.end method

.method public getGroups(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getGroups(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Ljava/lang/String;I)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getCompiledPattern(I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 134
    :cond_0
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 135
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    .line 137
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 142
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->matches(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getCompiledPattern(I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->pattern:Ljava/lang/String;

    return-void
.end method
