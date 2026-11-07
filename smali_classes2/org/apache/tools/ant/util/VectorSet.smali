.class public final Lorg/apache/tools/ant/util/VectorSet;
.super Ljava/util/Vector;
.source "VectorSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(I)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/util/Vector;-><init>(II)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized doAdd(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 86
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/VectorSet;->ensureCapacity(I)V

    if-eq p1, v0, :cond_0

    .line 88
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 92
    iget p1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doRemove(Ljava/lang/Object;)Z
    .locals 5

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :cond_0
    iget p1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return v1

    .line 191
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 117
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 123
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result p2

    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/VectorSet;->ensureCapacity(I)V

    if-eq p1, p2, :cond_3

    .line 128
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    aput-object v1, v2, p1

    move p1, v3

    goto :goto_1

    .line 134
    :cond_4
    iget p1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 105
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/VectorSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    goto :goto_0

    .line 107
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-super {p0}, Ljava/util/Vector;->clear()V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 147
    invoke-super {p0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/VectorSet;

    .line 148
    iget-object v1, v0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

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

.method public insertElementAt(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doRemove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 198
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    goto :goto_0

    .line 200
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAllElements()V
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 206
    invoke-super {p0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeElement(Ljava/lang/Object;)Z
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doRemove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized removeElementAt(I)V
    .locals 0

    monitor-enter p0

    .line 216
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRange(II)V
    .locals 0

    monitor-enter p0

    :goto_0
    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 222
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/VectorSet;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 224
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 228
    :try_start_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 231
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 232
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 233
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 238
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/VectorSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 241
    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 249
    iget-object p1, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/VectorSet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 252
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 254
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/util/VectorSet;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setElementAt(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/util/VectorSet;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
