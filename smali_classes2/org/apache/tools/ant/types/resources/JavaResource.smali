.class public Lorg/apache/tools/ant/types/resources/JavaResource;
.super Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
.source "JavaResource.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/URLProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/JavaResource;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .locals 4

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    check-cast p1, Lorg/apache/tools/ant/types/resources/JavaResource;

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 116
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_4

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 120
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 123
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getLoader()Lorg/apache/tools/ant/types/Reference;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 126
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    if-eq v0, p1, :cond_7

    if-nez v0, :cond_5

    return v3

    :cond_5
    if-nez p1, :cond_6

    return v2

    .line 135
    :cond_6
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1

    .line 139
    :cond_8
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/JavaResource;
    .locals 1

    .line 144
    const-class v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getRef()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClassLoader()Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup()V

    .line 96
    throw v1
.end method

.method protected openInputStream(Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "No resource "

    if-nez p1, :cond_1

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on Ant\'s classpath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p1, v1

    :goto_0
    return-object p1

    .line 71
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on the classpath "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
