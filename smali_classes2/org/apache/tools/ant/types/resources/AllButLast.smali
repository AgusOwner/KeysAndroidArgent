.class public Lorg/apache/tools/ant/types/resources/AllButLast;
.super Lorg/apache/tools/ant/types/resources/SizeLimitCollection;
.source "AllButLast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getValidCount()I

    move-result v0

    .line 42
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v1

    int-to-long v3, v1

    int-to-long v0, v0

    sub-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 47
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getValidCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

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
