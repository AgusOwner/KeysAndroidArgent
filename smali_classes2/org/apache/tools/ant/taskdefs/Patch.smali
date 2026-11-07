.class public Lorg/apache/tools/ant/taskdefs/Patch;
.super Lorg/apache/tools/ant/Task;
.source "Patch.java"


# static fields
.field private static final PATCH:Ljava/lang/String; = "patch"


# instance fields
.field private cmd:Lorg/apache/tools/ant/types/Commandline;

.field private directory:Ljava/io/File;

.field private failOnError:Z

.field private havePatchfile:Z

.field private originalFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->havePatchfile:Z

    .line 42
    new-instance v1, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    .line 47
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->failOnError:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "\'patch\' failed with exit code "

    .line 170
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->havePatchfile:Z

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline;

    const-string v2, "patch"

    .line 175
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Patch;->originalFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Patch;->originalFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 181
    :cond_0
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 184
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Patch;->directory:Ljava/io/File;

    if-nez v3, :cond_1

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Patch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Patch;->directory:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 196
    :goto_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Patch;->log(Ljava/lang/String;I)V

    .line 198
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v1

    .line 199
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->failOnError:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Patch;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 203
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Patch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 190
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Patch;->directory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Patch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 171
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "patchfile argument is required"

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Patch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setBackups(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-b"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-o"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->directory:Ljava/io/File;

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->failOnError:Z

    return-void
.end method

.method public setIgnorewhitespace(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-l"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOriginalfile(Ljava/io/File;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->originalFile:Ljava/io/File;

    return-void
.end method

.method public setPatchfile(Ljava/io/File;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-i"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->havePatchfile:Z

    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "patchfile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " doesn\'t exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Patch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setQuiet(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-s"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReverse(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-R"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setStrip(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Patch;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-p"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "strip has to be >= 0"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Patch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method
