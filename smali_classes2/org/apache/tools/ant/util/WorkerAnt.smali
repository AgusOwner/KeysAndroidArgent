.class public Lorg/apache/tools/ant/util/WorkerAnt;
.super Ljava/lang/Thread;
.source "WorkerAnt.java"


# static fields
.field public static final ERROR_NO_TASK:Ljava/lang/String; = "No task defined"


# instance fields
.field private volatile buildException:Lorg/apache/tools/ant/BuildException;

.field private volatile exception:Ljava/lang/Throwable;

.field private volatile finished:Z

.field private notify:Ljava/lang/Object;

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/WorkerAnt;-><init>(Lorg/apache/tools/ant/Task;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;Ljava/lang/Object;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 58
    iput-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->task:Lorg/apache/tools/ant/Task;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 59
    :goto_0
    iput-object p2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized caught(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->exception:Ljava/lang/Throwable;

    .line 151
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lorg/apache/tools/ant/BuildException;

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->buildException:Lorg/apache/tools/ant/BuildException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getBuildException()Lorg/apache/tools/ant/BuildException;
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->buildException:Lorg/apache/tools/ant/BuildException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getException()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->exception:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTask()Lorg/apache/tools/ant/Task;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->task:Lorg/apache/tools/ant/Task;

    return-object v0
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public rethrowAnyBuildException()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/WorkerAnt;->getBuildException()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    throw v0
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->task:Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 166
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/util/WorkerAnt;->caught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 168
    iget-object v1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_3
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 168
    iget-object v2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 174
    throw v1

    :catchall_4
    move-exception v0

    .line 173
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method

.method public waitUntilFinished(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 122
    iget-object p1, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    monitor-enter p1

    .line 123
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    :goto_0
    iget-boolean p2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->finished:Z

    if-nez p2, :cond_0

    cmp-long p2, v2, v0

    if-gez p2, :cond_0

    .line 125
    iget-object p2, p0, Lorg/apache/tools/ant/util/WorkerAnt;->notify:Ljava/lang/Object;

    sub-long v2, v0, v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 128
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
