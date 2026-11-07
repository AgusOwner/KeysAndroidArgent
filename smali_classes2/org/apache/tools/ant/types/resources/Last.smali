.class public Lorg/apache/tools/ant/types/resources/Last;
.super Lorg/apache/tools/ant/types/resources/SizeLimitCollection;
.source "Last.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Last;->getValidCount()I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Last;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    .line 44
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    sub-int v4, v2, v0

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 48
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    int-to-long v5, v3

    invoke-interface {v4, v5, v6}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v0, :cond_2

    if-ge v2, v0, :cond_0

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Resource collection %s reports size %d but returns %d elements."

    .line 55
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-le v5, v0, :cond_1

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/resources/Last;->log(Ljava/lang/String;I)V

    sub-int v0, v5, v0

    .line 62
    invoke-interface {v4, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v4
.end method
