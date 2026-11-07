.class public Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;
.super Ljava/lang/Object;
.source "ExecuteWatchdog.java"

# interfaces
.implements Lorg/apache/tools/ant/util/TimeoutObserver;


# instance fields
.field private caught:Ljava/lang/Exception;

.field private volatile killedProcess:Z

.field private process:Ljava/lang/Process;

.field private volatile watch:Z

.field private watchdog:Lorg/apache/tools/ant/util/Watchdog;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 79
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 54
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    .line 66
    new-instance v0, Lorg/apache/tools/ant/util/Watchdog;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/util/Watchdog;-><init>(J)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watchdog:Lorg/apache/tools/ant/util/Watchdog;

    .line 67
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/Watchdog;->addTimeoutObserver(Lorg/apache/tools/ant/util/TimeoutObserver;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized checkException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Exception in ExecuteWatchdog.run: "

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 159
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized cleanUp()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 142
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWatching()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    return v0
.end method

.method public killedProcess()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    return v0
.end method

.method public declared-synchronized start(Ljava/lang/Process;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    .line 99
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watchdog:Lorg/apache/tools/ant/util/Watchdog;

    invoke-virtual {p1}, Lorg/apache/tools/ant/util/Watchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "process is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watchdog:Lorg/apache/tools/ant/util/Watchdog;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->stop()V

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V
    .locals 0

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 126
    :catch_1
    :try_start_1
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->watch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->killedProcess:Z

    .line 128
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->process:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 132
    :goto_1
    :try_start_3
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->caught:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 136
    :goto_2
    monitor-exit p0

    return-void

    .line 134
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;->cleanUp()V

    .line 135
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
