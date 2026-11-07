.class public Lorg/apache/tools/ant/taskdefs/Copyfile;
.super Lorg/apache/tools/ant/Task;
.source "Copyfile.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private destFile:Ljava/io/File;

.field private filtering:Z

.field private forceOverwrite:Z

.field private srcFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->filtering:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->forceOverwrite:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "DEPRECATED - The copyfile task is deprecated.  Use copy instead."

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Copyfile;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->destFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 103
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Warning: src == dest"

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Copyfile;->log(Ljava/lang/String;I)V

    .line 107
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->forceOverwrite:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->destFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 110
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copyfile;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->destFile:Ljava/io/File;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->filtering:Z

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->forceOverwrite:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/tools/ant/Project;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error copying file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The dest attribute must be present."

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copyfile;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 94
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "src "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copyfile;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 89
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The src attribute must be present."

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copyfile;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->destFile:Ljava/io/File;

    return-void
.end method

.method public setFiltering(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->filtering:Z

    return-void
.end method

.method public setForceoverwrite(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->forceOverwrite:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copyfile;->srcFile:Ljava/io/File;

    return-void
.end method
