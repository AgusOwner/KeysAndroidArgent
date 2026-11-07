.class public Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.source "ForkingSunRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "forking"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected areIiopAndIdlSupported()Z
    .locals 4

    const-string v0, "11"

    .line 53
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getExecutable()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v2, "Allowing -iiop and -idl for forked rmic even though this version of Java doesn\'t support it."

    const/4 v3, 0x2

    .line 56
    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return v1

    :cond_0
    return v0
.end method

.method public execute()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->setupRmicCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getExecutable()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "15"

    .line 75
    invoke-static {v3}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->getExecutableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "rmic does not exist under Java 15 and higher, use rmic of an older JDK and explicitly set the executable attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    .line 90
    :try_start_0
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v4, v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 93
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 94
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 95
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    .line 97
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v6

    return v0

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error running "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->getExecutableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -maybe it is not on the path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getExecutableName()Ljava/lang/String;
    .locals 1

    const-string v0, "rmic"

    return-object v0
.end method
