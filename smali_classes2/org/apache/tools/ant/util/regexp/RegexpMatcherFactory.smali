.class public Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;
.super Ljava/lang/Object;
.source "RegexpMatcherFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static regexpMatcherPresent(Lorg/apache/tools/ant/Project;)Z
    .locals 1

    .line 104
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 77
    const-class v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    .line 77
    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    return-object p1
.end method

.method public newRegexpMatcher()Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object v0

    return-object v0
.end method

.method public newRegexpMatcher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "ant.regexp.regexpimpl"

    if-nez p1, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->createInstance(Ljava/lang/String;)Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;-><init>()V

    return-object p1
.end method

.method protected testAvailability(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 91
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
