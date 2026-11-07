.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
.super Ljava/lang/Object;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final readLockSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLockSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;T",
            "L;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "object"

    .line 121
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    const-string p1, "lock"

    .line 122
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lock:Ljava/lang/Object;

    const-string p1, "readLockSupplier"

    .line 123
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Supplier;

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->readLockSupplier:Ljava/util/function/Supplier;

    const-string p1, "writeLockSupplier"

    .line 124
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Supplier;

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->writeLockSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public acceptReadLocked(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TO;*>;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->readLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockAcceptUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    return-void
.end method

.method public acceptWriteLocked(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TO;*>;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->writeLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockAcceptUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    return-void
.end method

.method public applyReadLocked(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TO;TT;*>;)TT;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->readLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockApplyUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyWriteLocked(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TO;TT;*>;)TT;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->writeLockSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lockApplyUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    return-object v0
.end method

.method protected lockAcceptUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TO;*>;)V"
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    .line 266
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 268
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p2

    .line 270
    :try_start_1
    invoke-static {p2}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 272
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 273
    throw p2
.end method

.method protected lockApplyUnlock(Ljava/util/function/Supplier;Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TO;TT;*>;)TT;"
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    .line 293
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;->object:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 297
    :try_start_1
    invoke-static {p2}, Lorg/apache/commons/lang3/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 299
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 300
    throw p2
.end method
