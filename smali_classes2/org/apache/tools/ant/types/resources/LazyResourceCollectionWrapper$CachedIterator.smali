.class Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;
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
    name = "CachedIterator"
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
.field cursor:I

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    .line 139
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    .line 147
    monitor-exit v0

    return v3

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 155
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v2}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .locals 4

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->this$0:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->access$000(Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper$CachedIterator;->cursor:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
