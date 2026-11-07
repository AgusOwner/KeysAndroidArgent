.class Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;
.super Ljava/lang/Object;
.source "LazyResourceCollectionWrapper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field ended:Z

.field protected final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field next:Lorg/apache/tools/ant/types/Resource;

.field final synthetic this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->ended:Z

    .line 88
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 93
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->ended:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iput-boolean v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->ended:Z

    return v1

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    .line 102
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->filterResource(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    goto :goto_0

    :cond_2
    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$FilteringIterator;->next:Lorg/apache/tools/ant/types/Resource;

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
