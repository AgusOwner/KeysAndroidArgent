.class public Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;
.super Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;
.source "LazyResourceCollectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;,
        Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;
    }
.end annotation


# instance fields
.field private final cachedResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private filteringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final filteringIteratorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->cachedResources:Ljava/util/List;

    .line 40
    new-instance v0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filteringIteratorSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->cachedResources:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->isCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filteringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filteringIteratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filteringIterator:Ljava/util/Iterator;

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filteringIterator:Ljava/util/Iterator;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;-><init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;Ljava/util/Iterator;)V

    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filteringIteratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method protected filterResource(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getSize()I
    .locals 3

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->createIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method synthetic lambda$new$0$org-apache-tools-ant-types-resources-LazyResourceCollectionWrapper()Ljava/util/Iterator;
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;-><init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;Ljava/util/Iterator;)V

    return-object v0
.end method
