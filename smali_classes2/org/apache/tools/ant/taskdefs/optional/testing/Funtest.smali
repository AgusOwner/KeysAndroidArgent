.class public Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;
.super Lorg/apache/tools/ant/Task;
.source "Funtest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;
    }
.end annotation


# static fields
.field public static final APPLICATION_EXCEPTION:Ljava/lang/String; = "Application Exception"

.field public static final APPLICATION_FORCIBLY_SHUT_DOWN:Ljava/lang/String; = "Application forcibly shut down"

.field public static final SHUTDOWN_INTERRUPTED:Ljava/lang/String; = "Shutdown interrupted"

.field public static final SKIPPING_TESTS:Ljava/lang/String; = "Condition failed -skipping tests"

.field public static final TEARDOWN_EXCEPTION:Ljava/lang/String; = "Teardown Exception"

.field public static final WARN_OVERRIDING:Ljava/lang/String; = "Overriding previous definition of "


# instance fields
.field private application:Lorg/apache/tools/ant/taskdefs/Sequential;

.field private applicationException:Lorg/apache/tools/ant/BuildException;

.field private block:Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;

.field private condition:Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;

.field private failOnTeardownErrors:Z

.field private failureMessage:Ljava/lang/String;

.field private failureProperty:Ljava/lang/String;

.field private reporting:Lorg/apache/tools/ant/taskdefs/Sequential;

.field private setup:Lorg/apache/tools/ant/taskdefs/Sequential;

.field private shutdownTime:J

.field private shutdownUnitMultiplier:J

.field private taskException:Lorg/apache/tools/ant/BuildException;

.field private teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

.field private teardownException:Lorg/apache/tools/ant/BuildException;

.field private testException:Lorg/apache/tools/ant/BuildException;

.field private tests:Lorg/apache/tools/ant/taskdefs/Sequential;

.field private timedTests:Lorg/apache/tools/ant/taskdefs/Parallel;

.field private timeout:J

.field private timeoutUnitMultiplier:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-wide/16 v0, 0x1

    .line 126
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timeoutUnitMultiplier:J

    const-wide/16 v2, 0x2710

    .line 131
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->shutdownTime:J

    .line 133
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->shutdownUnitMultiplier:J

    const-string v0, "Tests failed"

    .line 143
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureMessage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failOnTeardownErrors:Z

    return-void
.end method

