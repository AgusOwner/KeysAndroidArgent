.class public Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;
.super Ljava/lang/Object;
.source "URLResolver.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;


# instance fields
.field private destdir:Ljava/io/File;

.field private destfile:Ljava/io/File;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDest()Ljava/io/File;
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2f

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    .line 102
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "default.file"

    .line 104
    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destdir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private validate()V
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destdir:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify destination file or directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    if-nez v0, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must not specify both destination file or directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 114
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Must specify URL"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->validate()V

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->getDest()Ljava/io/File;

    move-result-object p1

    .line 76
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Get;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Get;-><init>()V

    .line 77
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Get;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 78
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Get;->setDest(Ljava/io/File;)V

    .line 79
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Get;->setSrc(Ljava/net/URL;)V

    .line 80
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Get;->execute()V

    return-object p1
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destdir:Ljava/io/File;

    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->destfile:Ljava/io/File;

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
