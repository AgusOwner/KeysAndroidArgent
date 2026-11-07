.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;
.super Lorg/apache/tools/ant/Task;
.source "BorlandGenerateClient.java"


# static fields
.field static final FORK_MODE:Ljava/lang/String; = "fork"

.field static final JAVA_MODE:Ljava/lang/String; = "java"


# instance fields
.field classpath:Lorg/apache/tools/ant/types/Path;

.field clientjarfile:Ljava/io/File;

.field debug:Z

.field ejbjarfile:Ljava/io/File;

.field mode:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->debug:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    const-string v0, "fork"

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->mode:Ljava/lang/String;

    const/4 v0, 0x4

    .line 62
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "invalid or missing client jar file."

    const/4 v1, 0x3

    .line 150
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "client.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->mode:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "mode is null default mode  is java"

    .line 159
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;)V

    const-string v0, "java"

    .line 160
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->setMode(Ljava/lang/String;)V

    .line 163
    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "version %d is not supported"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 167
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "client jar file is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;)V

    const-string v0, "fork"

    .line 169
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->executeFork()V

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->executeJava()V

    :goto_1
    return-void

    .line 146
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "invalid ejb jar file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected executeFork()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 227
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->executeForkV4()V

    .line 230
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->executeForkV5()V

    :cond_1
    return-void
.end method

.method protected executeForkV4()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    :try_start_0
    const-string v0, "mode : fork 4"

    const/4 v1, 0x4

    .line 241
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;I)V

    .line 243
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 244
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setDir(Ljava/io/File;)V

    const-string v1, "iastool"

    .line 245
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "generateclient"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 247
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->debug:Z

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-trace"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-short"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-jarfile"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-single"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-clientjarfile"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string v1, "Calling iastool"

    const/4 v2, 0x3

    .line 260
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Exception while calling generateclient"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected executeForkV5()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    :try_start_0
    const-string v0, "mode : fork 5"

    const/4 v1, 0x4

    .line 274
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;I)V

    .line 275
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 276
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setDir(Ljava/io/File;)V

    const-string v1, "iastool"

    .line 277
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 278
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->debug:Z

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-debug"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-genclient"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-jars"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-target"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-cp"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string v1, "Calling iastool"

    const/4 v2, 0x3

    .line 291
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Exception while calling generateclient"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected executeJava()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "mode : java"

    .line 188
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 191
    new-instance v1, Ljava/io/File;

    const-string v3, "."

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setDir(Ljava/io/File;)V

    const-string v1, "com.inprise.server.commandline.EJBUtilities"

    .line 192
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 198
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 199
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "generateclient"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 200
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->debug:Z

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-trace"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-short"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-jarfile"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-single"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-clientjarfile"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string v1, "Calling EJBUtilities"

    const/4 v2, 0x3

    .line 213
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->log(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V

    return-void

    .line 183
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "java mode is supported only for previous version <= %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Exception while calling generateclient"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setClientjar(Ljava/io/File;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->clientjarfile:Ljava/io/File;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->debug:Z

    return-void
.end method

.method public setEjbjar(Ljava/io/File;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->ejbjarfile:Ljava/io/File;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->mode:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 70
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->version:I

    return-void
.end method
