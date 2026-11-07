.class Lorg/apache/tools/ant/types/resources/Resources$MyCollection;
.super Ljava/util/AbstractCollection;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile cached:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/types/resources/Resources;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/resources/Resources;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->this$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/Resources;Lorg/apache/tools/ant/types/resources/Resources$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;-><init>(Lorg/apache/tools/ant/types/resources/Resources;)V

    return-void
.end method

.method private declared-synchronized getCache()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->cached:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->this$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/Resources;->access$000(Lorg/apache/tools/ant/types/resources/Resources;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->cached:Ljava/util/Collection;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->cached:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->getCache()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 73
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->getCache()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
