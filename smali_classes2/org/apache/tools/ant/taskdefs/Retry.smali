.class public Lorg/apache/tools/ant/taskdefs/Retry;
.super Lorg/apache/tools/ant/Task;
.source "Retry.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# instance fields
.field private nestedTask:Lorg/apache/tools/ant/Task;

.field private retryCount:I

.field private retryDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The retry task container accepts a single nested task (which may be a sequential task container)"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    if-gt v1, v2, :cond_3

    .line 88
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;

    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->perform()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    if-ge v1, v3, :cond_2

    .line 98
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    const-string v4, "Attempt ["

    if-lez v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: error occurred; retrying after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 101
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: error occurred; retrying..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x2

    .line 103
    invoke-virtual {p0, v3, v2, v4}, Lorg/apache/tools/ant/taskdefs/Retry;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 104
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    if-lez v2, :cond_1

    int-to-long v2, v2

    .line 107
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Retry;->nestedTask:Lorg/apache/tools/ant/Task;

    .line 95
    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Task [%s] failed after [%d] attempts; giving up.%nError messages:%n%s"

    .line 93
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Retry;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryCount:I

    return-void
.end method

.method public setRetryDelay(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 76
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Retry;->retryDelay:I

    return-void

    .line 74
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "retryDelay must be a non-negative number"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
