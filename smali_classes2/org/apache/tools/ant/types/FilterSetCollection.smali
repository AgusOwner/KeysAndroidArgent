.class public Lorg/apache/tools/ant/types/FilterSetCollection;
.super Ljava/lang/Object;
.source "FilterSetCollection.java"


# instance fields
.field private filterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FilterSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/FilterSet;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    return-void
.end method


# virtual methods
.method public addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasFilters()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/FilterSetCollection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/FilterSetCollection$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public replaceTokens(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSetCollection;->filterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FilterSet;

    .line 67
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/FilterSet;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
