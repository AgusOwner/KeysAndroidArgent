.class public Lorg/apache/tools/ant/util/ChainedMapper;
.super Lorg/apache/tools/ant/util/ContainerMapper;
.source "ChainedMapper.java"


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

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ContainerMapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$mapFileName$0(I)[Ljava/lang/String;
    .locals 0

    .line 41
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$mapFileName$1([Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$mapFileName$2([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ChainedMapper;->getMappers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda3;-><init>()V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda5;-><init>()V

    .line 40
    invoke-interface {v0, p1, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 43
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method
