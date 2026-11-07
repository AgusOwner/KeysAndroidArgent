.class public Lorg/apache/tools/ant/types/resources/Union;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
.source "Union.java"


# direct methods
.method public static synthetic $r8$lambda$GMX4HiFPZkfx8KWQZMqhiH4Cz8w()Ljava/util/LinkedHashSet;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 65
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public static getInstance(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/resources/Union;
    .locals 1

    .line 43
    instance-of v0, p0, Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/tools/ant/types/resources/Union;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/Union;
    .locals 1

    .line 143
    const-class v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Union;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Union;

    return-object v0
.end method

.method static synthetic lambda$list$0(I)[Ljava/lang/String;
    .locals 0

    .line 87
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$listResources$1(I)[Lorg/apache/tools/ant/types/Resource;
    .locals 0

    .line 98
    new-array p0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object p0
.end method

.method private streamResources()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private streamResources(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/tools/ant/types/Resource;",
            "+TT;>;)",
            "Ljava/util/stream/Stream<",
            "+TT;>;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda2;-><init>()V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getAllResources()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda1;-><init>()V

    .line 139
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method protected getAllToStrings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda1;-><init>()V

    .line 130
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method protected getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getAllResources()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getCollection(Z)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getAllToStrings()Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getAllResources()Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public list()[Ljava/lang/String;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->getRef()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public listResources()[Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->getRef()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method
