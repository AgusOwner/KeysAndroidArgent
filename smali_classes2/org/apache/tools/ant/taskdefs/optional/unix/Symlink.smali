.class public Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;
.super Lorg/apache/tools/ant/dispatch/DispatchTask;
.source "Symlink.java"


# instance fields
.field private executing:Z

.field private failonerror:Z

.field private fileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private link:Ljava/lang/String;

.field private linkFileName:Ljava/lang/String;

.field private overwrite:Z

.field private resource:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$FXI71IL-u7K3v79N2wK7KCwB1D4([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/dispatch/DispatchTask;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z

    return-void
.end method

.method private static deleteSymLink(Ljava/nio/file/Path;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 596
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not delete symlink at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteSymlink(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->deleteSymLink(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static deleteSymlink(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 374
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->deleteSymlink(Ljava/io/File;)V

    return-void
.end method

.method private doLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 443
    invoke-static {p2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    .line 444
    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    .line 445
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, " -> "

    const-string v6, "Failed to create symlink "

    const-string v7, "Unable to create symlink "

    const/4 v8, 0x2

    const-string v9, " to target "

    const-string v10, "creating symlink "

    if-nez v3, :cond_1

    .line 450
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 451
    invoke-static {v1, v2, v0}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 453
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v8}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 461
    :cond_1
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->overwrite:Z

    if-nez v3, :cond_2

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping symlink creation, since file at "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " already exists and overwrite is set to false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    return-void

    .line 468
    :cond_2
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Deletion of file at "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed, while trying to overwrite it with a symlink"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    return-void

    .line 474
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " after removing original"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 476
    invoke-static {v1, v2, v0}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 478
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v1, :cond_4

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v8}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_1
    return-void

    .line 479
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private findLinks(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 499
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 501
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    .line 503
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda1;-><init>()V

    .line 504
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;Ljava/io/File;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$record$0(Ljava/io/File;)Ljava/util/List;
    .locals 0

    .line 255
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$record$1(Ljava/util/Map;Ljava/io/File;)V
    .locals 2

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 256
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadLinks(Ljava/util/List;)Ljava/util/Properties;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 538
    new-instance v2, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v2}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 539
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/types/FileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    const/4 v3, 0x0

    .line 540
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/DirectoryScanner;->setFollowSymlinks(Z)V

    .line 541
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 542
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    .line 545
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 546
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 548
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 549
    :try_start_0
    new-instance v10, Ljava/io/BufferedInputStream;

    .line 550
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v11, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v11}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 552
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x2

    .line 562
    :try_start_3
    new-instance v8, Ljava/io/PrintStream;

    new-instance v10, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v10, p0, v6}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-direct {v8, v10}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-string v10, "listing properties"

    invoke-virtual {v9, v8, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    const-string v8, "failed to log unshortened properties"

    .line 566
    invoke-virtual {p0, v8}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;)V

    .line 567
    new-instance v8, Ljava/io/PrintStream;

    new-instance v10, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v10, p0, v6}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-direct {v8, v10}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v8}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    .line 574
    :goto_1
    invoke-virtual {v9}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 575
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 576
    invoke-virtual {v9, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 575
    invoke-virtual {v0, v10, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 549
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 557
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to open "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or its parent dir; skipping it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    goto :goto_4

    .line 554
    :catch_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; skipping it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private setDefaults()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->resource:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->overwrite:Z

    const-string v0, "single"

    .line 287
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setAction(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private writePropertyFile(Ljava/util/Properties;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Symlinks from "

    .line 413
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 413
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 417
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p2
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Skipping deletion of "

    const-string v1, "Removing symlink: "

    .line 172
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v0, "Must define the link name for symlink!"

    .line 173
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    .line 176
    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 177
    invoke-static {v2}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " since it\'s not a symlink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    .line 184
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;)V

    .line 185
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->deleteSymLink(Ljava/nio/file/Path;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 187
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 190
    throw v0
.end method

.method public declared-synchronized execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z

    .line 138
    invoke-static {p0}, Lorg/apache/tools/ant/dispatch/DispatchUtils;->execute(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 140
    :try_start_3
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->executing:Z

    .line 141
    throw v0

    .line 133
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Infinite recursion detected in Symlink.execute()"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 122
    invoke-super {p0}, Lorg/apache/tools/ant/dispatch/DispatchTask;->init()V

    .line 123
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void
.end method

.method synthetic lambda$findLinks$3$org-apache-tools-ant-taskdefs-optional-unix-Symlink(Ljava/io/File;Ljava/util/Set;Ljava/lang/String;)V
    .locals 2

    .line 506
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 513
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IOException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " omitted"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$record$2$org-apache-tools-ant-taskdefs-optional-unix-Symlink(Ljava/io/File;Ljava/util/List;)V
    .locals 3

    .line 260
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 263
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 265
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Couldn\'t get canonical name of parent link"

    .line 267
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->writePropertyFile(Ljava/util/Properties;Ljava/io/File;)V

    return-void
.end method

.method public record()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fileset identifying links to record required"

    .line 243
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    .line 246
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Name of file to record links in required"

    .line 247
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    .line 251
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->findLinks(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 259
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 274
    throw v0
.end method

.method public recreate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "File set identifying link file(s) required for action recreate"

    .line 201
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->fileSets:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->loadLinks(Ljava/util/List;)Ljava/util/Properties;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    :try_start_2
    new-array v4, v4, [Ljava/lang/String;

    .line 209
    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not recreating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as it points to the correct target already"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 228
    :cond_1
    :try_start_3
    invoke-direct {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->doLink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check if path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is a symbolic link, linking to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 224
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 232
    throw v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Lorg/apache/tools/ant/dispatch/DispatchTask;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->failonerror:Z

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    return-void
.end method

.method public setLinkfilename(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->linkFileName:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->overwrite:Z

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->resource:Ljava/lang/String;

    return-void
.end method

.method public single()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->resource:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Must define the resource to symlink to!"

    .line 152
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->link:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, "Must define the link name for symlink!"

    .line 156
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->handleError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    .line 159
    :cond_1
    :try_start_2
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->doLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Symlink;->setDefaults()V

    .line 162
    throw v0
.end method
