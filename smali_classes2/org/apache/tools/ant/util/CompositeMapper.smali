.class public Lorg/apache/tools/ant/util/CompositeMapper;
.super Lorg/apache/tools/ant/util/ContainerMapper;
.source "CompositeMapper.java"


# direct methods
.method public static synthetic $r8$lambda$5tRu_WZ7A7kfUE1melJVfvZ4wws(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FXI71IL-u7K3v79N2wK7KCwB1D4([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pf25rcUIzmj8YtbJxLZrqurxf4k(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ContainerMapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$mapFileName$0(Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .locals 0

    .line 32
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$mapFileName$1(I)[Ljava/lang/String;
    .locals 0

    .line 33
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/CompositeMapper;->getMappers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda3;-><init>()V

    .line 33
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 34
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
