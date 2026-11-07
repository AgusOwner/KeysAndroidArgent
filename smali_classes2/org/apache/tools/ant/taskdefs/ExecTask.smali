.class public Lorg/apache/tools/ant/taskdefs/ExecTask;
.super Lorg/apache/tools/ant/Task;
.source "ExecTask.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected cmdl:Lorg/apache/tools/ant/types/Commandline;

.field private dir:Ljava/io/File;

.field private env:Lorg/apache/tools/ant/types/Environment;

.field private error:Ljava/io/File;

.field private executable:Ljava/lang/String;

.field private failIfExecFails:Z

.field protected failOnError:Z

.field private incompatibleWithSpawn:Z

.field private input:Ljava/io/File;

.field private inputString:Ljava/lang/String;

.field protected newEnvironment:Z

.field private os:Ljava/lang/String;

.field private osFamily:Ljava/lang/String;

.field private output:Ljava/io/File;

.field protected redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

.field protected redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

.field private resolveExecutable:Z

.field private resultProperty:Ljava/lang/String;

.field private searchPath:Z

.field private spawn:Z

.field private timeout:Ljava/lang/Long;

.field private vmLauncher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/ExecTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    .line 55
    new-instance v1, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    .line 56
    new-instance v1, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    .line 61
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    .line 55
    new-instance v1, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    .line 56
    new-instance v1, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    .line 61
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    return-void
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPath(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "PATH"

    .line 751
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Path"

    .line 752
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private isPath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PATH="

    .line 742
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Path="

    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public addConfiguredRedirector(Lorg/apache/tools/ant/types/RedirectorElement;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_0

    .line 423
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    const/4 p1, 0x1

    .line 424
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void

    .line 421
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "cannot have > 1 nested <redirector>s"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEnv(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method

.method protected checkConfiguration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 541
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 545
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 548
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn does not allow attributes related to input, output, error, result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 550
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn also does not allow timeout"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 551
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "finally, spawn is not compatible with a nested I/O <redirector>"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 553
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You have used an attribute or nested element which is not compatible with spawn"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setupRedirector()V

    return-void

    .line 539
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no executable specified"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method protected createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    return-object v0
.end method

.method protected createWatchdog()Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 732
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->isValidOs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 524
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->executable:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->checkConfiguration()V

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->prepareExec()Lorg/apache/tools/ant/taskdefs/Execute;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->runExec(Lorg/apache/tools/ant/taskdefs/Execute;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 530
    throw v1
.end method

.method public final getOs()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsFamily()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->osFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveExecutable()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    return v0
.end method

.method protected isValidOs()Z
    .locals 5

    .line 588
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->osFamily:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "os.name"

    .line 594
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current OS is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 596
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "This OS, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was not found in the specified list of valid OSes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected logFlush()V
    .locals 0

    return-void
.end method

.method protected maybeSetResultPropertyValue(I)V
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resultProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resultProperty:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected prepareExec()Lorg/apache/tools/ant/taskdefs/Execute;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v0, :cond_1

    .line 629
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;)V

    .line 631
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createWatchdog()Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 632
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 633
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 634
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 635
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 637
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting environment variable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    :cond_2
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setNewenvironment(Z)V

    .line 643
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    return-object v0
.end method

.method protected resolveExecutable(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 459
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    if-nez v0, :cond_0

    return-object p1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 469
    sget-object v1, Lorg/apache/tools/ant/taskdefs/ExecTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_7

    .line 477
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 479
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p2, v2

    .line 480
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->isPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 481
    new-instance p2, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_5

    .line 487
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getPath(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 489
    new-instance p2, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {p2, v2, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_7

    .line 493
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_7

    aget-object v2, p2, v0

    .line 494
    sget-object v3, Lorg/apache/tools/ant/taskdefs/ExecTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v3, v4, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object p1
.end method

.method protected runExec(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 697
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 699
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->logFlush()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 701
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Execute failed: "

    if-nez v0, :cond_0

    .line 705
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    return-void

    .line 702
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->logFlush()V

    .line 709
    throw p1
.end method

.method protected final runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    if-nez v0, :cond_3

    .line 660
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    .line 663
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 665
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    const-string v1, "Timeout: killed the sub-process"

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 668
    invoke-virtual {p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 666
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 670
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->maybeSetResultPropertyValue(I)V

    .line 671
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V

    .line 672
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 673
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    if-nez p1, :cond_2

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Result: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 674
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 680
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->spawn()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAppend(Z)V
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppend(Z)V

    .line 380
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    const-string v0, "The command attribute is deprecated.\nPlease use the executable attribute and nested arg elements."

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    return-void
.end method

.method public setDiscardError(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardError(Z)V

    return-void
.end method

.method public setDiscardOutput(Z)V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardOutput(Z)V

    return-void
.end method

.method public setError(Ljava/io/File;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->error:Ljava/io/File;

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorProperty(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 1

    .line 136
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->executable:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    return-void
.end method

.method public setFailIfExecutionFails(Z)V
    .locals 1

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    .line 367
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setFailonerror(Z)V
    .locals 1

    .line 268
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    .line 269
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setInput(Ljava/io/File;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->input:Ljava/io/File;

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void

    .line 194
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputString(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->input:Ljava/io/File;

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->inputString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void

    .line 208
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLogError(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogError(Z)V

    .line 223
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setNewenvironment(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsFamily(Ljava/lang/String;)V
    .locals 1

    .line 433
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->osFamily:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->output:Ljava/io/File;

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setOutputproperty(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputProperty(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setResolveExecutable(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    return-void
.end method

.method public setResultProperty(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resultProperty:Ljava/lang/String;

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setSearchPath(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    return-void
.end method

.method public setSpawn(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    return-void
.end method

.method public setTimeout(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setTimeout(Ljava/lang/Long;)V

    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .locals 1

    .line 117
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    .line 118
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setVMLauncher(Z)V
    .locals 0

    .line 613
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    return-void
.end method

.method protected setupRedirector()V
    .locals 2

    .line 563
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->input:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput(Ljava/io/File;)V

    .line 564
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputString(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->output:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput(Ljava/io/File;)V

    .line 566
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->error:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError(Ljava/io/File;)V

    return-void
.end method
