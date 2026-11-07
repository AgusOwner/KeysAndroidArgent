.class public Lorg/apache/tools/ant/types/resources/selectors/Majority;
.super Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
.source "Majority.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private tie:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 8

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Majority;->selectorCount()I

    move-result v0

    .line 62
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 63
    :goto_0
    div-int/lit8 v0, v0, 0x2

    .line 65
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Majority;->getResourceSelectors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    move v6, v5

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 66
    invoke-interface {v7, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    if-gt v6, v0, :cond_2

    if-eqz v1, :cond_1

    .line 68
    iget-boolean v7, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    if-ne v6, v0, :cond_1

    .line 69
    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-gt v5, v0, :cond_4

    if-eqz v1, :cond_1

    .line 73
    :try_start_1
    iget-boolean v7, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    if-ne v5, v0, :cond_1

    .line 74
    :cond_4
    monitor-exit p0

    return v3

    .line 79
    :cond_5
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAllowtie(Z)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
