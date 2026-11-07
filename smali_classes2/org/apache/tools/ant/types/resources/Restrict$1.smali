.class Lorg/apache/tools/ant/types/resources/Restrict$1;
.super Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;
.source "Restrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/Restrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/types/resources/Restrict;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/resources/Restrict;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Restrict$1;->this$0:Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$filterResource$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)Z
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method protected filterResource(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict$1;->this$0:Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->getResourceSelectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Restrict$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/Restrict$1$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method
