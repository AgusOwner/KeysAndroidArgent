.class public Lorg/apache/tools/ant/util/FirstMatchMapper;
.super Lorg/apache/tools/ant/util/ContainerMapper;
.source "FirstMatchMapper.java"


# direct methods
.method public static synthetic $r8$lambda$5tRu_WZ7A7kfUE1melJVfvZ4wws(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pf25rcUIzmj8YtbJxLZrqurxf4k(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ContainerMapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$mapFileName$0(Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .locals 0

    .line 34
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/FirstMatchMapper;->getMappers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method
