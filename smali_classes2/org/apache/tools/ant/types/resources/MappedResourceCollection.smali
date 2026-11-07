.class public Lorg/apache/tools/ant/types/resources/MappedResourceCollection;
.super Lorg/apache/tools/ant/types/DataType;
.source "MappedResourceCollection.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;
.implements Ljava/lang/Cloneable;


# instance fields
.field private cache:Z

.field private cachedColl:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private enableMultipleMappings:Z

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private nested:Lorg/apache/tools/ant/types/ResourceCollection;


# direct methods
.method public static synthetic $r8$lambda$RUgTMKBFSM5JmQYe-scT_4CThWo(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->enableMultipleMappings:Z

    .line 50
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cache:Z

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

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

    .line 227
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cache:Z

    if-nez v0, :cond_1

    .line 228
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkInitialized()V
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->dieOnCircularReference()V

    return-void

    .line 219
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A nested resource collection element is required"

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private getCollection()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 238
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->enableMultipleMappings:Z

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 240
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_1

    .line 245
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 247
    :goto_1
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;
    .locals 1

    .line 264
    const-class v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    return-object v0
.end method

.method static synthetic lambda$getCollection$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/MergingMapper;)Lorg/apache/tools/ant/types/resources/MappedResource;
    .locals 1

    .line 243
    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResource;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/types/resources/MappedResource;-><init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-object v0
.end method

.method static synthetic lambda$getCollection$1(Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/Resource;)Ljava/util/stream/Stream;
    .locals 1

    .line 240
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;-><init>()V

    .line 241
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda1;-><init>()V

    .line 242
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 243
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getCollection$2(Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/MappedResource;
    .locals 1

    .line 245
    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResource;

    invoke-direct {v0, p1, p0}, Lorg/apache/tools/ant/types/resources/MappedResource;-><init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->setChecked(Z)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one resource collection can be nested into mappedresources"

    .line 65
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 180
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    .line 181
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 182
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v1, 0x0

    .line 183
    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->setChecked(Z)V

    .line 86
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
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

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 201
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_2

    .line 208
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 210
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_3

    .line 211
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_3
    const/4 p1, 0x1

    .line 213
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isFilesystemOnly()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isFilesystemOnly()Z

    move-result v0

    return v0

    .line 132
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    const/4 v0, 0x0

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

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 157
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setCache(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cache:Z

    return-void
.end method

.method public setEnableMultipleMappings(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->enableMultipleMappings:Z

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 169
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public size()I
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->size()I

    move-result v0

    return v0

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 145
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 260
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method
