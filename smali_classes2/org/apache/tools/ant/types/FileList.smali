.class public Lorg/apache/tools/ant/types/FileList;
.super Lorg/apache/tools/ant/types/DataType;
.source "FileList.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/FileList$FileName;
    }
.end annotation


# instance fields
.field private dir:Ljava/io/File;

.field private filenames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileList;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    .line 58
    iget-object v0, p1, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FileList;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/FileList;
    .locals 1

    .line 214
    const-class v0, Lorg/apache/tools/ant/types/FileList;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FileList;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileList;

    return-object v0
.end method

.method private getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/FileList;
    .locals 2

    .line 218
    const-class v0, Lorg/apache/tools/ant/types/FileList;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/FileList;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/FileList;

    return-object p1
.end method


# virtual methods
.method public addConfiguredFile(Lorg/apache/tools/ant/types/FileList$FileName;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList$FileName;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList$FileName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 170
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No name specified in nested file element"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileList;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileList;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    return-object p1
.end method

.method public getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileList;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileList;->getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 133
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No files specified for filelist."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No directory specified for filelist."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFilesystemOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileList;->getRef()Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->checkAttributesAllowed()V

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    return-void
.end method

.method public setFiles(Ljava/lang/String;)V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->checkAttributesAllowed()V

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", \t\n\r\u000c"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public size()I
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileList;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileList;->getRef()Lorg/apache/tools/ant/types/FileList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileList;->size()I

    move-result v0

    return v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList;->filenames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
