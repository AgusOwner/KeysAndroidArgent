.class public Lorg/apache/tools/ant/types/resources/Intersect;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
.source "Intersect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>()V

    return-void
.end method

.method static synthetic lambda$getCollection$0(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/Set;
    .locals 1

    .line 55
    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method static synthetic lambda$getCollection$1(Ljava/util/Set;Ljava/util/function/Function;Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 59
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

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

    .line 46
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Intersect;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 49
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "collection"

    goto :goto_0

    :cond_0
    const-string v1, "collections"

    :goto_0
    aput-object v1, v2, v3

    const-string v1, "The intersection of %d resource %s is undefined."

    .line 51
    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 54
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;-><init>()V

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    new-instance v3, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v1}, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;Ljava/util/function/Function;)V

    invoke-interface {v0, v3}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-object v2
.end method
