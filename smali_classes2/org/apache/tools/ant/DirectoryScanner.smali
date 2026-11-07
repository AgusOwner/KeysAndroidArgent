.class public Lorg/apache/tools/ant/DirectoryScanner;
.super Ljava/lang/Object;
.source "DirectoryScanner.java"

# interfaces
.implements Lorg/apache/tools/ant/FileScanner;
.implements Lorg/apache/tools/ant/types/selectors/SelectorScanner;
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# static fields
.field protected static final DEFAULTEXCLUDES:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOES_NOT_EXIST_POSTFIX:Ljava/lang/String; = " does not exist."

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final MAX_LEVELS_OF_SYMLINKS:I = 0x5

.field private static final ON_VMS:Z

.field private static final defaultExcludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private areNonPatternSetsReady:Z

.field protected basedir:Ljava/io/File;

.field protected dirsDeselected:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dirsExcluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dirsIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dirsNotIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected errorOnMissingDir:Z

.field protected everythingIncluded:Z

.field private final excludeNonPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            ">;"
        }
    .end annotation
.end field

.field private excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

.field protected excludes:[Ljava/lang/String;

.field protected filesDeselected:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected filesExcluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected filesIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected filesNotIncluded:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private followSymlinks:Z

.field protected haveSlowResults:Z

.field private illegal:Ljava/lang/IllegalStateException;

.field private final includeNonPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            ">;"
        }
    .end annotation
.end field

.field private includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

.field protected includes:[Ljava/lang/String;

.field protected isCaseSensitive:Z

.field private maxLevelsOfSymlinks:I

.field private final notFollowedSymlinks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scanLock:Ljava/lang/Object;

.field private final scannedDirs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scanning:Z

.field protected selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;

.field private final slowScanLock:Ljava/lang/Object;

.field private slowScanning:Z


# direct methods
.method public static synthetic $r8$lambda$uwgy0axyhl5fMFQ1MSgfbkF1pVI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/tools/ant/DirectoryScanner;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 29

    const-string v0, "openvms"

    .line 155
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/DirectoryScanner;->ON_VMS:Z

    const-string v1, "**/*~"

    const-string v2, "**/#*#"

    const-string v3, "**/.#*"

    const-string v4, "**/%*%"

    const-string v5, "**/._*"

    const-string v6, "**/CVS"

    const-string v7, "**/CVS/**"

    const-string v8, "**/.cvsignore"

    const-string v9, "**/SCCS"

    const-string v10, "**/SCCS/**"

    const-string v11, "**/vssver.scc"

    const-string v12, "**/.svn"

    const-string v13, "**/.svn/**"

    const-string v14, "**/.git"

    const-string v15, "**/.git/**"

    const-string v16, "**/.gitattributes"

    const-string v17, "**/.gitignore"

    const-string v18, "**/.gitmodules"

    const-string v19, "**/.hg"

    const-string v20, "**/.hg/**"

    const-string v21, "**/.hgignore"

    const-string v22, "**/.hgsub"

    const-string v23, "**/.hgsubstate"

    const-string v24, "**/.hgtags"

    const-string v25, "**/.bzr"

    const-string v26, "**/.bzr/**"

    const-string v27, "**/.bzrignore"

    const-string v28, "**/.DS_Store"

    .line 170
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    .line 230
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    .line 239
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->resetDefaultExcludes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;

    const/4 v1, 0x0

    .line 299
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    const/4 v2, 0x1

    .line 305
    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive:Z

    .line 311
    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->errorOnMissingDir:Z

    .line 318
    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    .line 321
    iput-boolean v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 330
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    .line 347
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    .line 364
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    .line 390
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z

    .line 397
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 404
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    .line 411
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 418
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    .line 425
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    const/4 v0, 0x5

    .line 433
    iput v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    .line 443
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    return-void
.end method

.method private accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z)V
    .locals 6

    .line 1315
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz p3, :cond_0

    .line 1316
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    :cond_0
    return-void
.end method

