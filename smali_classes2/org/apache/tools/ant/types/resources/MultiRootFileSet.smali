.class public Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "MultiRootFileSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;,
        Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;
    }
.end annotation


# instance fields
.field private baseDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Z

.field private type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field private union:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>()V

    .line 41
    sget-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
    .locals 1

    .line 171
    const-class v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    return-object v0
.end method

.method private declared-synchronized merge()Lorg/apache/tools/ant/types/resources/Union;
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->union:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 176
    monitor-exit p0

    return-object v0

    .line 178
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 179
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->setup(Lorg/apache/tools/ant/types/resources/Union;)V

    .line 180
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z

    if-eqz v1, :cond_1

    .line 181
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->union:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setup(Lorg/apache/tools/ant/types/resources/Union;)V
    .locals 5

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 188
    new-instance v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;

    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v1, v4}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;-><init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$1;)V

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addConfiguredBaseDir(Lorg/apache/tools/ant/types/resources/FileResource;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    const/4 v1, 0x0

    .line 120
    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->union:Lorg/apache/tools/ant/types/resources/Union;

    return-object v0
.end method

.method public isFilesystemOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->merge()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setBaseDirs(Ljava/lang/String;)V
    .locals 5

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 84
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized setCache(Z)V
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDir(Ljava/io/File;)V
    .locals 2

    .line 48
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the dir attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setType(Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public size()I
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->size()I

    move-result v0

    return v0

    .line 145
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->merge()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->merge()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
