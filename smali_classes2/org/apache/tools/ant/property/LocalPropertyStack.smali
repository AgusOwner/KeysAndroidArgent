.class public Lorg/apache/tools/ant/property/LocalPropertyStack;
.super Ljava/lang/Object;
.source "LocalPropertyStack.java"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4_p_WrSG7a55MBc3xyT1qI7CInQ()Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$EoX-RIsPZ-RSs3zkWrgjXATI43Q(Ljava/util/HashSet;Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private getMapForProperty(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 173
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 174
    monitor-exit v0

    return-object v2

    .line 177
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$getPropertyNames$0(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public addLocal(Ljava/lang/String;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 55
    sget-object v2, Lorg/apache/tools/ant/property/NullReturn;->NULL:Lorg/apache/tools/ant/property/NullReturn;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public copy()Lorg/apache/tools/ant/property/LocalPropertyStack;
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/property/LocalPropertyStack;

    invoke-direct {v1}, Lorg/apache/tools/ant/property/LocalPropertyStack;-><init>()V

    .line 91
    iget-object v2, v1, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    iget-object v3, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v2, v3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 92
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enterScope()V
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .locals 2

    .line 109
    iget-object p2, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter p2

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 111
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    monitor-exit p2

    return-object v1

    .line 116
    :cond_1
    monitor-exit p2

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public exitScope()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/property/LocalPropertyStack;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/apache/tools/ant/property/LocalPropertyStack$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    aput-object v6, v4, v5

    .line 163
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/property/LocalPropertyStack;->getMapForProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z
    .locals 2

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/property/LocalPropertyStack;->getMapForProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    sget-object v1, Lorg/apache/tools/ant/property/NullReturn;->NULL:Lorg/apache/tools/ant/property/NullReturn;

    if-ne v0, v1, :cond_1

    .line 135
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
