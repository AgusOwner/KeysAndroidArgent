.class public abstract Lorg/apache/tools/ant/util/ContainerMapper;
.super Ljava/lang/Object;
.source "ContainerMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private mappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    monitor-enter p0

    if-eq p0, p1, :cond_1

    .line 66
    :try_start_0
    instance-of v0, p1, Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/util/ContainerMapper;

    .line 68
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ContainerMapper;->contains(Lorg/apache/tools/ant/util/FileNameMapper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Circular mapper containment condition detected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/ContainerMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addConfiguredMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/ContainerMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method protected declared-synchronized contains(Lorg/apache/tools/ant/util/FileNameMapper;)Z
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/util/FileNameMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    .line 84
    monitor-exit p0

    return v2

    .line 86
    :cond_1
    :try_start_1
    instance-of v3, v1, Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/apache/tools/ant/util/ContainerMapper;

    .line 87
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/util/ContainerMapper;->contains(Lorg/apache/tools/ant/util/FileNameMapper;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 88
    monitor-exit p0

    return v2

    .line 91
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMappers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

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

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
