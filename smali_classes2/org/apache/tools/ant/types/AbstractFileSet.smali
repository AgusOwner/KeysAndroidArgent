.class public abstract Lorg/apache/tools/ant/types/AbstractFileSet;
.super Lorg/apache/tools/ant/types/DataType;
.source "AbstractFileSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/tools/ant/types/selectors/SelectorContainer;


# instance fields
.field private additionalPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PatternSet;",
            ">;"
        }
    .end annotation
.end field

.field private caseSensitive:Z

.field private defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

.field private dir:Ljava/io/File;

.field private directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

.field private errorOnMissingDir:Z

.field private fileAttributeUsed:Z

.field private followSymlinks:Z

.field private maxLevelsOfSymlinks:I

.field private selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultExcludes:Z


# direct methods
.method public static synthetic $r8$lambda$MKCxsedZUAhfaJpW6lcY0svUNok(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dfFHKot0q_wsJaXtZqaF549te1Y(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xKxGQnAE5oucAGeuIlaUL_7ykCU(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 78
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    const/4 v0, 0x5

    .line 81
    iput v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 78
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    const/4 v0, 0x5

    .line 81
    iput v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 99
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    .line 100
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 101
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 102
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    .line 103
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 104
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 105
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 106
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    .line 107
    iget v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    iput v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    .line 108
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method private dirAndFileAreMutuallyExclusive()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 995
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you can only specify one of the dir and file attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$dieOnCircularReference$2(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/DataType;)V
    .locals 0

    .line 988
    invoke-static {p2, p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method static synthetic lambda$dieOnCircularReference$3(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet;)V
    .locals 0

    .line 989
    invoke-static {p2, p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method static synthetic lambda$mergePatterns$1(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet;)V
    .locals 0

    .line 974
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/types/PatternSet;->append(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 0

    .line 895
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .locals 0

    .line 692
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .locals 0

    .line 791
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .locals 0

    .line 827
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .locals 0

    .line 782
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .locals 0

    .line 737
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .locals 0

    .line 818
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .locals 0

    .line 809
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addExecutable(Lorg/apache/tools/ant/types/selectors/ExecutableSelector;)V
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .locals 0

    .line 764
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .locals 0

    .line 728
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .locals 0

    .line 837
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .locals 0

    .line 719
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .locals 0

    .line 710
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .locals 0

    .line 701
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addOwnedBy(Lorg/apache/tools/ant/types/selectors/OwnedBySelector;)V
    .locals 0

    .line 869
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addPosixGroup(Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;)V
    .locals 0

    .line 877
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addPosixPermissions(Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;)V
    .locals 0

    .line 885
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .locals 0

    .line 800
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addReadable(Lorg/apache/tools/ant/types/selectors/ReadableSelector;)V
    .locals 0

    .line 841
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .locals 0

    .line 683
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .locals 0

    .line 746
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addSymlink(Lorg/apache/tools/ant/types/selectors/SymlinkSelector;)V
    .locals 0

    .line 861
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V
    .locals 0

    .line 773
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addWritable(Lorg/apache/tools/ant/types/selectors/WritableSelector;)V
    .locals 0

    .line 845
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public declared-synchronized appendExcludes([Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 322
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 323
    iget-object v3, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 325
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_1
    monitor-exit p0

    return-void

    .line 319
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendIncludes([Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 287
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 288
    iget-object v3, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    monitor-exit p0

    return-void

    .line 284
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 1

    monitor-enter p0

    .line 667
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 671
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    const/4 p1, 0x0

    .line 672
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    monitor-exit p0

    return-void

    .line 668
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 925
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    .line 926
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/PatternSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PatternSet;

    iput-object v1, v0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 927
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/types/PatternSet;

    .line 928
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 929
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 932
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 215
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 203
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    .line 180
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 181
    iput-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-object v0

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 981
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 982
    monitor-exit p0

    return-void

    .line 984
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda5;-><init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 988
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 989
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;-><init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    .line 990
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDefaultexcludes()Z
    .locals 1

    monitor-enter p0

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDefaultexcludes()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 380
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 168
    iget-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;
    .locals 1

    .line 489
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;
    .locals 4

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object p1

    return-object p1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 505
    iget-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    goto/16 :goto_3

    .line 507
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 512
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 517
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "%s is not a directory."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {p1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 520
    :cond_5
    :goto_1
    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 521
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    .line 522
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setFollowSymlinks(Z)V

    .line 523
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setErrorOnMissingDir(Z)V

    .line 524
    iget v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setMaxLevelsOfSymlinks(I)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-ne p1, v1, :cond_6

    move-object p1, v0

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    :goto_2
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    move-object p1, v0

    .line 527
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {p1}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    return-object p1

    .line 508
    :cond_7
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No directory specified for %s."

    new-array v2, v2, [Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {p1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 527
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getErrorOnMissingDir()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    return v0
.end method

.method public getMaxLevelsOfSymlinks()I
    .locals 1

    .line 460
    iget v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    return v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 2

    .line 585
    const-class v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/AbstractFileSet;

    return-object p1
.end method

.method public declared-synchronized getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .locals 1

    monitor-enter p0

    .line 639
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 642
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 643
    iget-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/ant/types/selectors/FileSelector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasPatterns()Z
    .locals 2

    monitor-enter p0

    .line 610
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->hasPatterns()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 613
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 614
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 615
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 614
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasSelectors()Z
    .locals 1

    monitor-enter p0

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->hasSelectors()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 600
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCaseSensitive()Z
    .locals 1

    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isCaseSensitive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 408
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 409
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFollowSymlinks()Z
    .locals 1

    monitor-enter p0

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isCaseSensitive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 437
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 438
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$hasPatterns$0$org-apache-tools-ant-types-AbstractFileSet(Lorg/apache/tools/ant/types/PatternSet;)Z
    .locals 1

    .line 615
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result p1

    return p1
.end method

.method public mergeExcludes(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .locals 1

    .line 957
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mergeIncludes(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .locals 1

    .line 945
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;
    .locals 3

    monitor-enter p0

    .line 969
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 972
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 973
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PatternSet;

    .line 974
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    new-instance v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized selectorCount()I
    .locals 1

    monitor-enter p0

    .line 625
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->selectorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 628
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 629
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectorElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 656
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 657
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaseSensitive(Z)V
    .locals 1

    monitor-enter p0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaultexcludes(Z)V
    .locals 1

    monitor-enter p0

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    const/4 p1, 0x0

    .line 367
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDir(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->fileAttributeUsed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dirAndFileAreMutuallyExclusive()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 145
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 140
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setErrorOnMissingDir(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    return-void
.end method

.method public declared-synchronized setExcludes(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setExcludes(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setExcludesfile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setExcludesfile(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFile(Ljava/io/File;)V
    .locals 3

    monitor-enter p0

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_3

    .line 242
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->fileAttributeUsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 247
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "setFile cannot be called twice with different arguments"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setDir(Ljava/io/File;)V

    .line 255
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->fileAttributeUsed:Z

    .line 256
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 252
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dirAndFileAreMutuallyExclusive()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 240
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFollowSymlinks(Z)V
    .locals 1

    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 419
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIncludes(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setIncludes(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIncludesfile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setIncludesfile(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxLevelsOfSymlinks(I)V
    .locals 0

    .line 449
    iput p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 125
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 122
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;)V
    .locals 1

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public declared-synchronized setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V
    .locals 3

    monitor-enter p0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 551
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    if-eqz p1, :cond_3

    .line 555
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/FileScanner;->setBasedir(Ljava/io/File;)V

    .line 557
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Setup scanner in dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/tools/ant/FileScanner;->setIncludes([Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/FileScanner;->setExcludes([Ljava/lang/String;)V

    .line 563
    instance-of v0, p1, Lorg/apache/tools/ant/types/selectors/SelectorScanner;

    if-eqz v0, :cond_1

    .line 564
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/types/selectors/SelectorScanner;

    .line 565
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/types/selectors/SelectorScanner;->setSelectors([Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 567
    :cond_1
    iget-boolean p2, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    if-eqz p2, :cond_2

    .line 568
    invoke-interface {p1}, Lorg/apache/tools/ant/FileScanner;->addDefaultExcludes()V

    .line 570
    :cond_2
    iget-boolean p2, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    invoke-interface {p1, p2}, Lorg/apache/tools/ant/FileScanner;->setCaseSensitive(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 553
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ds cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 905
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 908
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 909
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
