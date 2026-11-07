.class public Lorg/apache/tools/ant/taskdefs/Delete;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Delete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;
    }
.end annotation


# static fields
.field private static final EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final REVERSE_FILESYSTEM:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;


# instance fields
.field private deleteOnExit:Z

.field protected dir:Ljava/io/File;

.field private failonerror:Z

.field protected file:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field protected includeEmpty:Z

.field private performGc:Z

.field private quiet:Z

.field private rcs:Lorg/apache/tools/ant/types/resources/Resources;

.field private removeNotFollowedSymlinks:Z

.field protected usedMatchingTask:Z

.field private verbosity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;

    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;-><init>(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->REVERSE_FILESYSTEM:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 83
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 84
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    .line 118
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 121
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    const/4 v2, 0x3

    .line 124
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 125
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    const/4 v2, 0x1

    .line 126
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    .line 127
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->deleteOnExit:Z

    .line 128
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->removeNotFollowedSymlinks:Z

    .line 129
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    const-string v0, "windows"

    .line 130
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->performGc:Z

    return-void
.end method

.method private delete(Ljava/io/File;)Z
    .locals 4

    .line 791
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->performGc:Z

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 792
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->deleteOnExit:Z

    if-eqz v0, :cond_1

    .line 793
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 794
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", calling deleteOnExit. This attempts to delete the file when the Ant jvm has exited and might not succeed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 797
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method private handle(Ljava/lang/Exception;)V
    .locals 1

    .line 779
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    if-eqz v0, :cond_1

    .line 780
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/tools/ant/BuildException;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    throw p1

    .line 782
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private handle(Ljava/lang/String;)V
    .locals 1

    .line 775
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/Exception;)V

    return-void
.end method

