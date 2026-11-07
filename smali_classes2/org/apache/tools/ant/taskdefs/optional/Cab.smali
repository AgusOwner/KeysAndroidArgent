.class public Lorg/apache/tools/ant/taskdefs/optional/Cab;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Cab.java"


# static fields
.field private static final DEFAULT_RESULT:I = -0x63

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected archiveType:Ljava/lang/String;

.field private baseDir:Ljava/io/File;

.field private cabFile:Ljava/io/File;

.field private cmdOptions:Ljava/lang/String;

.field private doCompress:Z

.field private doVerbose:Z

.field private filesetAdded:Z


# direct methods
.method public static synthetic $r8$lambda$RyRHuVi5mirIkoeEfHxz2eaLEt8(Ljava/io/File;)J
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doCompress:Z

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doVerbose:Z

    .line 55
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    const-string v0, "cab"

    .line 58
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->archiveType:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$execute$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$isUpToDate$1(JJ)Z
    .locals 0

    cmp-long p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->fileset:Lorg/apache/tools/ant/types/FileSet;

    return-void

    .line 109
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one nested fileset allowed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected appendFiles(Ljava/util/Vector;Lorg/apache/tools/ant/DirectoryScanner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/DirectoryScanner;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-virtual {p2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkConfiguration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "basedir attribute or one nested fileset is required!"

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "basedir does not exist!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 133
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->filesetAdded:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 134
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Both basedir attribute and a nested fileset is not allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    if-eqz v0, :cond_6

    return-void

    .line 138
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "cabfile attribute must be set!"

    .line 139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected createExec()Lorg/apache/tools/ant/taskdefs/ExecTask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    return-object v0
.end method

.method protected createListFile(Ljava/util/Vector;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\"%s\""

    .line 181
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public execute()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Error executing listcab; error code: "

    const-string v1, "Thread interrupted: "

    const-string v2, "@"

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->checkConfiguration()V

    .line 227
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getFileList()Ljava/util/Vector;

    move-result-object v3

    .line 230
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->isUpToDate(Ljava/util/Vector;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Building "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->archiveType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;)V

    const-string v4, "windows"

    .line 236
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, " "

    const-string v7, "Problem creating "

    const/4 v8, 0x1

    if-nez v4, :cond_2

    const-string v2, "Using listcab/libcabinet"

    const/4 v4, 0x3

    .line 237
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;I)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    new-instance v9, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda3;

    invoke-direct {v9, v2}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda3;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v9}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    const-string v3, "\n"

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "listcab"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 248
    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v10

    .line 246
    :goto_0
    invoke-static {v3, v9, v5, v10, v8}, Lorg/apache/tools/ant/taskdefs/Execute;->launch(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 255
    new-instance v8, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v8, p0, v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    .line 256
    new-instance v4, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v4, p0, v11}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    .line 257
    new-instance v9, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 258
    new-instance v10, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 261
    new-instance v11, Ljava/lang/Thread;

    invoke-direct {v11, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 262
    new-instance v11, Ljava/lang/Thread;

    invoke-direct {v11, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 265
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 266
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 273
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 276
    :try_start_2
    invoke-virtual {v9}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitFor()V

    .line 277
    invoke-virtual {v8}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->close()V

    .line 278
    invoke-virtual {v10}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitFor()V

    .line 279
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    const/16 v2, -0x63

    .line 281
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;)V

    .line 285
    :goto_2
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 289
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 295
    :cond_2
    :try_start_4
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->createListFile(Ljava/util/Vector;)Ljava/io/File;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->createExec()Lorg/apache/tools/ant/taskdefs/ExecTask;

    move-result-object v1

    .line 300
    invoke-virtual {v1, v8}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setFailonerror(Z)V

    .line 301
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setDir(Ljava/io/File;)V

    .line 303
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doVerbose:Z

    if-nez v3, :cond_3

    .line 304
    sget-object v8, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    const-string v10, "ant"

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v14}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v5

    .line 305
    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setOutput(Ljava/io/File;)V

    :cond_3
    const-string v3, "cabarc"

    .line 308
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-r"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 312
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doCompress:Z

    if-nez v3, :cond_4

    .line 313
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-m"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 317
    :cond_4
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cmdOptions:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 318
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cmdOptions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 321
    :cond_5
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 323
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    if-eqz v5, :cond_6

    .line 328
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 331
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_3
    return-void

    :catch_3
    move-exception v0

    .line 333
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getFileList()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 208
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 210
    invoke-super {p0, v1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->appendFiles(Ljava/util/Vector;Lorg/apache/tools/ant/DirectoryScanner;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->getDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    .line 213
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab;->appendFiles(Ljava/util/Vector;Lorg/apache/tools/ant/DirectoryScanner;)V

    :goto_0
    return-object v0
.end method

.method protected isUpToDate(Ljava/util/Vector;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 160
    invoke-virtual {p1}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Cab;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda1;-><init>()V

    .line 161
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Cab$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-interface {p1, v2}, Ljava/util/stream/LongStream;->allMatch(Ljava/util/function/LongPredicate;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$isUpToDate$0$org-apache-tools-ant-taskdefs-optional-Cab(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 160
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setBasedir(Ljava/io/File;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setCabfile(Ljava/io/File;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cabFile:Ljava/io/File;

    return-void
.end method

.method public setCompress(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doCompress:Z

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->cmdOptions:Ljava/lang/String;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Cab;->doVerbose:Z

    return-void
.end method
