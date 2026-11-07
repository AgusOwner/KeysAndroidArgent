.class public Lorg/apache/tools/ant/util/IdentityStack;
.super Ljava/util/Stack;
.source "IdentityStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Stack<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d192e6376540bf6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/IdentityStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/util/Stack;)Lorg/apache/tools/ant/util/IdentityStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Stack<",
            "TE;>;)",
            "Lorg/apache/tools/ant/util/IdentityStack<",
            "TE;>;"
        }
    .end annotation

    .line 41
    instance-of v0, p0, Lorg/apache/tools/ant/util/IdentityStack;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lorg/apache/tools/ant/util/IdentityStack;

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/IdentityStack;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityStack;-><init>()V

    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/IdentityStack;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/IdentityStack;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/IdentityStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/IdentityStack;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 89
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/IdentityStack;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 90
    monitor-exit p0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .locals 1

    monitor-enter p0

    :goto_0
    if-ltz p2, :cond_1

    .line 106
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/IdentityStack;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 107
    monitor-exit p0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 110
    :cond_1
    monitor-exit p0

    const/4 p1, -0x1

    return p1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 118
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Stack;->removeAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 126
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Stack;->retainAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
