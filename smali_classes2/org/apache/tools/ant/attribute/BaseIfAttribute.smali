.class public abstract Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "BaseIfAttribute.java"

# interfaces
.implements Lorg/apache/tools/ant/attribute/EnableAttribute;


# instance fields
.field private positive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute;->positive:Z

    return-void
.end method

.method static synthetic lambda$getParams$0(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 71
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "ant-attribute:param"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getParams$1(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 72
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getParams$2(Lorg/apache/tools/ant/UnknownElement;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getParams$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method protected convertResult(Z)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute;->positive:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getParams(Lorg/apache/tools/ant/UnknownElement;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/UnknownElement;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda0;-><init>()V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/UnknownElement;)V

    new-instance p1, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda3;-><init>()V

    .line 72
    invoke-static {v1, v2, p1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method protected isPositive()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute;->positive:Z

    return v0
.end method

.method protected setPositive(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute;->positive:Z

    return-void
.end method