.method private accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z[Ljava/lang/String;Ljava/util/Deque;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            "Ljava/io/File;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1325
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz p3, :cond_0

    .line 1326
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1327
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    :cond_0
    return-void
.end method

.method private accountForIncludedFile(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V
    .locals 6

    .line 1302
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private accountForNotFollowedSymlink(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1332
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/DirectoryScanner;->accountForNotFollowedSymlink(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    return-void
.end method

.method private accountForNotFollowedSymlink(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V
    .locals 1

    .line 1336
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1338
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static addDefaultExclude(Ljava/lang/String;)Z
    .locals 1

    .line 588
    sget-object v0, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v0

    .line 589
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 590
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private causesIllegalSymlinkLoop(Ljava/lang/String;Ljava/io/File;Ljava/util/Deque;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    .line 1819
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_0

    .line 1821
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1823
    :goto_0
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-lt v2, v3, :cond_2

    .line 1824
    invoke-static {p3, p1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-lt v2, v3, :cond_2

    .line 1825
    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    sget-object v2, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, p2, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1829
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 1830
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1833
    invoke-interface {p3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "../"

    .line 1834
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1836
    sget-object v5, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p2, v4}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1837
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    if-le v4, v5, :cond_1

    .line 1839
    invoke-static {v1, v2}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 1847
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Caught error while checking for symbolic links"

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private checkIncludePatterns()V
    .locals 10

    .line 932
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 937
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 938
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->toString()Ljava/lang/String;

    move-result-object v6

    .line 939
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/DirectoryScanner;->shouldSkipPattern(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 940
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->rtrimWildcardTokens()Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 943
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    .line 944
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 943
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 945
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 946
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->shouldSkipPattern(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 947
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 951
    :cond_3
    sget-object v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v1, :cond_4

    const-string v0, ""

    .line 954
    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 957
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v1, :cond_5

    .line 959
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 961
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    const/4 v1, 0x0

    .line 966
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 967
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    .line 968
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v6

    .line 969
    iget-object v7, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v7, :cond_7

    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    .line 972
    :cond_7
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 979
    :try_start_1
    iget-object v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v8, :cond_8

    .line 980
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 981
    :cond_8
    sget-object v8, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 982
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v9

    .line 981
    invoke-virtual {v8, v1, v9}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 983
    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lorg/apache/tools/ant/DirectoryScanner;->ON_VMS:Z

    if-eqz v8, :cond_a

    .line 984
    :cond_9
    iget-object v7, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v5, v7, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->findFile(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 985
    iget-object v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v8, :cond_a

    .line 986
    sget-object v6, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v6, v8, v7}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 988
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 989
    new-instance v5, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v5, v6}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 994
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_5
    if-eqz v7, :cond_b

    .line 998
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_d

    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v8

    if-nez v8, :cond_d

    .line 999
    iget-object v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v5, v8, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->findFile(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1000
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1003
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v5, :cond_c

    .line 1004
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1005
    :cond_c
    sget-object v6, Lorg/apache/tools/ant/DirectoryScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v6, v5, v8}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object v6, v5

    .line 1007
    new-instance v5, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v5, v6}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :cond_d
    if-eqz v7, :cond_6

    .line 1011
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1012
    iget-boolean v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v5, v8}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->isSymlink(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1013
    invoke-direct {p0, v5, v7}, Lorg/apache/tools/ant/DirectoryScanner;->accountForNotFollowedSymlink(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    goto/16 :goto_3

    .line 1016
    :cond_e
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1017
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1018
    invoke-direct {p0, v5, v7, v2}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z)V

    goto/16 :goto_3

    .line 1020
    :cond_f
    invoke-direct {p0, v7, v5, v2}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    goto/16 :goto_3

    .line 1022
    :cond_10
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1023
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1024
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1025
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_7

    .line 1026
    :cond_11
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_6

    .line 1028
    invoke-direct {p0, v5, v7}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedFile(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    goto/16 :goto_3

    :cond_12
    :goto_8
    return-void
.end method

.method private declared-synchronized clearCaches()V
    .locals 1

    monitor-enter p0

    .line 1760
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1761
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 1762
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1763
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    const/4 v0, 0x0

    .line 1764
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .locals 3

    .line 1413
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    .line 1414
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1413
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda13;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    .line 1415
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .locals 1

    .line 1428
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchStartOf(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isMorePowerfulThanExcludes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isDeeper(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private fillNonPatternSet(Ljava/util/Map;[Ljava/lang/String;)[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPattern;"
        }
    .end annotation

    .line 1791
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1792
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 1793
    invoke-static {v4}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->hasWildcards(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1794
    new-instance v5, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-direct {v5, v4}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1796
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1797
    :goto_1
    new-instance v5, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v5, v4}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v2, [Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1800
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    return-object p1
.end method

.method public static getDefaultExcludes()[Ljava/lang/String;
    .locals 2

    .line 572
    sget-object v0, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    .line 573
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 574
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasBeenScanned(Ljava/lang/String;)Z
    .locals 1

    .line 1742
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isDeeper(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .locals 1

    const-string v0, "**"

    .line 1442
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->containsPattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1443
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->depth()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->depth()I

    move-result p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .locals 2

    .line 1501
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 1503
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1504
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1505
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1507
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1508
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .locals 2

    .line 1382
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 1384
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1385
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1386
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1388
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1389
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isMorePowerfulThanExcludes(Ljava/lang/String;)Z
    .locals 2

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1464
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1465
    invoke-static {p1}, Ljava/util/function/Predicate;->isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$addDefaultExcludes$10(I)[Ljava/lang/String;
    .locals 0

    .line 1718
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$addDefaultExcludes$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1713
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 1714
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addExcludes$2(I)[Ljava/lang/String;
    .locals 0

    .line 788
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$contentsExcluded$5(Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .locals 1

    const-string v0, "**"

    .line 1475
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setExcludes$1(I)[Ljava/lang/String;
    .locals 0

    .line 764
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$setIncludes$0(I)[Ljava/lang/String;
    .locals 0

    .line 742
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 536
    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 558
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 500
    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 518
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 462
    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 485
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 803
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 804
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 805
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private processIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1345
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1350
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1351
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1354
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_1

    .line 1356
    :cond_2
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 1358
    :goto_1
    iget-boolean p2, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private processSlowScan([Ljava/lang/String;)V
    .locals 7

    .line 1127
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1128
    new-instance v4, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v4, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/DirectoryScanner;->scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1130
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5, v4, v1}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeDefaultExclude(Ljava/lang/String;)Z
    .locals 1

    .line 605
    sget-object v0, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v0

    .line 606
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resetDefaultExcludes()V
    .locals 2

    .line 616
    sget-object v0, Lorg/apache/tools/ant/DirectoryScanner;->defaultExcludes:Ljava/util/Set;

    monitor-enter v0

    .line 617
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 618
    sget-object v1, Lorg/apache/tools/ant/DirectoryScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 619
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .locals 1

    .line 1136
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1187
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1189
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1191
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1192
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "%s is not a directory."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 1194
    :cond_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 1195
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "IO error scanning directory \'%s\'"

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 1190
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " does not exist."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1198
    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    return-void

    .line 1185
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "dir must not be null."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/tools/ant/types/selectors/TokenizedPath;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p4

    move-object/from16 v8, p5

    .line 1203
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v9, v1

    if-eqz p3, :cond_1

    .line 1209
    invoke-direct {v6, v9}, Lorg/apache/tools/ant/DirectoryScanner;->hasBeenScanned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1212
    :cond_1
    iget-boolean v1, v6, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    const/4 v10, 0x0

    if-nez v1, :cond_7

    .line 1213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    array-length v2, v0

    move v3, v10

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    if-nez v7, :cond_2

    new-array v5, v10, [Ljava/lang/String;

    .line 1217
    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    goto :goto_1

    .line 1219
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 1221
    :goto_1
    invoke-static {v5}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1223
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1225
    iget-object v4, v6, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 1226
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1227
    iget-object v4, v6, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1229
    :cond_4
    :goto_2
    invoke-direct {v6, v5, v11}, Lorg/apache/tools/ant/DirectoryScanner;->accountForNotFollowedSymlink(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_3

    .line 1231
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-array v0, v10, [Ljava/lang/String;

    .line 1234
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_4

    .line 1236
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :goto_4
    move-object v11, v0

    .line 1239
    array-length v12, v11

    move v13, v10

    :goto_5
    if-ge v13, v12, :cond_10

    aget-object v0, v11, v13

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1241
    new-instance v14, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    move-object/from16 v15, p2

    invoke-direct {v14, v15, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/lang/String;)V

    .line 1242
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 1247
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1248
    invoke-direct {v6, v14}, Lorg/apache/tools/ant/DirectoryScanner;->scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v10, [Ljava/lang/String;

    goto :goto_6

    .line 1252
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object v4, v2

    if-eqz v4, :cond_d

    .line 1255
    array-length v2, v4

    if-nez v2, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_8

    .line 1262
    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1264
    iget-boolean v2, v6, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-eqz v2, :cond_a

    .line 1265
    invoke-direct {v6, v0, v7, v8}, Lorg/apache/tools/ant/DirectoryScanner;->causesIllegalSymlinkLoop(Ljava/lang/String;Ljava/io/File;Ljava/util/Deque;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1267
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "skipping symbolic link "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- too many levels of symbolic links."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1267
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1271
    iget-object v0, v6, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1275
    :cond_a
    invoke-direct {v6, v14}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    move/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 p4, v5

    move-object/from16 v5, p5

    .line 1276
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedDir(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;Z[Ljava/lang/String;Ljava/util/Deque;)V

    goto :goto_7

    :cond_b
    move-object/from16 v16, v4

    move-object/from16 p4, v5

    .line 1279
    iput-boolean v10, v6, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 1280
    iget-object v0, v6, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 1281
    invoke-direct {v6, v14}, Lorg/apache/tools/ant/DirectoryScanner;->scanDuringFastScan(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v14

    move/from16 v3, p3

    move-object/from16 v4, v16

    move-object/from16 v5, p5

    .line 1282
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    :cond_c
    :goto_7
    if-nez p3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v14

    move/from16 v3, p3

    move-object/from16 v4, v16

    move-object/from16 v5, p5

    .line 1286
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z[Ljava/lang/String;Ljava/util/Deque;)V

    goto :goto_9

    :cond_d
    :goto_8
    move-object/from16 p4, v5

    .line 1256
    invoke-direct {v6, v14}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p4

    .line 1257
    invoke-direct {v6, v14, v0}, Lorg/apache/tools/ant/DirectoryScanner;->accountForIncludedFile(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/io/File;)V

    goto :goto_9

    .line 1259
    :cond_e
    iput-boolean v10, v6, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 1260
    iget-object v0, v6, Lorg/apache/tools/ant/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_f
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 1291
    :cond_10
    iget-boolean v0, v6, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-eqz v0, :cond_11

    .line 1292
    invoke-interface/range {p5 .. p5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private shouldSkipPattern(Ljava/lang/String;)Z
    .locals 4

    .line 1043
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v3

    .line 1045
    invoke-static {p1, v0, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1049
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public declared-synchronized addDefaultExcludes()V
    .locals 2

    monitor-enter p0

    .line 1713
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->getDefaultExcludes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1715
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1716
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1718
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addExcludes([Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 782
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 783
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 787
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 786
    invoke-static {v0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda6;-><init>()V

    .line 788
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    goto :goto_1

    .line 784
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->setExcludes([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 791
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized clearResults()V
    .locals 1

    monitor-enter p0

    .line 1056
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    .line 1057
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    .line 1058
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    .line 1059
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    .line 1060
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    .line 1061
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    .line 1062
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    .line 1063
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    .line 1064
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z

    .line 1065
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1066
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method contentsExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z
    .locals 2

    .line 1474
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda9;-><init>()V

    .line 1475
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda10;-><init>()V

    .line 1476
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda11;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V

    .line 1477
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method protected couldHoldIncluded(Ljava/lang/String;)Z
    .locals 1

    .line 1401
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    return p1
.end method

.method declared-synchronized ensureNonPatternSetsReady()V
    .locals 2

    monitor-enter p0

    .line 1774
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z

    if-nez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includeNonPatterns:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->fillNonPatternSet(Ljava/util/Map;[Ljava/lang/String;)[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 1776
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludeNonPatterns:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->fillNonPatternSet(Ljava/util/Map;[Ljava/lang/String;)[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludePatterns:[Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    const/4 v0, 0x1

    .line 1777
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->areNonPatternSetsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBasedir()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeselectedDirectories()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1686
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1687
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeselectedFiles()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1603
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1604
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExcludedDirectories()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1669
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1670
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExcludedFiles()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1586
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1587
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncludedDirectories()[Ljava/lang/String;
    .locals 2

    .line 1618
    monitor-enter p0

    .line 1619
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1622
    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1623
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0

    .line 1620
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 1623
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getIncludedDirsCount()I
    .locals 2

    monitor-enter p0

    .line 1634
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1635
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .locals 2

    .line 1535
    monitor-enter p0

    .line 1536
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1539
    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1540
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0

    .line 1537
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 1540
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getIncludedFilesCount()I
    .locals 2

    monitor-enter p0

    .line 1551
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1552
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call scan() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotFollowedSymlinks()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1701
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1702
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1703
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1704
    :try_start_2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1705
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1703
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotIncludedDirectories()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1652
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1653
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotIncludedFiles()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1569
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->slowScan()V

    .line 1570
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 2

    monitor-enter p0

    .line 1730
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getScannedDirs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1751
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scannedDirs:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized isCaseSensitive()Z
    .locals 1

    monitor-enter p0

    .line 666
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEverythingIncluded()Z
    .locals 1

    monitor-enter p0

    .line 829
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->everythingIncluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isExcluded(Ljava/lang/String;)Z
    .locals 1

    .line 1489
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized isFollowSymlinks()Z
    .locals 1

    monitor-enter p0

    .line 700
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isIncluded(Ljava/lang/String;)Z
    .locals 1

    .line 1370
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result p1

    return p1
.end method

.method protected isSelected(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 1520
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;

    if-eqz v0, :cond_1

    .line 1521
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/DirectoryScanner;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method synthetic lambda$contentsExcluded$6$org-apache-tools-ant-DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .locals 1

    .line 1477
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$couldHoldIncluded$4$org-apache-tools-ant-DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .locals 0

    .line 1415
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/DirectoryScanner;->couldHoldIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$isExcluded$7$org-apache-tools-ant-DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .locals 1

    .line 1508
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$isIncluded$3$org-apache-tools-ant-DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z
    .locals 1

    .line 1389
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$isSelected$8$org-apache-tools-ant-DirectoryScanner(Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/selectors/FileSelector;)Z
    .locals 1

    .line 1521
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-interface {p3, v0, p1, p2}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public scan()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "basedir "

    const-string v1, "basedir "

    .line 844
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    if-eqz v3, :cond_2

    .line 846
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_0

    .line 848
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    goto :goto_0

    .line 852
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_1

    .line 855
    monitor-exit v2

    return-void

    .line 853
    :cond_1
    throw v0

    :cond_2
    const/4 v3, 0x1

    .line 857
    iput-boolean v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 858
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 859
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    const/4 v4, 0x0

    .line 861
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v5, 0x0

    .line 862
    :try_start_4
    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    .line 863
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->clearResults()V

    .line 866
    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    if-nez v6, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    if-eqz v7, :cond_4

    new-array v6, v3, [Ljava/lang/String;

    const-string v8, "**"

    aput-object v8, v6, v4

    .line 867
    :cond_4
    iput-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    .line 868
    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    if-eqz v3, :cond_6

    new-array v6, v4, [Ljava/lang/String;

    .line 869
    :cond_6
    iput-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 871
    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v6, :cond_7

    iget-boolean v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z

    if-nez v8, :cond_7

    .line 872
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 873
    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->notFollowedSymlinks:Ljava/util/Set;

    iget-object v8, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 874
    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 877
    :cond_7
    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    if-nez v6, :cond_8

    if-eqz v7, :cond_c

    .line 880
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 918
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_5
    iput-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 883
    :cond_8
    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 884
    iget-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->errorOnMissingDir:Z

    if-eqz v0, :cond_9

    .line 885
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " does not exist."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    goto :goto_3

    .line 890
    :cond_9
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 918
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_7
    iput-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 892
    :cond_a
    :try_start_8
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_b

    .line 893
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not a directory."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    .line 897
    :cond_b
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->illegal:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_12

    .line 901
    :cond_c
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isIncluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 902
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DirectoryScanner;->isExcluded(Lorg/apache/tools/ant/types/selectors/TokenizedPath;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 903
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    const-string v0, ""

    .line 904
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 905
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 907
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 910
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 912
    :goto_4
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;->checkIncludePatterns()V

    .line 913
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;->clearCaches()V

    if-eqz v7, :cond_10

    move-object v0, v5

    goto :goto_5

    .line 914
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    if-eqz v3, :cond_11

    goto :goto_6

    .line 915
    :cond_11
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    :goto_6
    iput-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 916
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 918
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_9
    iput-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 898
    :cond_12
    :try_start_a
    throw v0

    :catchall_3
    move-exception v0

    .line 916
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    .line 918
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;

    .line 919
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_c
    iput-boolean v4, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanning:Z

    .line 921
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->scanLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 923
    throw v0

    :catchall_5
    move-exception v0

    .line 922
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    .line 858
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0
.end method

.method protected scandir(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1

    .line 1160
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-direct {v0, p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/tools/ant/DirectoryScanner;->scandir(Ljava/io/File;Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)V

    return-void
.end method

.method public declared-synchronized setBasedir(Ljava/io/File;)V
    .locals 0

    monitor-enter p0

    .line 645
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->basedir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBasedir(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 633
    :cond_0
    new-instance v0, Ljava/io/File;

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x5c

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 632
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized setCaseSensitive(Z)V
    .locals 0

    monitor-enter p0

    .line 678
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->isCaseSensitive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setErrorOnMissingDir(Z)V
    .locals 0

    .line 689
    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->errorOnMissingDir:Z

    return-void
.end method

.method public declared-synchronized setExcludes([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 761
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    goto :goto_0

    .line 763
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda2;-><init>()V

    .line 764
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFollowSymlinks(Z)V
    .locals 0

    monitor-enter p0

    .line 709
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->followSymlinks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIncludes([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 739
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    goto :goto_0

    .line 741
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda0;-><init>()V

    .line 742
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxLevelsOfSymlinks(I)V
    .locals 0

    .line 720
    iput p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->maxLevelsOfSymlinks:I

    return-void
.end method

.method public declared-synchronized setSelectors([Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 0

    monitor-enter p0

    .line 818
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner;->selectors:[Lorg/apache/tools/ant/types/selectors/FileSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected slowScan()V
    .locals 7

    .line 1078
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    if-eqz v1, :cond_0

    .line 1080
    monitor-exit v0

    return-void

    .line 1082
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    if-eqz v1, :cond_2

    .line 1083
    :catch_0
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_1

    .line 1085
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 1090
    :cond_1
    :try_start_2
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 1092
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 1093
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v0, 0x0

    .line 1095
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1098
    :try_start_4
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    if-nez v2, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz v3, :cond_4

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "**"

    aput-object v4, v2, v0

    .line 1099
    :cond_4
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    .line 1100
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    if-nez v2, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v4, :cond_6

    new-array v2, v0, [Ljava/lang/String;

    .line 1101
    :cond_6
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 1103
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1104
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1106
    iget-object v5, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1107
    iget-object v6, p0, Lorg/apache/tools/ant/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1109
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->ensureNonPatternSetsReady()V

    .line 1111
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/DirectoryScanner;->processSlowScan([Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/DirectoryScanner;->processSlowScan([Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;->clearCaches()V

    const/4 v2, 0x0

    if-eqz v3, :cond_7

    move-object v3, v2

    goto :goto_3

    .line 1114
    :cond_7
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    :goto_3
    iput-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->includes:[Ljava/lang/String;

    if-eqz v4, :cond_8

    goto :goto_4

    .line 1115
    :cond_8
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    :goto_4
    iput-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->excludes:[Ljava/lang/String;

    .line 1116
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1118
    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1119
    :try_start_5
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    .line 1120
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 1121
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1122
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    .line 1116
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    .line 1118
    iget-object v3, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1119
    :try_start_8
    iput-boolean v1, p0, Lorg/apache/tools/ant/DirectoryScanner;->haveSlowResults:Z

    .line 1120
    iput-boolean v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanning:Z

    .line 1121
    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner;->slowScanLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1122
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1123
    throw v2

    :catchall_3
    move-exception v0

    .line 1122
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 1093
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method
