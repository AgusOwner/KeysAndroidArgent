.class public Lorg/apache/tools/ant/taskdefs/Chmod;
.super Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.source "Chmod.java"


# instance fields
.field private defaultSet:Lorg/apache/tools/ant/types/FileSet;

.field private defaultSetDefined:Z

.field private havePerm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->havePerm:Z

    const-string v0, "chmod"

    .line 50
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setExecutable(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 51
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setParallel(Z)V

    .line 52
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setSkipEmptyFilesets(Z)V

    return-void
.end method


# virtual methods
.method protected checkConfiguration()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->havePerm:Z

    if-eqz v0, :cond_1

    .line 166
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Chmod;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 169
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->checkConfiguration()V

    return-void

    .line 162
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute perm not set in chmod"

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Execute failed: "

    .line 184
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->isValidOs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->prepareExec()Lorg/apache/tools/ant/taskdefs/Execute;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Commandline;

    .line 196
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 199
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Chmod;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->logFlush()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 202
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->logFlush()V

    .line 206
    throw v0

    .line 186
    :cond_1
    :goto_1
    :try_start_2
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->filesets:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 188
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->filesets:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 191
    :cond_3
    throw v0
.end method

.method protected isValidOs()Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getOs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getOsFamily()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unix"

    .line 268
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->isValidOs()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setAddsourcefile(Z)V
    .locals 2

    .line 256
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the addsourcefile attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 232
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the command attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setDefaultexcludes(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setExcludes(Ljava/lang/String;)V

    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 2

    .line 219
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the executable attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 73
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 74
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Chmod;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    return-void
.end method

.method public setPerm(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->havePerm:Z

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public setSkipEmptyFilesets(Z)V
    .locals 2

    .line 244
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the skipemptyfileset attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method
