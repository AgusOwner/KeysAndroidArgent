.class Lorg/apache/tools/ant/taskdefs/Parallel$1;
.super Ljava/lang/Thread;
.source "Parallel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/Parallel;->spinThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Parallel;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 309
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$100(Lorg/apache/tools/ant/taskdefs/Parallel;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    sub-long v2, v0, v2

    .line 313
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$302(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z

    .line 318
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$402(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z

    .line 319
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->access$200(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 324
    :catch_0
    :goto_1
    monitor-exit p0

    return-void
.end method
