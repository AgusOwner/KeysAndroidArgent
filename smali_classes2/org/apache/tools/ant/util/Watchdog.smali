.class public Lorg/apache/tools/ant/util/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ERROR_INVALID_TIMEOUT:Ljava/lang/String; = "timeout less than 1."


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/util/TimeoutObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopped:Z

.field private timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/Watchdog;->observers:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lorg/apache/tools/ant/util/Watchdog;->timeout:J

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/Watchdog;->stopped:Z

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 59
    iput-wide p1, p0, Lorg/apache/tools/ant/util/Watchdog;->timeout:J

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout less than 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addTimeoutObserver(Lorg/apache/tools/ant/util/TimeoutObserver;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/util/Watchdog;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final fireTimeoutOccured()V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/util/Watchdog;->observers:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/util/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/util/Watchdog$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/Watchdog;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$fireTimeoutOccured$0$org-apache-tools-ant-util-Watchdog(Lorg/apache/tools/ant/util/TimeoutObserver;)V
    .locals 0

    .line 83
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/util/TimeoutObserver;->timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V

    return-void
.end method

.method public removeTimeoutObserver(Lorg/apache/tools/ant/util/TimeoutObserver;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/util/Watchdog;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    iget-wide v2, p0, Lorg/apache/tools/ant/util/Watchdog;->timeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v0

    .line 116
    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lorg/apache/tools/ant/util/Watchdog;->stopped:Z

    if-nez v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long v0, v2, v0

    .line 117
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catch_0
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/Watchdog;->stopped:Z

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/Watchdog;->fireTimeoutOccured()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/Watchdog;->stopped:Z

    .line 91
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "WATCHDOG"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 100
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/Watchdog;->stopped:Z

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
