.class public abstract Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
.super Lorg/apache/tools/ant/types/DataType;
.source "BaseResourceCollectionContainer.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;
.implements Ljava/lang/Cloneable;


# instance fields
.field private cache:Z

.field private coll:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private rc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method private declared-synchronized cacheCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getCollection()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
    .locals 1

    .line 253
    const-class v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    return-object v0
.end method

.method static synthetic lambda$isFilesystemOnly$0(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 1

    .line 176
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
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

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 101
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 98
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 125
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 127
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 227
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    const/4 v1, 0x0

    .line 229
    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 3
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

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 195
    instance-of v2, v1, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 196
    check-cast v1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v1, p1, p2}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract getCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end method

.method public final declared-synchronized getResourceCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCache()Z
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z
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
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isFilesystemOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 168
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 171
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 175
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda1;-><init>()V

    .line 176
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    monitor-exit p0

    return v0

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

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 143
    new-instance v0, Lorg/apache/tools/ant/types/resources/FailFast;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    .line 65
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
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

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 156
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

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

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 245
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit p0

    return-object v0

    .line 248
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 249
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
