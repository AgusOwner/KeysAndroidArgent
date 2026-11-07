.class public Lorg/apache/tools/ant/taskdefs/Tar;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;,
        Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;,
        Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final FAIL:Ljava/lang/String; = "fail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GNU:Ljava/lang/String; = "gnu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OMIT:Ljava/lang/String; = "omit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRUNCATE:Ljava/lang/String; = "truncate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WARN:Ljava/lang/String; = "warn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field baseDir:Ljava/io/File;

.field private compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

.field private encoding:Ljava/lang/String;

.field filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

.field private longWarningGiven:Z

.field private final resourceCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field tarFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 110
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 113
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    .line 116
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    .line 125
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    return-void
.end method

.method private static getCanonicalPrefix(Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .locals 1

    .line 789
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object p0

    .line 791
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;
    .locals 4

    .line 728
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual {p0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object p0

    .line 731
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 732
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method protected static isFileFileSet(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .locals 1

    .line 717
    instance-of v0, p0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$check$0(Ljava/io/File;)Ljava/util/List;
    .locals 0

    .line 611
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected archiveIsUpToDate(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 3

    .line 559
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 560
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v1

    .line 559
    invoke-static {v0, p1, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result p1

    return p1
.end method

.method protected archiveIsUpToDate([Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->archiveIsUpToDate([Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method protected archiveIsUpToDate([Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 546
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 547
    new-instance v1, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/MergingMapper;-><init>()V

    .line 548
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/MergingMapper;->setTo(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 549
    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected asTarFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
    .locals 2

    .line 749
    instance-of v0, p1, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    if-eqz v0, :cond_0

    .line 750
    check-cast p1, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    goto/16 :goto_0

    .line 752
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;-><init>()V

    .line 753
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    if-eqz p1, :cond_6

    .line 755
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setPrefix(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setFullpath(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasFileModeBeenSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v1

    .line 758
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->integerSetFileMode(I)V

    .line 761
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDirModeBeenSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result v1

    .line 762
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->integerSetDirMode(I)V

    .line 766
    :cond_2
    instance-of v1, p1, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v1, :cond_6

    .line 768
    check-cast p1, Lorg/apache/tools/ant/types/TarFileSet;

    .line 770
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasUserNameBeenSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 771
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setUserName(Ljava/lang/String;)V

    .line 773
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasGroupBeenSet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 774
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setGroup(Ljava/lang/String;)V

    .line 776
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasUserIdBeenSet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 777
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setUid(I)V

    .line 779
    :cond_5
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->hasGroupIdBeenSet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 780
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/TarFileSet;->getGid()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setGid(I)V

    :cond_6
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected check(Ljava/io/File;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 663
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Ljava/io/File;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected check(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 6

    .line 641
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/Tar;->archiveIsUpToDate([Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 643
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 644
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "A tar file cannot include itself"

    .line 646
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_1
    return v0
.end method

.method protected check(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .locals 7

    .line 595
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->isFileFileSet(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    .line 597
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Ljava/io/File;[Ljava/lang/String;)Z

    move-result p1

    goto/16 :goto_5

    .line 598
    :cond_0
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->supportsNonFileResources()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 599
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only filesystem resources are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 602
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 603
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 604
    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 605
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-static {v3}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v3

    .line 606
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_3

    .line 608
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    .line 610
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v5, Lorg/apache/tools/ant/taskdefs/Tar$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/apache/tools/ant/taskdefs/Tar$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 612
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    if-ne v4, v6, :cond_4

    .line 613
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    :cond_4
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 618
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 619
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    if-ne v0, v3, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object v3, v0

    .line 620
    :goto_3
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 621
    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v0

    and-int/2addr v1, v0

    goto :goto_2

    .line 624
    :cond_7
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 625
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->archiveIsUpToDate(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v1

    goto :goto_4

    :cond_8
    move p1, v1

    :goto_5
    return p1
.end method

.method public createTarFileSet()Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
    .locals 2

    .line 138
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;-><init>()V

    .line 139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 140
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public execute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "tarfile is a directory!"

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 271
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 272
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can not write to the specified tarfile!"

    .line 273
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 276
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 278
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    if-eqz v1, :cond_5

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 286
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setDir(Ljava/io/File;)V

    .line 287
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 280
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "basedir does not exist!"

    .line 281
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 290
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 291
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "You must supply either a basedir attribute or some nested resource collections."

    .line 293
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 299
    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    .line 300
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v4

    and-int/2addr v3, v4

    goto :goto_4

    .line 302
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 303
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Tar;->check(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v4

    and-int/2addr v3, v4

    goto :goto_5

    :cond_9
    const/4 v1, 0x2

    if-eqz v3, :cond_a

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing to do: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is up to date."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 351
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    return-void

    .line 312
    :cond_a
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    .line 313
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_c

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    .line 315
    :cond_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Failed to create missing parent directory for %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    aput-object v5, v2, v4

    invoke-direct {v1, v3, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 320
    :cond_c
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Building tar: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 322
    :try_start_2
    new-instance v3, Lorg/apache/tools/tar/TarOutputStream;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Tar;->compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    .line 324
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v8}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 323
    invoke-static {v5, v6}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->access$000(Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Tar;->encoding:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 326
    :try_start_3
    invoke-virtual {v3, v2}, Lorg/apache/tools/tar/TarOutputStream;->setDebug(Z)V

    .line 327
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isTruncateMode()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 328
    invoke-virtual {v3, v2}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    goto :goto_8

    .line 329
    :cond_d
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isFailMode()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 330
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isOmitMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    .line 332
    :cond_e
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isPosixMode()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x3

    .line 333
    invoke-virtual {v3, v1}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    goto :goto_8

    .line 336
    :cond_f
    invoke-virtual {v3, v1}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    goto :goto_8

    .line 331
    :cond_10
    :goto_7
    invoke-virtual {v3, v4}, Lorg/apache/tools/tar/TarOutputStream;->setLongFileMode(I)V

    .line 339
    :goto_8
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    .line 340
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    .line 341
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Tar;->tar(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/tar/TarOutputStream;)V

    goto :goto_9

    .line 343
    :cond_11
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->resourceCollections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 344
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Tar;->tar(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/tar/TarOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    .line 346
    :cond_12
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/tools/tar/TarOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 351
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    return-void

    :catchall_0
    move-exception v1

    .line 322
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/tools/tar/TarOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v1

    .line 347
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem creating TAR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    .line 351
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->filesets:Ljava/util/Vector;

    .line 352
    throw v1

    .line 262
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "tarfile attribute must be set!"

    .line 263
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setBasedir(Ljava/io/File;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setCompression(Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->compression:Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;

    return-void
.end method

.method public setDestFile(Ljava/io/File;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setLongfile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED - The setLongfile(String) method has been deprecated. Use setLongfile(Tar.TarLongFileMode) instead."

    .line 202
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    .line 204
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLongfile(Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    return-void
.end method

.method public setTarfile(Ljava/io/File;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    return-void
.end method

.method protected supportsNonFileResources()Z
    .locals 2

    .line 576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/Tar;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected tar(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/tar/TarOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    instance-of v0, p1, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v0, :cond_0

    .line 681
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 684
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 685
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "fullpath attribute may only be specified for filesets that specify a single file."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->asTarFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;

    move-result-object v0

    .line 690
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->isFileFileSet(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    .line 692
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar;->getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 693
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-virtual {p0, v5, p2, v4, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile(Ljava/io/File;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 697
    :cond_3
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 698
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 699
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile(Ljava/io/File;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    goto :goto_3

    .line 703
    :cond_4
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 704
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2, v0}, Lorg/apache/tools/ant/taskdefs/Tar;->tarResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method protected tarFile(Ljava/io/File;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar;->tarFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Tar;->tarResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V

    return-void
.end method

.method protected tarResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarOutputStream;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_4

    .line 401
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 408
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-static {p4, v4}, Lorg/apache/tools/ant/taskdefs/Tar;->getCanonicalPrefix(Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v3

    .line 413
    :goto_0
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getPreserveLeadingSlashes()Z

    move-result v3

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 416
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v2, :cond_3

    return-void

    .line 421
    :cond_3
    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_4
    move v3, v1

    .line 425
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 429
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_a

    .line 430
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isOmitMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Omitting: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V

    return-void

    .line 433
    :cond_7
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isWarnMode()Z

    move-result v4

    const-string v5, "Entry: "

    if-eqz v4, :cond_8

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " longer than 100 characters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V

    .line 437
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    if-nez v4, :cond_a

    const-string v4, "Resulting tar file can only be processed successfully by GNU compatible tar commands"

    .line 438
    invoke-virtual {p0, v4, v2}, Lorg/apache/tools/ant/taskdefs/Tar;->log(Ljava/lang/String;I)V

    .line 441
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longWarningGiven:Z

    goto :goto_2

    .line 443
    :cond_8
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tar;->longFileMode:Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->isFailMode()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    .line 444
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " longer than 100characters."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 450
    :cond_a
    :goto_2
    new-instance v2, Lorg/apache/tools/tar/TarEntry;

    invoke-direct {v2, p3, v3}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;Z)V

    .line 451
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/tar/TarEntry;->setModTime(J)V

    .line 453
    instance-of p3, p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz p3, :cond_c

    .line 454
    move-object p3, p1

    check-cast p3, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    .line 455
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setMode(I)V

    .line 456
    instance-of p3, p1, Lorg/apache/tools/ant/types/resources/TarResource;

    if-eqz p3, :cond_c

    .line 457
    move-object p3, p1

    check-cast p3, Lorg/apache/tools/ant/types/resources/TarResource;

    .line 458
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/TarResource;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongUid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/tar/TarEntry;->setUserId(J)V

    .line 460
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/TarResource;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongGid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/tar/TarEntry;->setGroupId(J)V

    .line 462
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/TarResource;->getLinkName()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/TarResource;->getLinkFlag()B

    move-result p3

    const/16 v4, 0x31

    if-ne p3, v4, :cond_b

    if-eqz v3, :cond_b

    .line 465
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-static {p4, v4}, Lorg/apache/tools/ant/taskdefs/Tar;->getCanonicalPrefix(Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    :cond_b
    invoke-virtual {v2, v3}, Lorg/apache/tools/tar/TarEntry;->setLinkName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setLinkFlag(B)V

    .line 473
    :cond_c
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_e

    .line 474
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->size()I

    move-result p3

    int-to-long v3, p3

    const-wide v5, 0x1ffffffffL

    cmp-long p3, v3, v5

    if-gtz p3, :cond_d

    .line 479
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    if-eqz p4, :cond_f

    .line 481
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasFileModeBeenSet()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 482
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getMode()I

    move-result p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setMode(I)V

    goto :goto_3

    .line 475
    :cond_d
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Resource: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " larger than 8589934591 bytes."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    if-eqz p4, :cond_f

    .line 484
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasDirModeBeenSet()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 486
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p3

    invoke-virtual {p4, p3}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setMode(I)V

    :cond_f
    :goto_3
    if-eqz p4, :cond_13

    .line 491
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasUserNameBeenSet()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 492
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getUserName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    .line 494
    :cond_10
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasGroupBeenSet()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 495
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getGroup()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    .line 497
    :cond_11
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasUserIdBeenSet()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 498
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getUid()I

    move-result p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setUserId(I)V

    .line 500
    :cond_12
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->hasGroupIdBeenSet()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 501
    invoke-virtual {p4}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getGid()I

    move-result p3

    invoke-virtual {v2, p3}, Lorg/apache/tools/tar/TarEntry;->setGroupId(I)V

    :cond_13
    const/4 p3, 0x0

    .line 507
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/apache/tools/tar/TarOutputStream;->putNextEntry(Lorg/apache/tools/tar/TarEntry;)V

    .line 509
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_15

    .line 510
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    const/16 p1, 0x2000

    new-array p4, p1, [B

    move v0, v1

    .line 515
    :cond_14
    invoke-virtual {p2, p4, v1, v0}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    .line 516
    invoke-virtual {p3, p4, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    .line 520
    :cond_15
    invoke-virtual {p2}, Lorg/apache/tools/tar/TarOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-static {p3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 523
    throw p1
.end method
