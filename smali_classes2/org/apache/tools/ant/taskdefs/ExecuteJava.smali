.class public Lorg/apache/tools/ant/taskdefs/ExecuteJava;
.super Ljava/lang/Object;
.source "ExecuteJava.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/tools/ant/util/TimeoutObserver;


# instance fields
.field private volatile caught:Ljava/lang/Throwable;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private done:Z

.field private javaCommand:Lorg/apache/tools/ant/types/Commandline;

.field private main:Ljava/lang/reflect/Method;

.field private perm:Lorg/apache/tools/ant/types/Permissions;

.field private sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

.field private thread:Ljava/lang/Thread;

.field private volatile timedOut:Z

.field private timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 52
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 56
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public static setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 320
    :try_start_0
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 321
    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->createVmsJavaOptionFile([Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 328
    aget-object p1, p1, v3

    aput-object p1, v2, v3

    const-string p1, "-V"

    aput-object p1, v2, v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 329
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 331
    :catch_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string p1, "Failed to create a temporary file for \"-V\" switch"

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/Project;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 123
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->setSystem()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 128
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 129
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 132
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/AntClassLoader;->setParent(Ljava/lang/ClassLoader;)V

    .line 133
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 134
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V

    .line 135
    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/AntClassLoader;->setIsolated(Z)V

    .line 136
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->setThreadContextLoader()V

    .line 137
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/AntClassLoader;->forceLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 138
    invoke-static {v0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    :goto_0
    :try_start_3
    const-string v6, "main"

    new-array v7, v4, [Ljava/lang/Class;

    .line 145
    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_9

    .line 150
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->run()V

    goto :goto_3

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "ExecuteJava"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getThreadTask(Ljava/lang/Thread;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {p1, v2, v0}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 167
    new-instance v0, Lorg/apache/tools/ant/util/Watchdog;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/util/Watchdog;-><init>(J)V

    .line 168
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/Watchdog;->addTimeoutObserver(Lorg/apache/tools/ant/util/TimeoutObserver;)V

    .line 169
    monitor-enter p0
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    :try_start_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 171
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    if-nez v2, :cond_3

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 179
    :catch_0
    :cond_3
    :try_start_6
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    if-eqz v2, :cond_4

    const-string v0, "Timeout: sub-process interrupted"

    .line 180
    invoke-virtual {p1, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 183
    :cond_4
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 184
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->stop()V

    .line 186
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    :goto_3
    :try_start_7
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_7
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez p1, :cond_7

    if-eqz v5, :cond_5

    .line 197
    invoke-virtual {v5}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 198
    invoke-virtual {v5}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 201
    :cond_5
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz p1, :cond_6

    .line 202
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    :cond_6
    return-void

    .line 189
    :cond_7
    :try_start_8
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;

    throw p1
    :try_end_8
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_0
    move-exception p1

    .line 186
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1

    .line 151
    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v1, "main() method in %s is not declared static"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 147
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Could not find main() method in %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
    :try_end_a
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    move-object v1, v5

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_4
    move-object v1, v5

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v1, v2

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_5

    :catch_6
    move-exception p1

    :goto_5
    move-object v1, v2

    goto :goto_7

    :catch_7
    move-object v1, v2

    .line 141
    :catch_8
    :try_start_b
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Could not find %s. Make sure you have it in your classpath"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
    :try_end_b
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/ThreadDeath; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p1

    .line 194
    :goto_6
    :try_start_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_9
    move-exception p1

    goto :goto_7

    :catch_a
    move-exception p1

    goto :goto_7

    :catch_b
    move-exception p1

    .line 192
    :goto_7
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_a

    .line 197
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->resetThreadContextLoader()V

    .line 198
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 201
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v0, :cond_b

    .line 202
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    .line 204
    :cond_b
    throw p1
.end method

.method public fork(Lorg/apache/tools/ant/ProjectComponent;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 273
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    .line 274
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 276
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 281
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V

    .line 284
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 285
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Execute;

    .line 286
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v3

    .line 287
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 289
    :cond_3
    new-instance v4, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    :goto_1
    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 290
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    const-string p1, "openvms"

    .line 291
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_4
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 297
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1

    .line 298
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 301
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_3
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 304
    throw p1
.end method

.method public declared-synchronized killedProcess()Z
    .locals 1

    monitor-enter p0

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Permissions;->setSecurityManager()V

    move v2, v1

    .line 220
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 232
    :cond_1
    monitor-enter p0

    .line 233
    :try_start_1
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 227
    :try_start_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 232
    :cond_2
    monitor-enter p0

    .line 233
    :try_start_3
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    .line 222
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 223
    instance-of v3, v0, Ljava/lang/InterruptedException;

    if-nez v3, :cond_3

    .line 224
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 229
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 232
    :cond_4
    monitor-enter p0

    .line 233
    :try_start_5
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    monitor-exit p0

    :goto_0
    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 229
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 230
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Permissions;->restoreSecurityManager()V

    .line 232
    :cond_5
    monitor-enter p0

    .line 233
    :try_start_6
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 236
    throw v0

    :catchall_5
    move-exception v0

    .line 235
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    return-void
.end method

.method public setOutput(Ljava/io/PrintStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPermissions(Lorg/apache/tools/ant/types/Permissions;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/Permissions;

    return-void
.end method

.method public setSystemProperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    return-void
.end method

.method public declared-synchronized timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 247
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 248
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 250
    :cond_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->done:Z

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
