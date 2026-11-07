.class Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
.super Ljava/lang/Object;
.source "Parallel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private finished:Z

.field private task:Lorg/apache/tools/ant/Task;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->task:Lorg/apache/tools/ant/Task;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method interrupt()V
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method isFinished()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    return v0
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 452
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/property/LocalProperties;->copy()V

    .line 453
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->thread:Ljava/lang/Thread;

    .line 454
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->perform()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 462
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 464
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

    .line 456
    :try_start_2
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->exception:Ljava/lang/Throwable;

    .line 457
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$500(Lorg/apache/tools/ant/taskdefs/Parallel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$302(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 461
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 462
    :try_start_3
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 464
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

    .line 461
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 462
    :try_start_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 464
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 465
    throw v1

    :catchall_4
    move-exception v0

    .line 464
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method
