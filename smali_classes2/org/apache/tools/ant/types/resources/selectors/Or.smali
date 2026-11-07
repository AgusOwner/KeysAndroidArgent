.class public Lorg/apache/tools/ant/types/resources/selectors/Or;
.super Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
.source "Or.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    return-void
.end method

.method static synthetic lambda$isSelected$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)Z
    .locals 0

    .line 48
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Or;->getResourceSelectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Or$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/selectors/Or$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method
