.class public Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.super Lorg/apache/tools/ant/taskdefs/ExecTask;
.source "ExecuteOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;
    }
.end annotation


# instance fields
.field private addSourceFile:Z

.field protected destDir:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/AbstractFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private force:Z

.field private forwardSlash:Z

.field private ignoreMissing:Z

.field protected mapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private maxParallel:I

.field private parallel:Z

.field private relative:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private skipEmpty:Z

.field protected srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

.field protected srcIsFirst:Z

.field protected targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

.field protected type:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    .line 71
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    .line 72
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    const-string v2, "file"

    .line 73
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 75
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    .line 76
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 77
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 78
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->addSourceFile:Z

    .line 82
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    .line 83
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->ignoreMissing:Z

    .line 84
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->force:Z

    .line 89
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcIsFirst:Z

    return-void
.end method

.method private static insertTargetFiles([Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 742
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    array-length p3, p0

    invoke-static {p0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 746
    :cond_0
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    add-int v0, p2, v1

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private logSkippingFileset(Ljava/lang/String;Lorg/apache/tools/ant/DirectoryScanner;Ljava/io/File;)V
    .locals 3

    const-string v0, "dir"

    .line 501
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "file"

    .line 502
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skipping fileset for directory "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". It is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-lez v0, :cond_2

    const-string p2, "up to date."

    goto :goto_1

    :cond_2
    const-string p2, "empty."

    .line 505
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 506
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_2

    :cond_3
    const/4 p2, 0x3

    .line 504
    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;
    .locals 3

    .line 673
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->force:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addDirset(Lorg/apache/tools/ant/types/DirSet;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected checkConfiguration()V
    .locals 3

    const-string v0, "execon"

    .line 307
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "!! execon is deprecated. Use apply instead. !!"

    .line 308
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;)V

    .line 310
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->checkConfiguration()V

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no resources specified"

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 315
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 316
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "targetfile specified without mapper"

    .line 317
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 319
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 320
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest specified without mapper"

    .line 321
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 323
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_7

    .line 324
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    :cond_7
    return-void
.end method

.method protected createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>()V

    :goto_0
    return-object v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 285
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createSrcfile()Lorg/apache/tools/ant/types/Commandline$Marker;
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createMarker()Lorg/apache/tools/ant/types/Commandline$Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support multiple srcfile elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createTargetfile()Lorg/apache/tools/ant/types/Commandline$Marker;
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createMarker()Lorg/apache/tools/ant/types/Commandline$Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 272
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcIsFirst:Z

    return-object v0

    .line 268
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support multiple targetfile elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected getCommandline(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;
    .locals 2

    .line 635
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;
    .locals 13

    .line 517
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 520
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 521
    array-length v5, p1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 522
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v8, v7}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 524
    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 526
    iget-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    if-eqz v11, :cond_0

    goto :goto_2

    .line 529
    :cond_0
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    invoke-direct {v11, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 531
    :goto_2
    iget-boolean v11, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    if-eqz v11, :cond_1

    if-eq v0, v3, :cond_1

    .line 532
    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 534
    :cond_1
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 535
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-array v2, v4, [Ljava/lang/String;

    .line 542
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 544
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->addSourceFile:Z

    if-nez v2, :cond_5

    new-array p1, v4, [Ljava/lang/String;

    .line 547
    :cond_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v2

    .line 548
    array-length v5, v2

    array-length v6, p1

    add-int/2addr v5, v6

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/String;

    .line 551
    array-length v6, v2

    .line 552
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v7, :cond_6

    .line 553
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPosition()I

    move-result v6

    .line 555
    :cond_6
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v7, :cond_9

    .line 556
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPosition()I

    move-result v7

    if-lt v6, v7, :cond_8

    if-ne v6, v7, :cond_7

    .line 558
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcIsFirst:Z

    if-eqz v8, :cond_7

    goto :goto_3

    .line 580
    :cond_7
    invoke-static {v2, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 583
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 584
    invoke-virtual {v9}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v9

    .line 582
    invoke-static {v1, v5, v7, v8, v9}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->insertTargetFiles([Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    array-length v8, v1

    add-int/2addr v8, v7

    sub-int v9, v6, v7

    invoke-static {v2, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    array-length v7, p1

    add-int/2addr v7, v6

    array-length v8, v1

    add-int/2addr v7, v8

    array-length v8, v2

    sub-int/2addr v8, v6

    invoke-static {v2, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    array-length v1, v1

    add-int/2addr v6, v1

    goto :goto_4

    .line 562
    :cond_8
    :goto_3
    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    array-length v8, p1

    add-int/2addr v8, v6

    sub-int v9, v7, v6

    invoke-static {v2, v6, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    array-length v8, p1

    add-int/2addr v8, v7

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 571
    invoke-virtual {v9}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->targetFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    .line 572
    invoke-virtual {v10}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v10

    .line 569
    invoke-static {v1, v5, v8, v9, v10}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->insertTargetFiles([Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    array-length v8, p1

    add-int/2addr v8, v7

    array-length v1, v1

    add-int/2addr v8, v1

    array-length v1, v2

    sub-int/2addr v1, v7

    invoke-static {v2, v7, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 601
    :cond_9
    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    array-length v1, p1

    add-int/2addr v1, v6

    array-length v7, v2

    sub-int/2addr v7, v6

    invoke-static {v2, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    :goto_4
    array-length v1, p1

    if-ge v4, v1, :cond_e

    .line 610
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    if-eqz v1, :cond_a

    .line 611
    aget-object v1, p1, v4

    goto :goto_5

    .line 613
    :cond_a
    new-instance v1, Ljava/io/File;

    aget-object v2, p2, v4

    aget-object v7, p1, v4

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 615
    :goto_5
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    if-eqz v2, :cond_b

    if-eq v0, v3, :cond_b

    .line 616
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 618
    :cond_b
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    if-eqz v2, :cond_d

    .line 619
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 620
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline$Marker;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->srcFilePos:Lorg/apache/tools/ant/types/Commandline$Marker;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline$Marker;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    add-int v2, v6, v4

    .line 622
    aput-object v1, v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    return-object v5
.end method

.method protected getDirs(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;
    .locals 0

    .line 657
    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFiles(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;
    .locals 0

    .line 646
    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFilesAndDirs(Lorg/apache/tools/ant/types/FileList;)[Ljava/lang/String;
    .locals 2

    .line 669
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileList;->getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/FileList;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected runExec(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 360
    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 361
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 362
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->filesets:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "file"

    const-string v12, "dir"

    if-eqz v9, :cond_9

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/tools/ant/types/AbstractFileSet;

    .line 363
    iget-object v14, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    .line 364
    instance-of v15, v9, Lorg/apache/tools/ant/types/DirSet;

    if-eqz v15, :cond_1

    .line 365
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 366
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found a nested dirset but type is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Temporarily switching to type=\"dir\" on the assumption that you really did mean <dirset> not <fileset>."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v1, v14, v15}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    move-object v14, v12

    .line 372
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v15

    .line 374
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 376
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 377
    invoke-virtual {v1, v15, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getFiles(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    aget-object v11, v9, v13

    add-int/lit8 v7, v7, 0x1

    .line 379
    invoke-virtual {v3, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v4, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 383
    :cond_2
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 384
    invoke-virtual {v1, v15, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getDirs(Ljava/io/File;Lorg/apache/tools/ant/DirectoryScanner;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    add-int/lit8 v8, v8, 0x1

    .line 386
    invoke-virtual {v3, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v4, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 390
    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    if-eqz v9, :cond_4

    .line 391
    invoke-direct {v1, v14, v2, v15}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->logSkippingFileset(Ljava/lang/String;Lorg/apache/tools/ant/DirectoryScanner;Ljava/io/File;)V

    goto/16 :goto_0

    .line 394
    :cond_4
    iget-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    if-nez v2, :cond_0

    .line 395
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 396
    invoke-virtual {v1, v9, v15}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v10

    .line 397
    invoke-static {v10}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v1, v11, v12}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 398
    invoke-virtual {v0, v10}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 400
    iget-object v10, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v10, :cond_5

    .line 401
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 402
    iget-object v10, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v11, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v10, v11, v9}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 404
    :cond_5
    iget-object v9, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v9, :cond_6

    if-eqz v6, :cond_7

    .line 408
    :cond_6
    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 410
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    const/4 v6, 0x1

    goto :goto_3

    .line 413
    :cond_8
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 414
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0

    .line 418
    :cond_9
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v2, :cond_14

    .line 419
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/Resource;

    .line 421
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v9

    if-nez v9, :cond_a

    iget-boolean v9, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->ignoreMissing:Z

    if-eqz v9, :cond_a

    goto/16 :goto_7

    .line 426
    :cond_a
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v9

    .line 427
    const-class v11, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v5, v11}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v11, :cond_b

    .line 429
    invoke-static {v11}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v11

    .line 430
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v13

    if-nez v13, :cond_c

    .line 432
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    .line 436
    :cond_c
    :goto_5
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v13}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->restrict([Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_d

    goto :goto_7

    .line 440
    :cond_d
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v11

    if-nez v11, :cond_f

    :cond_e
    iget-object v11, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 442
    :cond_f
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    add-int/lit8 v8, v8, 0x1

    .line 448
    :goto_6
    invoke-virtual {v4, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 451
    iget-boolean v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    if-nez v5, :cond_13

    .line 452
    invoke-virtual {v1, v9, v13}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-static {v5}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    invoke-virtual {v1, v11, v13}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 454
    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 456
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v5, :cond_10

    .line 457
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 458
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v11, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v5, v11, v9}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 460
    :cond_10
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v5, :cond_11

    if-eqz v6, :cond_12

    .line 464
    :cond_11
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 466
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 468
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 469
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_13
    :goto_7
    const/4 v13, 0x3

    goto/16 :goto_4

    :cond_14
    const/4 v13, 0x3

    .line 473
    iget-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    if-eqz v2, :cond_16

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    if-nez v2, :cond_16

    .line 474
    :cond_15
    invoke-virtual {v1, v0, v3, v4}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runParallel(Lorg/apache/tools/ant/taskdefs/Execute;Ljava/util/Vector;Ljava/util/Vector;)V

    const/4 v6, 0x1

    :cond_16
    if-eqz v6, :cond_1a

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applied "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v7, v2, :cond_17

    const-string v2, "s"

    goto :goto_8

    :cond_17
    const-string v2, ""

    .line 479
    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " director"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v8, v2, :cond_18

    const-string v2, "ies"

    goto :goto_9

    :cond_18
    const-string v2, "y"

    .line 480
    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    if-eqz v2, :cond_19

    const/4 v11, 0x2

    goto :goto_a

    :cond_19
    move v11, v13

    .line 478
    :goto_a
    invoke-virtual {v1, v0, v11}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->logFlush()V

    .line 488
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppendProperties(Z)V

    .line 489
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setProperties()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 484
    :try_start_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->logFlush()V

    .line 488
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppendProperties(Z)V

    .line 489
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setProperties()V

    .line 490
    throw v0
.end method

.method protected runParallel(Lorg/apache/tools/ant/taskdefs/Execute;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/taskdefs/Execute;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 690
    invoke-virtual {p2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-array v2, v0, [Ljava/io/File;

    .line 691
    invoke-virtual {p3, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/io/File;

    .line 693
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lez v2, :cond_4

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 704
    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    move v2, v0

    :goto_0
    if-lez p2, :cond_6

    .line 707
    iget v5, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 708
    new-array v6, v5, [Ljava/lang/String;

    .line 709
    invoke-static {v1, v2, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    new-array v7, v5, [Ljava/io/File;

    .line 711
    invoke-static {p3, v2, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    invoke-virtual {p0, v6, v7}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;

    move-result-object v6

    .line 713
    invoke-static {v6}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 714
    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 715
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v6, :cond_1

    .line 716
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 717
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v6, v7, v3}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 719
    :cond_1
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v6, :cond_2

    if-lez v2, :cond_3

    .line 723
    :cond_2
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 725
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    sub-int/2addr p2, v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 694
    :cond_4
    :goto_1
    invoke-virtual {p0, v1, p3}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->getCommandline([Ljava/lang/String;[Ljava/io/File;)[Ljava/lang/String;

    move-result-object p2

    .line 695
    invoke-static {p2}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v4}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->log(Ljava/lang/String;I)V

    .line 696
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 697
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz p2, :cond_5

    .line 698
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setupRedirector()V

    .line 699
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {p2, p3, v3}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    .line 700
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 702
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V

    :cond_6
    return-void
.end method

.method public setAddsourcefile(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->addSourceFile:Z

    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->destDir:Ljava/io/File;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->force:Z

    return-void
.end method

.method public setForwardslash(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->forwardSlash:Z

    return-void
.end method

.method public setIgnoremissing(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->ignoreMissing:Z

    return-void
.end method

.method public setMaxParallel(I)V
    .locals 0

    .line 200
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->maxParallel:I

    return-void
.end method

.method public setParallel(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->parallel:Z

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->relative:Z

    return-void
.end method

.method public setSkipEmptyFilesets(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->skipEmpty:Z

    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn$FileDirBoth;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->type:Ljava/lang/String;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->verbose:Z

    return-void
.end method

.method protected setupRedirector()V
    .locals 2

    .line 345
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setupRedirector()V

    .line 346
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppendProperties(Z)V

    return-void
.end method
