.class public Lorg/apache/tools/ant/types/resources/Restrict;
.super Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
.source "Restrict.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/Restrict$1;-><init>(Lorg/apache/tools/ant/types/resources/Restrict;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/Restrict;
    .locals 1

    .line 160
    const-class v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Restrict;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Restrict;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 86
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 89
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 147
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Restrict;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCache()Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->isCache()Z

    move-result v0
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
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->isFilesystemOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->isFilesystemOnly()Z

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

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->iterator()Ljava/util/Iterator;

    move-result-object v0
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
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->setCache(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
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

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 114
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->size()I

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
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 140
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
