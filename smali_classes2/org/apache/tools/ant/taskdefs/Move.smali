.class public Lorg/apache/tools/ant/taskdefs/Move;
.super Lorg/apache/tools/ant/taskdefs/Copy;
.source "Move.java"


# instance fields
.field private performGc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;-><init>()V

    const-string v0, "windows"

    .line 54
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->setOverwrite(Z)V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;ZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    const-string v13, " to "

    const-string v0, "Copying "

    .line 237
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 239
    new-instance v5, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>()V

    if-eqz p3, :cond_0

    .line 241
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 243
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterSets()Ljava/util/Vector;

    move-result-object v0

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;

    invoke-direct {v2, v5}, Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/FilterSetCollection;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    .line 245
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterChains()Ljava/util/Vector;

    move-result-object v6

    iget-boolean v7, v1, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    .line 247
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getPreserveLastModified()Z

    move-result v8

    const/4 v9, 0x0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getEncoding()Ljava/lang/String;

    move-result-object v10

    .line 250
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getOutputEncoding()Ljava/lang/String;

    move-result-object v11

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getForce()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v1, v13

    move v13, v0

    .line 244
    :try_start_1
    invoke-virtual/range {v2 .. v13}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v13

    .line 253
    :goto_0
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to copy "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " due to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Move;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;ZZ)V
    .locals 3

    const-string v0, " to "

    const-string v1, "Attempting to rename: "

    .line 212
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 213
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/tools/ant/taskdefs/Move;->renameFile(Ljava/io/File;Ljava/io/File;ZZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Move;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p2

    iget-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {p2, p1, p3}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Unable to delete file %s"

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p3

    .line 215
    new-instance p4, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to rename "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " due to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p2

    invoke-direct {p4, p1, p3, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p4
.end method


# virtual methods
.method protected deleteDir(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Move;->deleteDir(Ljava/io/File;Z)V

    return-void
.end method

.method protected deleteDir(Ljava/io/File;Z)V
    .locals 5

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 302
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Move;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 306
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p1

    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {p1, v4, p2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 307
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 308
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Unable to delete file %s"

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 310
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "UNEXPECTED ERROR - The file %s should not exist!"

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 315
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Deleting directory "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p2

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 317
    :cond_4
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 318
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unable to delete directory %s"

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method protected doFileOperations()V
    .locals 14

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const-string v1, " to "

    if-lez v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 115
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to rename dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    .line 116
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Move;->filtering:Z

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-virtual {p0, v3, v2, v4, v5}, Lorg/apache/tools/ant/taskdefs/Move;->renameFile(Ljava/io/File;Ljava/io/File;ZZ)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 123
    new-instance v4, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 125
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 126
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Move;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 127
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v5, v4}, Lorg/apache/tools/ant/taskdefs/Move;->scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to rename dir "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const-string v2, "Skipping self-move of "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_6

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Moving "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v0, v4, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, "s"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    .line 135
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 139
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 142
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move v8, v3

    move v9, v8

    .line 143
    :goto_2
    array-length v10, v5

    if-ge v8, v10, :cond_3

    .line 144
    aget-object v10, v5, v8

    .line 146
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v9, v10}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    move v9, v4

    goto :goto_3

    .line 154
    :cond_4
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v8, 0x1

    .line 155
    array-length v12, v5

    if-ne v10, v12, :cond_5

    if-nez v9, :cond_5

    .line 158
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Move;->filtering:Z

    iget-boolean v12, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-direct {p0, v7, v11, v10, v12}, Lorg/apache/tools/ant/taskdefs/Move;->moveFile(Ljava/io/File;Ljava/io/File;ZZ)V

    goto :goto_3

    .line 160
    :cond_5
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Move;->filtering:Z

    iget-boolean v12, p0, Lorg/apache/tools/ant/taskdefs/Move;->forceOverwrite:Z

    invoke-direct {p0, v7, v11, v10, v12}, Lorg/apache/tools/ant/taskdefs/Move;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 167
    :cond_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->includeEmpty:Z

    if-eqz v0, :cond_f

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v3

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 172
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v8, v6

    move v9, v3

    move v10, v9

    :goto_5
    if-ge v9, v8, :cond_b

    aget-object v11, v6, v9

    .line 173
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lorg/apache/tools/ant/taskdefs/Move;->verbosity:I

    invoke-virtual {p0, v10, v11}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    move v10, v4

    goto :goto_6

    .line 178
    :cond_8
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a

    .line 180
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_9

    .line 181
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Unable to create directory "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-virtual {p0, v11, v3}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 188
    :cond_b
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v10, :cond_7

    .line 189
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/taskdefs/Move;->okToDelete(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 190
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/taskdefs/Move;->deleteDir(Ljava/io/File;)V

    goto :goto_4

    :cond_c
    if-lez v5, :cond_f

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Moved "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " empty director"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Move;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    const-string v6, "y"

    const-string v7, "ies"

    if-ne v3, v4, :cond_d

    move-object v3, v6

    goto :goto_7

    :cond_d
    move-object v3, v7

    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne v5, v4, :cond_e

    goto :goto_8

    :cond_e
    move-object v6, v7

    .line 199
    :goto_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method protected okToDelete(Ljava/io/File;)Z
    .locals 6

    .line 264
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 270
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/taskdefs/Move;->okToDelete(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected renameFile(Ljava/io/File;Ljava/io/File;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 342
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_8

    if-nez p3, :cond_8

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterSets()Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 343
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFilterChains()Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 348
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result p3

    if-nez p3, :cond_3

    .line 349
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getForce()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 353
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p3, "failed to delete read-only destination file %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p3, "can\'t replace read-only destination file %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 362
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_4

    .line 363
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1

    .line 364
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 365
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 367
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 369
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Rename of "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is a no-op."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Move;->log(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    .line 373
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Move;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p3

    iget-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    invoke-virtual {p3, p2, p4}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    .line 375
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Unable to remove existing file %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 379
    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public setPerformGcOnFailedDelete(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Move;->performGc:Z

    return-void
.end method

.method protected validateAttributes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One and only one of tofile and todir must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    :goto_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->destDir:Ljava/io/File;

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->completeDirMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Move;->destFile:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move;->file:Ljava/io/File;

    goto :goto_3

    .line 95
    :cond_5
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->validateAttributes()V

    :goto_3
    return-void
.end method
