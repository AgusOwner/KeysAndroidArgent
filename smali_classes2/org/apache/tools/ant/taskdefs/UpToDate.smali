.class public Lorg/apache/tools/ant/taskdefs/UpToDate;
.super Lorg/apache/tools/ant/Task;
.source "UpToDate.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private property:Ljava/lang/String;

.field private sourceFile:Ljava/io/File;

.field private sourceFileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private sourceResources:Lorg/apache/tools/ant/types/resources/Union;

.field private targetFile:Ljava/io/File;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFileSets:Ljava/util/List;

    .line 54
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceResources:Lorg/apache/tools/ant/types/resources/Union;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-void
.end method

.method private getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/MergingMapper;-><init>()V

    .line 268
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/MergingMapper;->setTo(Ljava/lang/String;)V

    return-object v0

    .line 271
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    return-object v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "true"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addSrcfiles(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createSrcResources()Lorg/apache/tools/ant/types/resources/Union;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceResources:Lorg/apache/tools/ant/types/resources/Union;

    return-object v0
.end method

.method public eval()Z
    .locals 8

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceResources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one srcfile or a nested <srcfiles> or <srcresources> element must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceResources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    if-nez v0, :cond_11

    .line 166
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->targetFile:Ljava/io/File;

    if-nez v0, :cond_5

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 167
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The targetfile attribute or a nested mapper element must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "The targetfile \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->targetFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" does not exist."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/UpToDate;->log(Ljava/lang/String;I)V

    return v2

    .line 179
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 180
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s not found."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 185
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    .line 186
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_a

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->targetFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_9

    :goto_3
    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_4

    .line 189
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 190
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 192
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v5

    const/4 v6, 0x0

    .line 190
    invoke-virtual {v0, v4, v6, v6, v5}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_3

    :goto_4
    if-nez v0, :cond_c

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is newer than (one of) its target(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/UpToDate;->log(Ljava/lang/String;I)V

    goto :goto_5

    :cond_b
    move v0, v3

    .line 206
    :cond_c
    :goto_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFileSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/FileSet;

    .line 207
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    .line 208
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/UpToDate;->scanDir(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    move v0, v2

    :cond_e
    if-eqz v0, :cond_10

    .line 215
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceResources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    .line 216
    array-length v4, v1

    if-lez v4, :cond_10

    .line 218
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    .line 217
    invoke-static {p0, v1, v0, v4}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_f

    move v2, v3

    :cond_f
    move v0, v2

    :cond_10
    return v0

    .line 162
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot specify both the srcfile attribute and a nested <srcfiles> or <srcresources> element."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->property:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->eval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->property:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "File \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->targetFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" is up-to-date."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/UpToDate;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "All target files are up-to-date."

    .line 243
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/UpToDate;->log(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute is required."

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected scanDir(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 3

    .line 256
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/UpToDate;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 262
    :goto_0
    invoke-virtual {v0, p2, p1, v2, v1}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->property:Ljava/lang/String;

    return-void
.end method

.method public setSrcfile(Ljava/io/File;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->sourceFile:Ljava/io/File;

    return-void
.end method

.method public setTargetFile(Ljava/io/File;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->targetFile:Ljava/io/File;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/UpToDate;->value:Ljava/lang/String;

    return-void
.end method