.method private bind(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 345
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Task;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 346
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->init()V

    return-void
.end method

.method private logOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Overriding previous definition of <"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private newParallel(J)Lorg/apache/tools/ant/taskdefs/Parallel;
    .locals 2

    .line 355
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;-><init>()V

    .line 356
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->bind(Lorg/apache/tools/ant/Task;)V

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->setFailOnAny(Z)V

    .line 358
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Parallel;->setTimeout(J)V

    return-object v0
.end method

.method private newParallel(JLorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel;
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(J)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object p1

    .line 370
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/taskdefs/Parallel;->addTask(Lorg/apache/tools/ant/Task;)V

    return-object p1
.end method

.method private validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 380
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s task is not bound to the project %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addApplication(Lorg/apache/tools/ant/taskdefs/Sequential;)V
    .locals 2

    const-string v0, "application"

    .line 202
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->application:Lorg/apache/tools/ant/taskdefs/Sequential;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->application:Lorg/apache/tools/ant/taskdefs/Sequential;

    return-void
.end method

.method public addBlock(Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;)V
    .locals 2

    const-string v0, "block"

    .line 220
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->block:Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->block:Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;

    return-void
.end method

.method public addReporting(Lorg/apache/tools/ant/taskdefs/Sequential;)V
    .locals 2

    const-string v0, "reporting"

    .line 238
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->reporting:Lorg/apache/tools/ant/taskdefs/Sequential;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->reporting:Lorg/apache/tools/ant/taskdefs/Sequential;

    return-void
.end method

.method public addSetup(Lorg/apache/tools/ant/taskdefs/Sequential;)V
    .locals 2

    const-string v0, "setup"

    .line 211
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->setup:Lorg/apache/tools/ant/taskdefs/Sequential;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->setup:Lorg/apache/tools/ant/taskdefs/Sequential;

    return-void
.end method

.method public addTeardown(Lorg/apache/tools/ant/taskdefs/Sequential;)V
    .locals 2

    const-string v0, "teardown"

    .line 247
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

    return-void
.end method

.method public addTests(Lorg/apache/tools/ant/taskdefs/Sequential;)V
    .locals 2

    const-string v0, "tests"

    .line 229
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->tests:Lorg/apache/tools/ant/taskdefs/Sequential;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->tests:Lorg/apache/tools/ant/taskdefs/Sequential;

    return-void
.end method

.method public createCondition()Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
    .locals 2

    const-string v0, "condition"

    .line 192
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->condition:Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->logOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;-><init>(Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->condition:Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;

    return-object v0
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->setup:Lorg/apache/tools/ant/taskdefs/Sequential;

    const-string v1, "setup"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->application:Lorg/apache/tools/ant/taskdefs/Sequential;

    const-string v1, "application"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->tests:Lorg/apache/tools/ant/taskdefs/Sequential;

    const-string v1, "tests"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->reporting:Lorg/apache/tools/ant/taskdefs/Sequential;

    const-string v1, "reporting"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

    const-string v1, "teardown"

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->condition:Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest$NestedCondition;->eval()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Condition failed -skipping tests"

    .line 409
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->log(Ljava/lang/String;)V

    return-void

    .line 413
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timeout:J

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timeoutUnitMultiplier:J

    mul-long/2addr v0, v2

    .line 416
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(J)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object v2

    .line 418
    new-instance v3, Lorg/apache/tools/ant/util/WorkerAnt;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/tools/ant/util/WorkerAnt;-><init>(Lorg/apache/tools/ant/Task;Ljava/lang/Object;)V

    .line 419
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->application:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v4, :cond_1

    .line 420
    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/taskdefs/Parallel;->addTask(Lorg/apache/tools/ant/Task;)V

    .line 425
    :cond_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Sequential;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Sequential;-><init>()V

    .line 426
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->bind(Lorg/apache/tools/ant/Task;)V

    .line 427
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->block:Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;

    if-eqz v4, :cond_2

    .line 429
    new-instance v4, Lorg/apache/tools/ant/TaskAdapter;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->block:Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;

    invoke-direct {v4, v5}, Lorg/apache/tools/ant/TaskAdapter;-><init>(Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v4, p0}, Lorg/apache/tools/ant/TaskAdapter;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    const-string v5, "block"

    .line 431
    invoke-direct {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->validateTask(Lorg/apache/tools/ant/Task;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/taskdefs/Sequential;->addTask(Lorg/apache/tools/ant/Task;)V

    .line 434
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->block:Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->calculateMaxWaitMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    .line 438
    :goto_0
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->tests:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v6, :cond_3

    .line 439
    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/taskdefs/Sequential;->addTask(Lorg/apache/tools/ant/Task;)V

    add-long/2addr v4, v0

    .line 443
    :cond_3
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->reporting:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v6, :cond_4

    .line 444
    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/taskdefs/Sequential;->addTask(Lorg/apache/tools/ant/Task;)V

    add-long/2addr v4, v0

    .line 450
    :cond_4
    invoke-direct {p0, v4, v5, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(JLorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timedTests:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 454
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->setup:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v2, :cond_5

    .line 455
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(JLorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->execute()V

    .line 459
    :cond_5
    invoke-virtual {v3}, Lorg/apache/tools/ant/util/WorkerAnt;->start()V

    .line 461
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timedTests:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->execute()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v2, :cond_6

    .line 469
    :try_start_1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(JLorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->execute()V
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 464
    :try_start_2
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->testException:Lorg/apache/tools/ant/BuildException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v2, :cond_6

    .line 469
    :try_start_3
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(JLorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->execute()V
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 472
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardownException:Lorg/apache/tools/ant/BuildException;

    .line 482
    :cond_6
    :goto_1
    :try_start_4
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->shutdownTime:J

    iget-wide v4, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->shutdownUnitMultiplier:J

    mul-long/2addr v0, v4

    .line 483
    invoke-virtual {v3, v0, v1}, Lorg/apache/tools/ant/util/WorkerAnt;->waitUntilFinished(J)V

    .line 484
    invoke-virtual {v3}, Lorg/apache/tools/ant/util/WorkerAnt;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Application forcibly shut down"

    const/4 v4, 0x1

    .line 486
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->log(Ljava/lang/String;I)V

    .line 487
    invoke-virtual {v3}, Lorg/apache/tools/ant/util/WorkerAnt;->interrupt()V

    .line 488
    invoke-virtual {v3, v0, v1}, Lorg/apache/tools/ant/util/WorkerAnt;->waitUntilFinished(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Shutdown interrupted"

    const/4 v2, 0x3

    .line 493
    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 495
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lorg/apache/tools/ant/util/WorkerAnt;->getBuildException()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->applicationException:Lorg/apache/tools/ant/BuildException;

    .line 499
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->processExceptions()V

    return-void

    .line 467
    :goto_3
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardown:Lorg/apache/tools/ant/taskdefs/Sequential;

    if-eqz v3, :cond_8

    .line 469
    :try_start_5
    invoke-direct {p0, v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->newParallel(JLorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/taskdefs/Parallel;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->execute()V
    :try_end_5
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 472
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardownException:Lorg/apache/tools/ant/BuildException;

    .line 475
    :cond_8
    :goto_4
    throw v2
.end method

.method public getApplicationException()Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->applicationException:Lorg/apache/tools/ant/BuildException;

    return-object v0
.end method

.method public getTaskException()Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    return-object v0
.end method

.method public getTeardownException()Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardownException:Lorg/apache/tools/ant/BuildException;

    return-object v0
.end method

.method public getTestException()Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->testException:Lorg/apache/tools/ant/BuildException;

    return-object v0
.end method

.method protected ignoringThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method protected processExceptions()V
    .locals 2

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->testException:Lorg/apache/tools/ant/BuildException;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    .line 518
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->applicationException:Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 519
    instance-of v0, v0, Lorg/apache/tools/ant/taskdefs/optional/testing/BuildTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application Exception"

    .line 522
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->ignoringThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 520
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    .line 527
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->teardownException:Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_4

    .line 528
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failOnTeardownErrors:Z

    if-eqz v1, :cond_3

    .line 529
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    goto :goto_2

    :cond_3
    const-string v1, "Teardown Exception"

    .line 532
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->ignoringThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureProperty:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 540
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->log(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    if-nez v0, :cond_5

    .line 542
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    .line 548
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->taskException:Lorg/apache/tools/ant/BuildException;

    if-nez v0, :cond_6

    return-void

    .line 549
    :cond_6
    throw v0
.end method

.method public setFailOnTeardownErrors(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failOnTeardownErrors:Z

    return-void
.end method

.method public setFailureMessage(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureMessage:Ljava/lang/String;

    return-void
.end method

.method public setFailureProperty(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->failureProperty:Ljava/lang/String;

    return-void
.end method

.method public setShutdownTime(J)V
    .locals 0

    .line 280
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->shutdownTime:J

    return-void
.end method

.method public setShutdownUnit(Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;)V
    .locals 2

    .line 304
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getMultiplier()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->shutdownUnitMultiplier:J

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 288
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timeout:J

    return-void
.end method

.method public setTimeoutUnit(Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;)V
    .locals 2

    .line 296
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getMultiplier()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/Funtest;->timeoutUnitMultiplier:J

    return-void
.end method