.method private isDanglingSymlink(Ljava/io/File;)Z
    .locals 2

    .line 879
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 884
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 576
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 409
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V

    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 508
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V

    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 552
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V

    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 497
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V

    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 464
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V

    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 541
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V

    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 530
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V

    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 486
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 453
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V

    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 564
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V

    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 442
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V

    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 431
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V

    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 420
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V

    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 519
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V

    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 398
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V

    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 475
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V

    return-void
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 272
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 282
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 252
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 262
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 292
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 586
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 588
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    :goto_0
    const-string v2, "DEPRECATED - Use of the implicit FileSet is deprecated.  Use a nested fileset element instead."

    .line 587
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 591
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 592
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one of the file or dir attributes, or a nested resource collection, must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 597
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "quiet and failonerror cannot both be set to true"

    .line 598
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 602
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    const-string v2, " which looks like a broken symlink."

    if-eqz v0, :cond_c

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "Unable to delete file "

    if-eqz v0, :cond_8

    .line 604
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Directory "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " cannot be removed using the file attribute.  Use dir instead."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 605
    :goto_3
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 609
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Deleting: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 615
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->isDanglingSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Trying to delete file "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v4, :cond_9

    move v4, v1

    goto :goto_4

    :cond_9
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 616
    :goto_4
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_6

    .line 623
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Could not find file "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to delete."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 623
    :goto_5
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 629
    :cond_c
    :goto_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    if-eqz v0, :cond_10

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    if-nez v3, :cond_10

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 638
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    if-ne v0, v1, :cond_d

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Deleting directory "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;)V

    .line 641
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->removeDir(Ljava/io/File;)V

    goto :goto_8

    .line 642
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->isDanglingSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Trying to delete directory "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v2, :cond_f

    move v2, v1

    goto :goto_7

    :cond_f
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 643
    :goto_7
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 646
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete directory "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    .line 651
    :cond_10
    :goto_8
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    .line 652
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    const/4 v2, 0x1

    .line 653
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 654
    new-instance v3, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    .line 655
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 656
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 658
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 660
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v2

    .line 661
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 662
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    .line 665
    :goto_9
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/FileSet;

    .line 666
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    if-nez v6, :cond_13

    const-string v6, "Deleting fileset with no project specified; assuming executing project"

    .line 667
    invoke-virtual {p0, v6, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 669
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/FileSet;

    .line 670
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 672
    :cond_13
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/FileSet;->getDir()Ljava/io/File;

    move-result-object v6

    .line 673
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/FileSet;->getErrorOnMissingDir()Z

    move-result v7

    if-nez v7, :cond_14

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v6, :cond_19

    .line 678
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_15

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Directory does not exist: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_a

    .line 681
    :cond_15
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v5

    .line 685
    invoke-virtual {v5}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v7

    .line 686
    new-instance v8, Lorg/apache/tools/ant/taskdefs/Delete$1;

    invoke-direct {v8, p0, v7, v6}, Lorg/apache/tools/ant/taskdefs/Delete$1;-><init>(Lorg/apache/tools/ant/taskdefs/Delete;[Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 703
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    if-eqz v7, :cond_16

    .line 704
    new-instance v7, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    .line 705
    invoke-virtual {v5}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v6, v9}, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3, v7}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 708
    :cond_16
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Delete;->removeNotFollowedSymlinks:Z

    if-eqz v6, :cond_12

    .line 709
    invoke-virtual {v5}, Lorg/apache/tools/ant/DirectoryScanner;->getNotFollowedSymlinks()[Ljava/lang/String;

    move-result-object v5

    .line 710
    array-length v6, v5

    if-lez v6, :cond_12

    .line 711
    array-length v6, v5

    new-array v7, v6, [Ljava/lang/String;

    .line 712
    array-length v8, v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v5, v9

    :goto_b
    if-ge v5, v6, :cond_12

    .line 714
    aget-object v8, v7, v5

    new-array v10, v9, [Ljava/lang/String;

    .line 715
    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    .line 716
    invoke-static {v8}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v10

    if-nez v10, :cond_17

    goto :goto_c

    .line 721
    :cond_17
    invoke-interface {v8}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_18

    .line 723
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Could not delete symbolic link at "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    :cond_18
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 677
    :cond_19
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File or Resource without directory or file specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1a
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 731
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v1, :cond_1b

    .line 733
    new-instance v1, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 734
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Delete;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 735
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 736
    new-instance v3, Lorg/apache/tools/ant/types/resources/Sort;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/resources/Sort;-><init>()V

    .line 737
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Delete;->REVERSE_FILESYSTEM:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/resources/Sort;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    .line 738
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/resources/Sort;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 739
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 742
    :cond_1b
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->isFilesystemOnly()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 743
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 746
    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_d

    .line 750
    :cond_1d
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1c

    .line 751
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 752
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    if-eqz v3, :cond_1c

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "directory "

    goto :goto_e

    :cond_1f
    const-string v4, "file "

    :goto_e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_d

    .line 759
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handles only filesystem resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_21
    if-eqz v2, :cond_22

    goto :goto_f

    :catchall_0
    move-exception v0

    goto :goto_10

    :catch_0
    move-exception v0

    .line 762
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_22

    .line 765
    :goto_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_22
    return-void

    :goto_10
    if-eqz v2, :cond_23

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 767
    :cond_23
    throw v0
.end method

.method protected removeDir(Ljava/io/File;)V
    .locals 6

    .line 811
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 815
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 816
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->removeDir(Ljava/io/File;)V

    goto :goto_2

    .line 820
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Deleting "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :cond_2
    iget v5, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    :goto_1
    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 821
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete file "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 827
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to delete directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected removeFiles(Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 840
    array-length v0, p2

    const/4 v1, 0x0

    const-string v2, "Deleting "

    const/4 v3, 0x3

    if-lez v0, :cond_3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " files from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 842
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 841
    :goto_0
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 843
    array-length v0, p2

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_3

    aget-object v5, p2, v4

    .line 844
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 846
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    iget v7, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 845
    :goto_2
    invoke-virtual {p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 847
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Unable to delete file "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 853
    :cond_3
    array-length p2, p3

    if-lez p2, :cond_b

    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    if-eqz p2, :cond_b

    .line 855
    array-length p2, p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_3
    if-ltz p2, :cond_8

    .line 856
    new-instance v4, Ljava/io/File;

    aget-object v5, p3, p2

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 858
    array-length v5, v5

    if-nez v5, :cond_7

    .line 859
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 860
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    iget v6, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 859
    :goto_4
    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 861
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 862
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to delete directory "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :cond_7
    :goto_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_8
    if-lez v1, :cond_b

    .line 870
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Deleted "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " director"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-ne v1, v0, :cond_9

    const-string p3, "y"

    goto :goto_6

    :cond_9
    const-string p3, "ies"

    .line 871
    :goto_6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " form "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 872
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 873
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz p2, :cond_a

    goto :goto_7

    :cond_a
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 870
    :goto_7
    invoke-virtual {p0, p1, v3}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 365
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setCaseSensitive(Z)V

    return-void
.end method

.method public setDefaultexcludes(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 329
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setDefaultexcludes(Z)V

    return-void
.end method

.method public setDeleteOnExit(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->deleteOnExit:Z

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 316
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setExcludes(Ljava/lang/String;)V

    return-void
.end method

.method public setExcludesfile(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 353
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setExcludesfile(Ljava/io/File;)V

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    return-void
.end method

.method public setFollowSymlinks(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 376
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setFollowSymlinks(Z)V

    return-void
.end method

.method public setIncludeEmptyDirs(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 304
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setIncludes(Ljava/lang/String;)V

    return-void
.end method

.method public setIncludesfile(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 341
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setIncludesfile(Ljava/io/File;)V

    return-void
.end method

.method public setPerformGcOnFailedDelete(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->performGc:Z

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    :cond_0
    return-void
.end method

.method public setRemoveNotFollowedSymlinks(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->removeNotFollowedSymlinks:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 158
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 160
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    :goto_0
    return-void
.end method
