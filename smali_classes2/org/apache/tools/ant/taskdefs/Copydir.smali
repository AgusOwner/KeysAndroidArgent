.class public Lorg/apache/tools/ant/taskdefs/Copydir;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Copydir.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private destDir:Ljava/io/File;

.field private filecopyList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filtering:Z

.field private flatten:Z

.field private forceOverwrite:Z

.field private srcDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filtering:Z

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->flatten:Z

    .line 45
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    return-void
.end method

.method private scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V
    .locals 9

    .line 148
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    .line 149
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->flatten:Z

    if-eqz v4, :cond_0

    .line 152
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    :goto_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    if-nez v2, :cond_1

    .line 157
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    .line 158
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, " to "

    const-string v1, "Copying "

    const-string v2, "DEPRECATED - The copydir task is deprecated.  Use copy instead."

    .line 100
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Copydir;->log(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    if-eqz v2, :cond_5

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    if-eqz v2, :cond_3

    .line 117
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "Warning: src == dest"

    .line 118
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Copydir;->log(Ljava/lang/String;I)V

    .line 121
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    invoke-super {p0, v2}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 124
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v5, v2}, Lorg/apache/tools/ant/taskdefs/Copydir;->scanDir(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "s"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Copydir;->log(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filtering:Z

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    invoke-virtual {v4, v3, v2, v5, v6}, Lorg/apache/tools/ant/Project;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 136
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " due to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filecopyList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    throw v0

    .line 113
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The dest attribute must be set."

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 108
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "srcdir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 103
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "src attribute must be set!"

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copydir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->destDir:Ljava/io/File;

    return-void
.end method

.method public setFiltering(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->filtering:Z

    return-void
.end method

.method public setFlatten(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->flatten:Z

    return-void
.end method

.method public setForceoverwrite(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->forceOverwrite:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copydir;->srcDir:Ljava/io/File;

    return-void
.end method
