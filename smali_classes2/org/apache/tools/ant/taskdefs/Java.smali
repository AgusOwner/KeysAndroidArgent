.class public Lorg/apache/tools/ant/taskdefs/Java;
.super Lorg/apache/tools/ant/Task;
.source "Java.java"


# static fields
.field private static final TIMEOUT_MESSAGE:Ljava/lang/String; = "Timeout: killed the sub-process"


# instance fields
.field private cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

.field private dir:Ljava/io/File;

.field private env:Lorg/apache/tools/ant/types/Environment;

.field private error:Ljava/io/File;

.field private failOnError:Z

.field private fork:Z

.field private incompatibleWithSpawn:Z

.field private input:Ljava/io/File;

.field private inputString:Ljava/lang/String;

.field private newEnvironment:Z

.field private output:Ljava/io/File;

.field private perm:Lorg/apache/tools/ant/types/Permissions;

.field protected redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

.field protected redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

.field private resultProperty:Ljava/lang/String;

.field private spawn:Z

.field private timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 62
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    .line 63
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    .line 72
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 77
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 62
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    .line 63
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    .line 72
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 77
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    return-void
.end method

.method private fork([Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 907
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 908
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createWatchdog()Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 909
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupExecutable(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 912
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1

    .line 913
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V

    .line 914
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 915
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Timeout: killed the sub-process"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 919
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method static synthetic lambda$run$0(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V
    .locals 0

    .line 1023
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/Throwable;)V
    .locals 1

    .line 1056
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private run(Lorg/apache/tools/ant/types/CommandlineJava;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 885
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 886
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getJavaCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 887
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 888
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getSystemProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setSystemProperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V

    .line 889
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setPermissions(Lorg/apache/tools/ant/types/Permissions;)V

    .line 890
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setTimeout(Ljava/lang/Long;)V

    .line 891
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->createStreams()V

    .line 892
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->execute(Lorg/apache/tools/ant/Project;)V

    .line 893
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V

    .line 894
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->killedProcess()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 895
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Timeout: killed the sub-process"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 898
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setupCommandLine(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "openvms"

    .line 993
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Java;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .locals 0

    .line 1009
    invoke-static {p1, p2}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    return-void
.end method

.method private setupEnvironment(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .locals 6

    .line 956
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting environment variable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setNewenvironment(Z)V

    .line 964
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    return-void
.end method

.method private setupExecutable(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .locals 1

    .line 945
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 946
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupWorkingDir(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 947
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupEnvironment(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 948
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Java;->setupCommandLine(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    return-void
.end method

.method private setupWorkingDir(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .locals 2

    .line 973
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    return-void

    .line 976
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method private spawn([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 928
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>()V

    .line 929
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupExecutable(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 931
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->spawn()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 933
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method public addAssertions(Lorg/apache/tools/ant/types/Assertions;)V
    .locals 1

    .line 759
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setAssertions(Lorg/apache/tools/ant/types/Assertions;)V

    return-void

    .line 760
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one assertion declaration is allowed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfiguredRedirector(Lorg/apache/tools/ant/types/RedirectorElement;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_0

    .line 773
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    const/4 p1, 0x1

    .line 774
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void

    .line 771
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "cannot have > 1 nested redirectors"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEnv(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 532
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 543
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    return-void
.end method

.method protected checkConfiguration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Classname must not be null."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot execute a jar in non-forked mode. Please set fork=\'true\'. "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 155
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot execute a module in non-forked mode. Please set fork=\'true\'. "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_7

    if-nez v2, :cond_6

    goto :goto_3

    .line 159
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot execute sourcefile in non-forked mode. Please set fork=\'true\'"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    .line 162
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot spawn a java process in non-forked mode. Please set fork=\'true\'. "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "When using \'jar\' attribute classpath-settings are ignored. See the manual for more information."

    .line 167
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 170
    :cond_a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    if-nez v0, :cond_b

    goto :goto_5

    .line 171
    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn does not allow attributes related to input, output, error, result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn also does not allow timeout"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "finally, spawn is not compatible with a nested I/O <redirector>"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 178
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You have used an attribute or nested element which is not compatible with spawn"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_d

    const-string v0, "Assertion statements are currently ignored in non-forked mode"

    .line 182
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;)V

    .line 184
    :cond_d
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_e

    const-string v0, "Permissions can not be set this way in forked mode."

    .line 186
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 188
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->describeCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 190
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getVmCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    if-le v0, v2, :cond_10

    const-string v0, "JVM args ignored when same JVM is used."

    .line 191
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 194
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    if-eqz v0, :cond_11

    const-string v0, "Working directory ignored when same JVM is used."

    .line 195
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 198
    :cond_11
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    :cond_12
    const-string v0, "Changes to environment variables are ignored when same JVM is used."

    .line 199
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 202
    :cond_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "bootclasspath ignored when same JVM is used."

    .line 203
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 206
    :cond_14
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-nez v0, :cond_15

    invoke-static {}, Lorg/apache/tools/ant/util/SecurityManagerUtil;->isSetSecurityManagerAllowed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    new-instance v0, Lorg/apache/tools/ant/types/Permissions;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Permissions;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "running "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with default permissions (exit forbidden)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 211
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Running in same VM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->describeJavaCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 214
    :goto_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->setupRedirector()V

    return-void
.end method

.method public clearArgs()V
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->clearJavaArgs()V

    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 296
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createBootclasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 286
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createModulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createPermissions()Lorg/apache/tools/ant/types/Permissions;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Permissions;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Permissions;-><init>()V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    return-object v0
.end method

.method public createUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 336
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createUpgrademodulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

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

    .line 1044
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1047
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    return-object v0
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Java returned: "

    const-string v1, "Java Result: "

    .line 103
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 104
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->checkConfiguration()V

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    if-nez v5, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/ExitStatusException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v1, v0, v4, v5}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V

    throw v1

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Java;->maybeSetResultPropertyValue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 122
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    return-void

    :catchall_0
    move-exception v0

    .line 121
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 122
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 123
    throw v0
.end method

.method public executeJava()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava(Lorg/apache/tools/ant/types/CommandlineJava;)I

    move-result v0

    return v0
.end method

.method protected executeJava(Lorg/apache/tools/ant/types/CommandlineJava;)I
    .locals 3

    const/4 v0, -0x1

    .line 224
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 225
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->spawn([Ljava/lang/String;)V

    return v2

    .line 229
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->fork([Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 232
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->run(Lorg/apache/tools/ant/types/CommandlineJava;)V
    :try_end_1
    .catch Lorg/apache/tools/ant/ExitException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catch_0
    move-exception p1

    .line 235
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/ExitException;->getStatus()I

    move-result p1
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 253
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    if-nez v1, :cond_2

    .line 256
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/Throwable;)V

    return v0

    .line 254
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    :catch_1
    move-exception p1

    .line 251
    throw p1

    :catch_2
    move-exception p1

    .line 238
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 241
    :cond_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    if-nez v1, :cond_5

    .line 244
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timeout: killed the sub-process"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/Throwable;)V

    :goto_0
    return v0

    .line 242
    :cond_5
    throw p1
.end method

.method public getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;
    .locals 1

    .line 1066
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    return-object v0
.end method

.method public getSysProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;
    .locals 1

    .line 1076
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSystemProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    move-result-object v0

    return-object v0
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleInput([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleInput([BII)I

    move-result p1

    return p1
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected maybeSetResultPropertyValue(I)V
    .locals 2

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 483
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->resultProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->resultProperty:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected run(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1021
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    .line 1022
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 1023
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Java$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/taskdefs/Java$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/CommandlineJava;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 1024
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->run(Lorg/apache/tools/ant/types/CommandlineJava;)V

    return-void
.end method

.method public setAppend(Z)V
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppend(Z)V

    .line 708
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 2

    const-string v0, "The args attribute is deprecated. Please use nested arg elements."

    const/4 v1, 0x1

    .line 435
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 437
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot use combination of \'jar\', \'classname\', sourcefile attributes in same command"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setCloneVm(Z)V
    .locals 1

    .line 450
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setCloneVm(Z)V

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    return-void
.end method

.method public setDiscardError(Z)V
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardError(Z)V

    return-void
.end method

.method public setDiscardOutput(Z)V
    .locals 1

    .line 723
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardOutput(Z)V

    return-void
.end method

.method public setError(Ljava/io/File;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->error:Ljava/io/File;

    const/4 p1, 0x1

    .line 628
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorProperty(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 653
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setFailonerror(Z)V
    .locals 1

    .line 554
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    .line 555
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setFork(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    return-void
.end method

.method public setInput(Ljava/io/File;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 588
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    const/4 p1, 0x1

    .line 589
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void

    .line 585
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputString(Ljava/lang/String;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    if-nez v0, :cond_0

    .line 602
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 603
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void

    .line 599
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJVMVersion(Ljava/lang/String;)V
    .locals 1

    .line 670
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVmversion(Ljava/lang/String;)V

    return-void
.end method

.method public setJar(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setJar(Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot use combination of \'jar\', \'sourcefile\', \'classname\', \'module\' attributes in same command"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJvm(Ljava/lang/String;)V
    .locals 1

    .line 523
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    return-void
.end method

.method public setJvmargs(Ljava/lang/String;)V
    .locals 2

    const-string v0, "The jvmargs attribute is deprecated. Please use nested jvmarg elements."

    const/4 v1, 0x1

    .line 503
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    return-void
.end method

.method public setLogError(Z)V
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogError(Z)V

    .line 616
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .locals 1

    .line 662
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setModule(Ljava/lang/String;)V

    return-void

    .line 400
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot use combination of \'jar\', \'module\', sourcefile attributes in same command"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModulepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setModulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setNewenvironment(Z)V
    .locals 0

    .line 696
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->output:Ljava/io/File;

    const/4 p1, 0x1

    .line 575
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setOutputproperty(Ljava/lang/String;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputProperty(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 640
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setResultProperty(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->resultProperty:Ljava/lang/String;

    const/4 p1, 0x1

    .line 472
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setSourceFile(Ljava/lang/String;)V

    return-void

    .line 420
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot use \'sourcefile\' in combination with \'jar\' or \'module\' or \'classname\'"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpawn(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .locals 1

    .line 749
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    .line 750
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    return-void
.end method

.method protected setupRedirector()V
    .locals 3

    .line 864
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput(Ljava/io/File;)V

    .line 865
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputString(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->output:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput(Ljava/io/File;)V

    .line 867
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->error:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError(Ljava/io/File;)V

    .line 868
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v0, :cond_0

    .line 869
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;)V

    .line 871
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    new-instance v1, Lorg/apache/tools/ant/util/KeepAliveInputStream;

    .line 874
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getDefaultInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/KeepAliveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 873
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputStream(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method
