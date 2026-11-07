.class public Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "JlinkTask.java"


# instance fields
.field private addfiles:Lorg/apache/tools/ant/types/Path;

.field private compress:Z

.field private mergefiles:Lorg/apache/tools/ant/types/Path;

.field private outfile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    .line 61
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    return-void
.end method

.method private haveAddFiles()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveEntries(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    return v0
.end method

.method private haveEntries(Lorg/apache/tools/ant/types/Path;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private haveMergeFiles()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveEntries(Lorg/apache/tools/ant/types/Path;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createAddfiles()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createMergefiles()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 140
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveAddFiles()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveMergeFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "addfiles or mergefiles required! Please set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linking:     "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compression: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;I)V

    .line 146
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;-><init>()V

    .line 147
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->setOutfile(Ljava/lang/String;)V

    .line 148
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->setCompression(Z)V

    .line 149
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveMergeFiles()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merge files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;I)V

    .line 151
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addMergeFiles([Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->haveAddFiles()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->log(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addAddFiles([Ljava/lang/String;)V

    .line 158
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->link()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 137
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "outfile attribute is required! Please set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddfiles(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->addfiles:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setCompress(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->compress:Z

    return-void
.end method

.method public setMergefiles(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->mergefiles:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setOutfile(Ljava/io/File;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/JlinkTask;->outfile:Ljava/io/File;

    return-void
.end method
