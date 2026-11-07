.class public Lorg/apache/tools/ant/taskdefs/optional/Rpm;
.super Lorg/apache/tools/ant/Task;
.source "Rpm.java"


# static fields
.field private static final PATH1:Ljava/lang/String; = "PATH"

.field private static final PATH2:Ljava/lang/String; = "Path"

.field private static final PATH3:Ljava/lang/String; = "path"


# instance fields
.field private cleanBuildDir:Z

.field private command:Ljava/lang/String;

.field private error:Ljava/io/File;

.field private failOnError:Z

.field private output:Ljava/io/File;

.field private quiet:Z

.field private removeSource:Z

.field private removeSpec:Z

.field private rpmBuildCommand:Ljava/lang/String;

.field private specFile:Ljava/lang/String;

.field private topDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, "-bb"

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->command:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->rpmBuildCommand:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->cleanBuildDir:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSpec:Z

    .line 85
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSource:Z

    .line 100
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->failOnError:Z

    .line 106
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "\'"

    const-string v1, "Building the RPM based on the "

    .line 116
    new-instance v2, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 118
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->rpmBuildCommand:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->guessRpmBuildCommand()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "--define"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_topdir "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 125
    :cond_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->command:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 127
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->cleanBuildDir:Z

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "--clean"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 130
    :cond_2
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSpec:Z

    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "--rmspec"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 133
    :cond_3
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSource:Z

    if-eqz v3, :cond_4

    .line 134
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "--rmsource"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 137
    :cond_4
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SPECS/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->specFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->error:Ljava/io/File;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->output:Ljava/io/File;

    if-nez v3, :cond_6

    .line 143
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    if-nez v3, :cond_5

    .line 144
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v3, p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    goto :goto_0

    .line 147
    :cond_5
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v3, p0, v7, v7}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    :goto_0
    move-object v4, v8

    goto/16 :goto_5

    .line 151
    :cond_6
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->output:Ljava/io/File;

    if-eqz v3, :cond_7

    .line 154
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v5, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    new-instance v9, Ljava/io/PrintStream;

    invoke-direct {v9, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v3

    goto :goto_1

    :catch_1
    move-exception v0

    .line 158
    :goto_1
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 159
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 161
    :cond_7
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    if-nez v3, :cond_8

    .line 162
    new-instance v9, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v9, p0, v5}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_2

    .line 164
    :cond_8
    new-instance v9, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v9, p0, v7}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    .line 166
    :goto_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->error:Ljava/io/File;

    if-eqz v3, :cond_9

    .line 169
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v8

    .line 170
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v4

    goto :goto_4

    :catch_2
    move-exception v0

    .line 173
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 174
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 176
    :cond_9
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    if-nez v3, :cond_a

    .line 177
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v3, p0, v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_3

    .line 179
    :cond_a
    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v3, p0, v7}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    :goto_3
    move-object v8, v3

    .line 181
    :goto_4
    new-instance v3, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v3, v9, v8}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v4, v8

    move-object v8, v9

    .line 184
    :goto_5
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getExecute(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)Lorg/apache/tools/ant/taskdefs/Execute;

    move-result-object v3

    .line 186
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->specFile:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " file"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v1

    .line 188
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' failed with exit code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->failOnError:Z

    if-nez v1, :cond_b

    .line 194
    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->log(Ljava/lang/String;I)V

    goto :goto_6

    .line 192
    :cond_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :cond_c
    :goto_6
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 200
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 197
    :try_start_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    :goto_7
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 200
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 201
    throw v0
.end method

.method protected getExecute(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)Lorg/apache/tools/ant/taskdefs/Execute;
    .locals 2

    .line 357
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 359
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 360
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    if-nez p2, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    .line 363
    :cond_0
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 365
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    return-object v0
.end method

.method protected guessRpmBuildCommand()Ljava/lang/String;
    .locals 7

    .line 323
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v0

    const-string v1, "PATH"

    .line 324
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Path"

    .line 326
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "path"

    .line 328
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_3

    .line 333
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    .line 335
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 336
    new-instance v4, Ljava/io/File;

    const-string v5, "dos"

    .line 338
    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".exe"

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    const-string v6, "rpmbuild"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "rpm"

    return-object v0
.end method

.method public setCleanBuildDir(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->cleanBuildDir:Z

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->command:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/io/File;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->error:Ljava/io/File;

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->failOnError:Z

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->output:Ljava/io/File;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->quiet:Z

    return-void
.end method

.method public setRemoveSource(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSource:Z

    return-void
.end method

.method public setRemoveSpec(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->removeSpec:Z

    return-void
.end method

.method public setRpmBuildCommand(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->rpmBuildCommand:Ljava/lang/String;

    return-void
.end method

.method public setSpecFile(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->specFile:Ljava/lang/String;

    return-void

    .line 231
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "You must specify a spec file"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setTopDir(Ljava/io/File;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Rpm;->topDir:Ljava/io/File;

    return-void
.end method
