.class Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;
.super Ljava/lang/Object;
.source "ProcessDestroyer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;
    }
.end annotation


# static fields
.field private static final THREAD_DIE_TIMEOUT:I = 0x4e20


# instance fields
.field private addShutdownHookMethod:Ljava/lang/reflect/Method;

.field private added:Z

.field private destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

.field private final processes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field

.field private removeShutdownHookMethod:Ljava/lang/reflect/Method;

.field private running:Z


# direct methods
.method public static synthetic $r8$lambda$SuO5bY3I7MEoX-z5MJ_KE_t-y1M(Ljava/lang/Process;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    .line 45
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    .line 79
    :try_start_0
    const-class v1, Ljava/lang/Runtime;

    const-string v2, "addShutdownHook"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Thread;

    aput-object v5, v4, v0

    .line 80
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHookMethod:Ljava/lang/reflect/Method;

    .line 82
    const-class v1, Ljava/lang/Runtime;

    const-string v2, "removeShutdownHook"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Thread;

    aput-object v4, v3, v0

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHookMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :goto_0
    return-void
.end method

.method private addShutdownHook()V
    .locals 6

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHookMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;-><init>(Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    const/4 v0, 0x1

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHookMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalStateException;

    if-ne v2, v3, :cond_0

    .line 108
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeShutdownHook()V
    .locals 7

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHookMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHookMethod:Ljava/lang/reflect/Method;

    .line 124
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Could not remove shutdown hook"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/IllegalStateException;

    if-ne v3, v4, :cond_0

    .line 133
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 141
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->setShouldDestroy(Z)V

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->start()V

    .line 149
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->destroyProcessThread:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;

    .line 155
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Process;)Z
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->addShutdownHook()V

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAddedAsShutdownHook()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->added:Z

    return v0
.end method

.method public remove(Ljava/lang/Process;)Z
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->removeShutdownHook()V

    .line 200
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x1

    .line 210
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->running:Z

    .line 211
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->processes:Ljava/util/Set;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
