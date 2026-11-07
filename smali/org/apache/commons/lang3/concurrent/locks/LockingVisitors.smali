.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors;
.super Ljava/lang/Object;
.source "LockingVisitors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;,
        Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;,
        Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ")",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 361
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;-><init>(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)V

    return-object v0
.end method

.method public static reentrantReadWriteLockVisitor(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors;->create(Ljava/lang/Object;Ljava/util/concurrent/locks/ReadWriteLock;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor;

    move-result-object p0

    return-object p0
.end method

.method public static stampedLockVisitor(Ljava/lang/Object;)Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor<",
            "TO;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;

    new-instance v1, Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/StampedLock;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;-><init>(Ljava/lang/Object;Ljava/util/concurrent/locks/StampedLock;)V

    return-object v0
.end method
