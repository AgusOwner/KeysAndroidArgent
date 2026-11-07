.class public Lorg/apache/tools/ant/taskdefs/Parallel;
.super Lorg/apache/tools/ant/Task;
.source "Parallel.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;,
        Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    }
.end annotation


# static fields
.field private static final NUMBER_TRIES:I = 0x64


# instance fields
.field private daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

.field private exceptionMessage:Ljava/lang/StringBuffer;

.field private failOnAny:Z

.field private firstException:Ljava/lang/Throwable;

.field private firstExitStatus:Ljava/lang/Integer;

.field private firstLocation:Lorg/apache/tools/ant/Location;

.field private nestedTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field

.field private numExceptions:I

.field private numThreads:I

.field private numThreadsPerProcessor:I

.field private final semaphore:Ljava/lang/Object;

.field private volatile stillRunning:Z

.field private timedOut:Z

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    .line 81
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    .line 105
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Parallel;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z

    return p1
.end method

.method static synthetic access$402(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/taskdefs/Parallel;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->failOnAny:Z

    return p0
.end method

.method private killAll([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 413
    :cond_0
    array-length v2, p1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    .line 414
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 415
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->interrupt()V

    .line 416
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 422
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_3
    if-eqz v4, :cond_4

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    :cond_4
    return-void
.end method

.method static synthetic lambda$spinThreads$1(I)[Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    .locals 0

    .line 262
    new-array p0, p0, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    return-object p0
.end method

.method private processExceptions([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 227
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 229
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    .line 230
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 231
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    .line 233
    :cond_1
    instance-of v3, v2, Lorg/apache/tools/ant/BuildException;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    sget-object v4, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne v3, v4, :cond_2

    .line 235
    move-object v3, v2

    check-cast v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v3}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    .line 237
    :cond_2
    instance-of v3, v2, Lorg/apache/tools/ant/ExitStatusException;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 239
    move-object v3, v2

    check-cast v3, Lorg/apache/tools/ant/ExitStatusException;

    .line 240
    invoke-virtual {v3}, Lorg/apache/tools/ant/ExitStatusException;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    .line 243
    invoke-virtual {v3}, Lorg/apache/tools/ant/ExitStatusException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    .line 245
    :cond_3
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private spinThreads()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z

    const/4 v2, 0x0

    .line 258
    iput-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    .line 261
    iget-object v3, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/Parallel$$ExternalSyntheticLambda1;-><init>()V

    .line 262
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    .line 264
    iget-object v4, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    .line 265
    iget v5, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    if-ge v4, v5, :cond_0

    move v5, v4

    .line 267
    :cond_0
    new-array v6, v5, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    .line 268
    new-instance v7, Ljava/lang/ThreadGroup;

    const-string v8, "parallel"

    invoke-direct {v7, v8}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v8, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 272
    iget-object v8, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    invoke-static {v8}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    goto :goto_0

    :cond_1
    move-object v8, v9

    .line 275
    :goto_0
    iget-object v10, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    monitor-enter v10

    .line 281
    :try_start_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    iget-object v11, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    monitor-enter v11

    if-eqz v8, :cond_2

    move v10, v2

    .line 286
    :goto_1
    :try_start_1
    array-length v12, v8

    if-ge v10, v12, :cond_2

    .line 287
    new-instance v12, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    iget-object v13, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    invoke-static {v13}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;->access$000(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/tools/ant/Task;

    invoke-direct {v12, v1, v13}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/Task;)V

    aput-object v12, v8, v10

    .line 288
    new-instance v12, Ljava/lang/Thread;

    aget-object v13, v8, v10

    invoke-direct {v12, v7, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 289
    invoke-virtual {v12, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 290
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    move v10, v2

    move v12, v10

    :goto_2
    if-ge v10, v5, :cond_3

    add-int/lit8 v13, v12, 0x1

    .line 298
    aget-object v12, v3, v12

    aput-object v12, v6, v10

    .line 299
    new-instance v12, Ljava/lang/Thread;

    aget-object v14, v6, v10

    invoke-direct {v12, v7, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    add-int/lit8 v10, v10, 0x1

    move v12, v13

    goto :goto_2

    .line 303
    :cond_3
    iget-wide v13, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->timeout:J

    const-wide/16 v15, 0x0

    cmp-long v10, v13, v15

    if-eqz v10, :cond_4

    .line 305
    new-instance v10, Lorg/apache/tools/ant/taskdefs/Parallel$1;

    invoke-direct {v10, v1}, Lorg/apache/tools/ant/taskdefs/Parallel$1;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V

    .line 326
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    if-ge v12, v4, :cond_8

    .line 331
    :try_start_2
    iget-boolean v10, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z

    if-eqz v10, :cond_8

    move v10, v2

    :goto_4
    if-ge v10, v5, :cond_7

    .line 333
    aget-object v13, v6, v10

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->isFinished()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v13, v12, 0x1

    .line 334
    aget-object v12, v3, v12

    aput-object v12, v6, v10

    .line 335
    new-instance v12, Ljava/lang/Thread;

    aget-object v10, v6, v10

    invoke-direct {v12, v7, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 336
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    move v12, v13

    goto :goto_3

    .line 345
    :cond_7
    iget-object v10, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 349
    :cond_8
    :goto_6
    iget-boolean v4, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z

    if-eqz v4, :cond_b

    move v4, v2

    :goto_7
    if-ge v4, v5, :cond_a

    .line 351
    aget-object v7, v6, v4

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->isFinished()Z

    move-result v7

    if-nez v7, :cond_9

    .line 355
    iget-object v4, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->semaphore:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 359
    :cond_a
    iput-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->stillRunning:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_b
    move v4, v2

    goto :goto_8

    :catch_0
    move v4, v0

    .line 365
    :goto_8
    :try_start_3
    iget-boolean v5, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    if-nez v5, :cond_c

    iget-boolean v5, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->failOnAny:Z

    if-nez v5, :cond_c

    .line 367
    invoke-direct {v1, v6}, Lorg/apache/tools/ant/taskdefs/Parallel;->killAll([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V

    .line 369
    :cond_c
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_12

    .line 374
    iget-boolean v4, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->timedOut:Z

    if-nez v4, :cond_11

    .line 379
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    .line 380
    iput v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    .line 381
    iput-object v9, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    .line 382
    iput-object v9, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    .line 383
    sget-object v2, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    .line 384
    invoke-direct {v1, v8}, Lorg/apache/tools/ant/taskdefs/Parallel;->processExceptions([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V

    .line 385
    invoke-direct {v1, v3}, Lorg/apache/tools/ant/taskdefs/Parallel;->processExceptions([Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;)V

    .line 387
    iget v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->numExceptions:I

    if-ne v2, v0, :cond_e

    .line 388
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    instance-of v2, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v2, :cond_d

    .line 389
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 391
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstException:Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    if-le v2, v0, :cond_10

    .line 394
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    if-nez v0, :cond_f

    .line 395
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 398
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/ExitStatusException;

    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->exceptionMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstExitStatus:Ljava/lang/Integer;

    .line 399
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Lorg/apache/tools/ant/taskdefs/Parallel;->firstLocation:Lorg/apache/tools/ant/Location;

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V

    throw v0

    :cond_10
    return-void

    .line 375
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Parallel execution timed out"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_12
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Parallel execution interrupted."

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :goto_9
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 281
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method private updateThreadCounts()V
    .locals 2

    .line 216
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addDaemons(Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->daemonTasks:Lorg/apache/tools/ant/taskdefs/Parallel$TaskList;

    return-void

    .line 122
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one daemon group is supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Parallel;->updateThreadCounts()V

    .line 206
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->nestedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Parallel;->spinThreads()V

    return-void
.end method

.method synthetic lambda$spinThreads$0$org-apache-tools-ant-taskdefs-Parallel(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    .locals 1

    .line 261
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;-><init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/Task;)V

    return-object v0
.end method

.method public setFailOnAny(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->failOnAny:Z

    return-void
.end method

.method public setPollInterval(I)V
    .locals 0

    return-void
.end method

.method public setThreadCount(I)V
    .locals 0

    .line 182
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreads:I

    return-void
.end method

.method public setThreadsPerProcessor(I)V
    .locals 0

    .line 167
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->numThreadsPerProcessor:I

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 195
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->timeout:J

    return-void
.end method
