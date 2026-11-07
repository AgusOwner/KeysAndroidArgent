.class public abstract Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;
.super Lorg/apache/tools/ant/types/DataType;
.source "AbstractResourceCollectionWrapper.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ONE_NESTED_MESSAGE:Ljava/lang/String; = " expects exactly one nested resource collection."


# instance fields
.field private cache:Z

.field private rc:Lorg/apache/tools/ant/types/ResourceCollection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->cache:Z

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;
    .locals 1

    .line 204
    const-class v0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    return-object v0
.end method

.method private oneNested()Lorg/apache/tools/ant/BuildException;
    .locals 3

    .line 208
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expects exactly one nested resource collection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_2

    .line 75
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 76
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    if-nez p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 73
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->oneNested()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 67
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract createIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 2
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

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 162
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_2

    .line 168
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_2
    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 184
    monitor-exit p0

    return-object v0

    .line 182
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->oneNested()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getSize()I
.end method

.method public declared-synchronized isCache()Z
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->cache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFilesystemOnly()Z
    .locals 4

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isFilesystemOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 137
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Resource;

    .line 145
    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 146
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_3
    monitor-exit p0

    return v1

    .line 140
    :cond_4
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 95
    new-instance v0, Lorg/apache/tools/ant/types/resources/FailFast;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->createIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/FailFast;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCache(Z)V
    .locals 0

    monitor-enter p0

    .line 49
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->cache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 117
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getSize()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-object v0

    .line 199
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
