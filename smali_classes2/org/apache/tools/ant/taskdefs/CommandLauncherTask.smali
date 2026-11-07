.class public Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;
.super Lorg/apache/tools/ant/Task;
.source "CommandLauncherTask.java"


# instance fields
.field private commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

.field private vmLauncher:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addConfigured(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one CommandLauncher can be installed"

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
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    if-eqz v0, :cond_1

    .line 44
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->vmLauncher:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->setVMLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->setShellLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVmLauncher(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->vmLauncher:Z

    return-void
.end method
