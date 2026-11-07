.class public Lorg/apache/tools/ant/util/regexp/RegexpFactory;
.super Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;
.source "RegexpFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createRegexpInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/Regexp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 77
    const-class v0, Lorg/apache/tools/ant/util/regexp/RegexpFactory;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 77
    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/util/regexp/Regexp;

    return-object p1
.end method

.method public newRegexp()Lorg/apache/tools/ant/util/regexp/Regexp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpFactory;->newRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    return-object v0
.end method

.method public newRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "ant.regexp.regexpimpl"

    if-nez p1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/regexp/RegexpFactory;->createRegexpInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpRegexp;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpRegexp;-><init>()V

    return-object p1
.end method
