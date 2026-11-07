.class public Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "DelegatedResourceComparator.java"


# instance fields
.field private resourceComparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    return-void
.end method

.method private static composite(Ljava/util/List;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Comparator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;>;)",
            "Ljava/util/Comparator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 136
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;
    .locals 1

    .line 122
    const-class v0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 48
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 45
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
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

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 112
    instance-of v2, v1, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 113
    invoke-static {v1, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 64
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 69
    :cond_1
    :try_start_1
    instance-of v1, p1, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 70
    check-cast p1, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    iget-object p1, p1, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    .line 71
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 73
    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->composite(Ljava/util/List;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
