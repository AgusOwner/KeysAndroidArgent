.class public Lorg/apache/tools/ant/types/resources/Archives;
.super Lorg/apache/tools/ant/types/DataType;
.source "Archives.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;
.implements Ljava/lang/Cloneable;


# instance fields
.field private tars:Lorg/apache/tools/ant/types/resources/Union;

.field private zips:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public static synthetic $r8$lambda$AHRaHISGX67SQ8FtuVTgC2-zuQY(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/Archives;
    .locals 1

    .line 211
    const-class v0, Lorg/apache/tools/ant/types/resources/Archives;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Archives;

    return-object v0
.end method

.method private streamArchives()Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lorg/apache/tools/ant/types/ArchiveFileSet;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 163
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Resource;

    .line 164
    new-instance v3, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    invoke-virtual {p0, v3, v2}, Lorg/apache/tools/ant/types/resources/Archives;->configureArchive(Lorg/apache/tools/ant/types/ArchiveFileSet;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ArchiveFileSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Resource;

    .line 167
    new-instance v3, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/TarFileSet;-><init>()V

    invoke-virtual {p0, v3, v2}, Lorg/apache/tools/ant/types/resources/Archives;->configureArchive(Lorg/apache/tools/ant/types/ArchiveFileSet;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ArchiveFileSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 138
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Archives;

    .line 139
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/Union;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    .line 140
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/Union;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected configureArchive(Lorg/apache/tools/ant/types/ArchiveFileSet;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ArchiveFileSet;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 183
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    return-object p1
.end method

.method public createTars()Lorg/apache/tools/ant/types/resources/Union;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createZips()Lorg/apache/tools/ant/types/resources/Union;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 199
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Archives;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Archives;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Archives;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected grabArchives()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/ArchiveFileSet;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->streamArchives()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isFilesystemOnly()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getRef()Lorg/apache/tools/ant/types/resources/Archives;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Archives;->isFilesystemOnly()Z

    move-result v0

    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->dieOnCircularReference()V

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getRef()Lorg/apache/tools/ant/types/resources/Archives;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Archives;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->dieOnCircularReference()V

    .line 100
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->streamArchives()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/Resource;

    .line 101
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public size()I
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getRef()Lorg/apache/tools/ant/types/resources/Archives;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Archives;->size()I

    move-result v0

    return v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->dieOnCircularReference()V

    .line 87
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->streamArchives()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    return v0
.end method
