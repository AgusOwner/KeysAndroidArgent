.class Lorg/apache/tools/ant/types/resources/FailFast;
.super Ljava/lang/Object;
.source "FailFast.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAP:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Lorg/apache/tools/ant/types/resources/FailFast;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final parent:Ljava/lang/Object;

.field private wrapped:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    .line 85
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->add(Lorg/apache/tools/ant/types/resources/FailFast;)V

    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot wrap null iterator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parent object is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized add(Lorg/apache/tools/ant/types/resources/FailFast;)V
    .locals 4

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    new-instance v3, Lorg/apache/tools/ant/types/resources/FailFast$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/resources/FailFast$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized failFast(Lorg/apache/tools/ant/types/resources/FailFast;)V
    .locals 3

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 61
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 64
    monitor-exit v0

    return-void

    .line 62
    :cond_0
    :try_start_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized invalidate(Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$add$0(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 49
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private static declared-synchronized remove(Lorg/apache/tools/ant/types/resources/FailFast;)V
    .locals 3

    const-class v0, Lorg/apache/tools/ant/types/resources/FailFast;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/types/resources/FailFast;->MAP:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->parent:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->failFast(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->failFast(Lorg/apache/tools/ant/types/resources/FailFast;)V

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    .line 118
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->remove(Lorg/apache/tools/ant/types/resources/FailFast;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 116
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/FailFast;->wrapped:Ljava/util/Iterator;

    .line 118
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->remove(Lorg/apache/tools/ant/types/resources/FailFast;)V

    .line 120
    :cond_1
    throw v1

    .line 110
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
