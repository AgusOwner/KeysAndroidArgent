.class public Lorg/apache/tools/ant/taskdefs/Sync;
.super Lorg/apache/tools/ant/Task;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;,
        Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;
    }
.end annotation


# instance fields
.field private myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

.field private resources:Lorg/apache/tools/ant/types/resources/Resources;

.field private syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Z)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 601
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Assertion Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private configureTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->init()V

    return-void
.end method

.method private getExplicitPreserveEmptyDirs()Ljava/lang/Boolean;
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getPreserveEmptyDirs()Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getToDir()Ljava/io/File;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p4

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-lez p1, :cond_2

    .line 165
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Removed "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "NO "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to remove from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private removeEmptyDirectories(Ljava/io/File;ZLjava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 294
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 296
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 298
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    invoke-direct {p0, v5, v2, p3}, Lorg/apache/tools/ant/taskdefs/Sync;->removeEmptyDirectories(Ljava/io/File;ZLjava/util/Set;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    if-eqz v0, :cond_3

    .line 304
    array-length v3, v0

    if-lez v3, :cond_4

    .line 307
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 309
    array-length v0, v0

    if-ge v0, v2, :cond_6

    :cond_5
    if-eqz p2, :cond_6

    .line 310
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Removing empty directory: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    :cond_6
    return v1
.end method

.method private removeEmptyDirectories(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 334
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 336
    array-length v2, v2

    if-nez v2, :cond_0

    .line 337
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing empty directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private removeOrphanFiles(Ljava/util/Set;Ljava/io/File;Ljava/util/Set;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 196
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 198
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const-string v4, ""

    aput-object v4, v2, p1

    .line 201
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    if-eqz p1, :cond_2

    .line 202
    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->access$100(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;Z)Lorg/apache/tools/ant/types/FileSet;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 208
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v4

    .line 209
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/tools/ant/types/FileSet;->appendExcludes([Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/tools/ant/types/FileSet;->appendIncludes([Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getDefaultexcludes()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    .line 216
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v4

    .line 217
    array-length v5, v4

    if-lez v5, :cond_1

    .line 218
    new-instance v5, Lorg/apache/tools/ant/types/selectors/NoneSelector;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/selectors/NoneSelector;-><init>()V

    .line 219
    array-length v6, v4

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v4, v7

    .line 220
    invoke-virtual {v5, v8}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1, v5}, Lorg/apache/tools/ant/types/FileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object p1

    goto :goto_1

    .line 226
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {p1}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 227
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    .line 231
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->isCaseSensitiveFileSystem(Ljava/nio/file/Path;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lorg/apache/tools/ant/taskdefs/Sync$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/DirectoryScanner;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 233
    :goto_1
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/DirectoryScanner;->addExcludes([Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 236
    invoke-virtual {p1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v0

    :goto_2
    const/4 v6, 0x4

    if-ge v5, v4, :cond_3

    aget-object v7, v2, v5

    .line 237
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Removing orphan file: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 240
    aget v6, v1, v3

    add-int/2addr v6, v3

    aput v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 242
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object p1

    .line 248
    array-length v2, p1

    sub-int/2addr v2, v3

    :goto_3
    if-ltz v2, :cond_6

    .line 249
    new-instance v4, Ljava/io/File;

    aget-object v5, p1, v2

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 251
    array-length v5, v5

    if-ge v5, v3, :cond_5

    .line 252
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Removing orphan directory: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 253
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 254
    aget v4, v1, v0

    add-int/2addr v4, v3

    aput v4, v1, v0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 258
    :cond_6
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getExplicitPreserveEmptyDirs()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 259
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getIncludeEmptyDirs()Z

    move-result v0

    if-eq p1, v0, :cond_7

    .line 260
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    invoke-static {p1, v3}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->access$100(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;Z)Lorg/apache/tools/ant/types/FileSet;

    move-result-object p1

    .line 261
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 263
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object p1

    .line 264
    array-length v0, p1

    sub-int/2addr v0, v3

    :goto_4
    if-ltz v0, :cond_7

    .line 265
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v0

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    return-object v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 403
    instance-of v0, p1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 409
    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 410
    new-instance v1, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 411
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 412
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 414
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    :goto_0
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addPreserveInTarget(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    if-nez v0, :cond_0

    .line 444
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->syncTarget:Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;

    return-void

    .line 441
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "you must not specify multiple preserveintarget elements."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getToDir()Ljava/io/File;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->access$000(Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;)Ljava/util/Set;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 118
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PASS#1: Copying files to "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {p0, v3, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 119
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->execute()V

    if-eqz v2, :cond_2

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NO removing necessary in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    return-void

    .line 130
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "PASS#2: Removing orphan files from "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 134
    invoke-direct {p0, v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Sync;->removeOrphanFiles(Ljava/util/Set;Ljava/io/File;Ljava/util/Set;)[I

    move-result-object v1

    .line 136
    aget v3, v1, v4

    const-string v7, "dangling director"

    const-string v8, "y"

    const-string v9, "ies"

    invoke-direct {p0, v3, v7, v8, v9}, Lorg/apache/tools/ant/taskdefs/Sync;->logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    aget v1, v1, v5

    const-string v3, ""

    const-string v5, "s"

    const-string v7, "dangling file"

    invoke-direct {p0, v1, v7, v3, v5}, Lorg/apache/tools/ant/taskdefs/Sync;->logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getIncludeEmptyDirs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Sync;->getExplicitPreserveEmptyDirs()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_5

    .line 142
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PASS#3: Removing empty directories from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/Sync;->log(Ljava/lang/String;I)V

    .line 146
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->getIncludeEmptyDirs()Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    invoke-direct {p0, v0, v4, v2}, Lorg/apache/tools/ant/taskdefs/Sync;->removeEmptyDirectories(Ljava/io/File;ZLjava/util/Set;)I

    move-result v0

    goto :goto_2

    .line 151
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Sync;->removeEmptyDirectories(Ljava/util/Set;)I

    move-result v0

    :goto_2
    const-string v1, "empty director"

    .line 153
    invoke-direct {p0, v0, v1, v8, v9}, Lorg/apache/tools/ant/taskdefs/Sync;->logRemovedCount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    .line 81
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Sync;->configureTask(Lorg/apache/tools/ant/Task;)V

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setFiltering(Z)V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setIncludeEmptyDirs(Z)V

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setPreserveLastModified(Z)V

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setFailOnError(Z)V

    return-void
.end method

.method public setGranularity(J)V
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setGranularity(J)V

    return-void
.end method

.method public setIncludeEmptyDirs(Z)V
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setIncludeEmptyDirs(Z)V

    return-void
.end method

.method public setOverwrite(Z)V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setOverwrite(Z)V

    return-void
.end method

.method public setTodir(Ljava/io/File;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setTodir(Ljava/io/File;)V

    return-void
.end method

.method public setVerbose(Z)V
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync;->myCopy:Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy;->setVerbose(Z)V

    return-void
.end method
