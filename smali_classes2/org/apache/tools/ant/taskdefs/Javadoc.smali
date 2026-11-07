.class public Lorg/apache/tools/ant/taskdefs/Javadoc;
.super Lorg/apache/tools/ant/Task;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$Html;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final LOAD_FRAME:Ljava/lang/String; = "function loadFrames() {"

.field private static final LOAD_FRAME_LEN:I = 0x17

.field static final SCOPE_ELEMENTS:[Ljava/lang/String;


# instance fields
.field private author:Z

.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private breakiterator:Z

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private final cmd:Lorg/apache/tools/ant/types/Commandline;

.field private destDir:Ljava/io/File;

.field private docEncoding:Ljava/lang/String;

.field private docFilesSubDirs:Z

.field private doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

.field private doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private excludeDocFilesSubDir:Ljava/lang/String;

.field private final excludePackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field private executable:Ljava/lang/String;

.field private failOnError:Z

.field private failOnWarning:Z

.field private footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private group:Ljava/lang/String;

.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private includeNoSourcePackages:Z

.field private final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;",
            ">;"
        }
    .end annotation
.end field

.field private linksource:Z

.field private final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field private modulePath:Lorg/apache/tools/ant/types/Path;

.field private moduleSourcePath:Lorg/apache/tools/ant/types/Path;

.field private final nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

.field private noqualifier:Ljava/lang/String;

.field private packageList:Ljava/lang/String;

.field private final packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field private final packageSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/DirSet;",
            ">;"
        }
    .end annotation
.end field

.field private postProcessGeneratedJavadocs:Z

.field private source:Ljava/lang/String;

.field private final sourceFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePath:Lorg/apache/tools/ant/types/Path;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultExcludes:Z

.field private useExternalFile:Z

.field private version:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 401
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const-string v1, "overview"

    const-string v2, "packages"

    const-string v3, "types"

    const-string v4, "constructors"

    const-string v5, "methods"

    const-string v6, "fields"

    .line 1428
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 404
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnError:Z

    .line 444
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnWarning:Z

    const/4 v1, 0x0

    .line 445
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    .line 446
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    .line 447
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourceFiles:Ljava/util/List;

    .line 448
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    .line 449
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludePackageNames:Ljava/util/List;

    .line 450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    .line 451
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->author:Z

    .line 452
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->version:Z

    .line 453
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 454
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 455
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 456
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 457
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    .line 458
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    .line 459
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    .line 460
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->links:Ljava/util/List;

    .line 461
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->groups:Ljava/util/List;

    .line 462
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    .line 463
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useDefaultExcludes:Z

    .line 464
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 465
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 466
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 467
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 468
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    .line 469
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->source:Ljava/lang/String;

    .line 470
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->linksource:Z

    .line 471
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->breakiterator:Z

    .line 473
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    .line 474
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->executable:Ljava/lang/String;

    .line 475
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docFilesSubDirs:Z

    .line 476
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    .line 477
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docEncoding:Ljava/lang/String;

    .line 478
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs:Z

    .line 480
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    .line 482
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageSets:Ljava/util/List;

    return-void
.end method

.method private addArgIf(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addArgIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 426
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Warning: Leaving out empty argument \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private addSourceFiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;)V"
        }
    .end annotation

    .line 2400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 2401
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2405
    instance-of v2, v1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v2, :cond_1

    .line 2406
    move-object v2, v1

    check-cast v2, Lorg/apache/tools/ant/types/FileSet;

    .line 2407
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/FileSet;->hasPatterns()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/FileSet;->hasSelectors()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2408
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 2409
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v2

    const-string v3, "**/*.java"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 2410
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    if-eqz v2, :cond_1

    .line 2411
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v2

    const-string v3, "**/package.html"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 2416
    :cond_1
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Resource;

    .line 2417
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;

    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v2}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;-><init>(Ljava/io/File;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2402
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only file system based resources are supported by javadoc"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private checkPackageAndSourcePath()V
    .locals 2

    .line 1950
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "sourcePath attribute must be set when specifying packagelist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/types/Path;",
            ")V"
        }
    .end annotation

    .line 1958
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1959
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "sourcePath attribute must be set when specifying package names."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPackagesToDoc(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;)V"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1967
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1968
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "No source files, no packages and no modules have been specified."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkTaskName()V
    .locals 2

    const-string v0, "javadoc2"

    .line 1942
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Warning: the task name <javadoc2> is deprecated. Use <javadoc> instead."

    const/4 v1, 0x1

    .line 1943
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private containsWhitespace(Ljava/lang/String;)Z
    .locals 4

    .line 2344
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    .line 2345
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private doBootPath(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 3

    .line 2082
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2083
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 2084
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :cond_0
    const-string v1, "ignore"

    .line 2086
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 2087
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2088
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-bootclasspath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    :cond_1
    return-void
.end method

.method private doDocFilesSubDirs(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 2279
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docFilesSubDirs:Z

    if-eqz v0, :cond_0

    .line 2280
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-docfilessubdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-excludedocfilessubdir"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doDoclet(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 4

    .line 2022
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-eqz v0, :cond_4

    .line 2023
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2026
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-doclet"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 2030
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2031
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-docletpath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2035
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getParams()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;

    .line 2036
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2039
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2041
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2037
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Doclet parameters must have a name"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2024
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The doclet name must be specified."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_4
    return-void
.end method

.method private doGroup(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 6

    .line 2183
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2184
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2185
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2186
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    .line 2187
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 2189
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 2190
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v5, "-group"

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doGroups(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 5

    .line 2201
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;

    .line 2202
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2203
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->getPackages()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2208
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-group"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2205
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The title and packages must be specified for group elements."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private doLinkSource(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 1

    .line 2222
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->linksource:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_0

    .line 2223
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-linksource"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doLinks(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 8

    .line 2094
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    .line 2095
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 2101
    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->shouldResolveLink()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 2103
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2106
    :try_start_0
    sget-object v5, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v5, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v5

    .line 2107
    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2110
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Warning: link location was invalid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 2118
    :try_start_1
    new-instance v2, Ljava/net/URL;

    const-string v5, "file://."

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2120
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2124
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Link href \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a valid url - skipping link"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2131
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->isLinkOffline()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2132
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getPackagelistLoc()Ljava/io/File;

    move-result-object v5

    .line 2133
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getPackagelistURL()Ljava/net/URL;

    move-result-object v6

    if-nez v5, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    .line 2136
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The package list location for link "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be provided because the link is offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    .line 2141
    new-instance v1, Ljava/io/File;

    const-string v7, "package-list"

    invoke-direct {v1, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2145
    :try_start_2
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 2146
    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v6
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 2148
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Warning: Package list location was invalid "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto :goto_4

    .line 2153
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Warning: No package list was found at "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    :cond_7
    :goto_4
    if-eqz v6, :cond_0

    .line 2158
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-linkoffline"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    .line 2161
    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2164
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-link"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :goto_5
    const-string v1, "No href was given for the link - skipping"

    .line 2096
    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private doModuleArguments(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 3

    .line 2595
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2596
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--module"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    .line 2598
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 2599
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2598
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2601
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1

    .line 2602
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--module-path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2605
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_2

    .line 2606
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--module-source-path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2607
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    :cond_2
    return-void
.end method

.method private doNoqualifier(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 2215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->noqualifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_0

    .line 2216
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-noqualifier"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->noqualifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doSource(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 3

    .line 2228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.build.javac.source"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2230
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-source"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private doSourceAndPackageNames(Lorg/apache/tools/ant/types/Commandline;Ljava/util/List;Ljava/util/List;ZLjava/io/File;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Commandline;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;Z",
            "Ljava/io/File;",
            "Ljava/io/BufferedWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2296
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 2298
    invoke-virtual {p6, p5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p6}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 2301
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2305
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;

    .line 2306
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->getFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_4

    const-string p5, " "

    .line 2310
    invoke-virtual {p3, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 2312
    sget-char p5, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x5c

    if-ne p5, v0, :cond_2

    .line 2313
    sget-char p5, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2f

    invoke-virtual {p3, p5, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 2315
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 2317
    :cond_3
    invoke-virtual {p6, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2319
    :goto_2
    invoke-virtual {p6}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 2321
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p5

    invoke-virtual {p5, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private doSourcePath(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/types/Path;)V
    .locals 2

    .line 1974
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1975
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-sourcepath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    :cond_0
    return-void
.end method

.method private doTags(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 9

    .line 2236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2237
    instance-of v2, v1, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;

    if-eqz v2, :cond_2

    .line 2238
    check-cast v1, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;

    .line 2239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2243
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-tag"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2249
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 2250
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 2251
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2252
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;

    invoke-direct {v8, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/types/Commandline;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2257
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2252
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 2258
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t read tag file from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2264
    :cond_2
    check-cast v1, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;

    .line 2265
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-taglet"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2268
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    const-string v2, "ignore"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 2269
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2270
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-tagletpath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private fixLineFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 2580
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2581
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generalJavadocArguments(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 1981
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_0

    .line 1982
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-doctitle"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1985
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_1

    .line 1986
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-header"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1989
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_2

    .line 1990
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-footer"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1993
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_3

    .line 1994
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-bottom"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1998
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_4

    .line 1999
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    :cond_4
    const-string v1, "ignore"

    .line 2001
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 2004
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2005
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-classpath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2009
    :cond_5
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->version:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_6

    .line 2010
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-version"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2012
    :cond_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->author:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_7

    .line 2013
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-author"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2016
    :cond_7
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    if-eqz p1, :cond_8

    goto :goto_1

    .line 2017
    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "destdir attribute must be set!"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_1
    return-void
.end method

.method static synthetic lambda$doTags$0(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .locals 2

    .line 2254
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-tag"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$parsePackages$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 2445
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\*$"

    const-string v1, "**"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parsePackages$2(Lorg/apache/tools/ant/types/PatternSet;Ljava/lang/String;)V
    .locals 0

    .line 2446
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$parsePackages$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 2450
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\*$"

    const-string v1, "**"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parsePackages$4(Lorg/apache/tools/ant/types/PatternSet;Ljava/lang/String;)V
    .locals 0

    .line 2451
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private parsePackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/types/Path;",
            ")V"
        }
    .end annotation

    .line 2431
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2432
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageSets:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2438
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 2439
    new-instance v2, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    .line 2440
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/PatternSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 2441
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2442
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v5

    const-string v6, "**"

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 2444
    :cond_0
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda1;-><init>()V

    .line 2445
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 2446
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2449
    :goto_0
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludePackageNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;-><init>()V

    .line 2450
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 2451
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2453
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 2454
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2456
    new-instance v8, Lorg/apache/tools/ant/types/DirSet;

    invoke-direct {v8}, Lorg/apache/tools/ant/types/DirSet;-><init>()V

    .line 2457
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/apache/tools/ant/types/DirSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 2458
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useDefaultExcludes:Z

    invoke-virtual {v8, v10}, Lorg/apache/tools/ant/types/DirSet;->setDefaultexcludes(Z)V

    .line 2459
    invoke-virtual {v8, v9}, Lorg/apache/tools/ant/types/DirSet;->setDir(Ljava/io/File;)V

    .line 2460
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/DirSet;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/apache/tools/ant/types/PatternSet;->addConfiguredPatternset(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 2461
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2463
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Skipping "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " since it is no directory."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2469
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/DirSet;

    .line 2470
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/DirSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    .line 2471
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "scanning "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for packages."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 2472
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/types/DirSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 2474
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v7, v3

    move v8, v7

    :goto_4
    if-ge v7, v6, :cond_6

    aget-object v9, v2, v7

    .line 2476
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2477
    new-instance v11, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    .line 2481
    array-length v10, v10

    if-lez v10, :cond_5

    .line 2482
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " contains source files in the default package, you must specify them as source files not packages."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto :goto_5

    .line 2488
    :cond_3
    sget-char v8, Ljava/io/File;->separatorChar:C

    const/16 v10, 0x2e

    .line 2489
    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 2490
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2491
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2492
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v8, v4

    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    if-eqz v8, :cond_7

    .line 2500
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/Path$PathElement;->setLocation(Ljava/io/File;)V

    goto/16 :goto_3

    .line 2502
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " doesn\'t contain any packages, dropping it."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_8
    return-void
.end method

.method private patchContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "function loadFrames() {"

    .line 2586
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v1, Lorg/apache/tools/ant/taskdefs/Javadoc;->LOAD_FRAME_LEN:I

    add-int/2addr v0, v1

    .line 2589
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private postProcess(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2552
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2553
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    .line 2557
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 2558
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2559
    :try_start_0
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->fixLineFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2560
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    const-string v1, "function validURL(url) {"

    .line 2564
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2566
    invoke-direct {p0, v2, p2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->patchContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2567
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2568
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 2569
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v2, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2570
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 2568
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    return v3

    :catchall_2
    move-exception p1

    .line 2557
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private postProcessGeneratedJavadocs()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2509
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs:Z

    if-nez v0, :cond_0

    return-void

    .line 2512
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No javadoc created, no need to post-process anything"

    const/4 v1, 0x3

    .line 2513
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    return-void

    .line 2517
    :cond_1
    const-class v0, Lorg/apache/tools/ant/taskdefs/Javadoc;

    const-string v1, "javadoc-frame-injections-fix.txt"

    .line 2518
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2525
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2527
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 2526
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->fixLineFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2528
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 2533
    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 2534
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 2535
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/DirectoryScanner;->setCaseSensitive(Z)V

    const-string v3, "**/toc.html"

    const-string v4, "**/toc.htm"

    const-string v5, "**/index.html"

    const-string v6, "**/index.htm"

    .line 2536
    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/DirectoryScanner;->setIncludes([Ljava/lang/String;)V

    .line 2539
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->addDefaultExcludes()V

    .line 2540
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 2542
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 2543
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcess(Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Patched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " link injection vulnerable javadocs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 2530
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 2531
    throw v1

    .line 2520
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Missing resource \'javadoc-frame-injections-fix.txt\' in classpath."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2333
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->containsWhitespace(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\'"

    if-nez v0, :cond_0

    .line 2334
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2337
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x27

    .line 2338
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->quoteString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x22

    .line 2340
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->quoteString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private quoteString(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2354
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_5

    aget-char v5, p1, v3

    const/16 v6, 0x5c

    if-ne v5, p2, :cond_0

    .line 2358
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_0
    const/16 v7, 0xa

    if-eq v5, v7, :cond_3

    const/16 v4, 0xd

    if-eq v5, v4, :cond_2

    if-eq v5, v6, :cond_1

    .line 2383
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\\\\"

    .line 2363
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\\\r"

    .line 2368
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const-string v4, "\\\n"

    .line 2376
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "\n"

    .line 2378
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2389
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeExternalArgs(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 9

    const-string v0, "@"

    const/4 v1, 0x0

    .line 2051
    :try_start_0
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 2052
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    const-string v4, "javadocOptions"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 2051
    invoke-virtual/range {v2 .. v8}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1

    .line 2053
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v2

    .line 2054
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->clearArgs()V

    .line 2055
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2055
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2057
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    .line 2058
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    :try_start_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const-string v6, "-J-"

    .line 2060
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2061
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v6, "-"

    .line 2062
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2063
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, " "

    .line 2064
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2066
    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Javadoc;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2070
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 2057
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 2073
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2075
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Error creating or writing temporary file for javadoc options"

    .line 2077
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method public addBottom(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    return-void
.end method

.method public addDoctitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    return-void
.end method

.method public addExcludePackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludePackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createSourceFiles()Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFooter(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    return-void
.end method

.method public addHeader(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    return-void
.end method

.method public addModule(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPackageset(Lorg/apache/tools/ant/types/DirSet;)V
    .locals 1

    .line 1705
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSource(Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourceFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTaglet(Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;)V
    .locals 1

    .line 887
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 530
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 957
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 960
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 923
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 924
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 926
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createDoclet()Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 878
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    return-object v0
.end method

.method public createGroup()Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;
    .locals 2

    .line 1575
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 1576
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createLink()Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;
    .locals 2

    .line 1305
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 1306
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->links:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createModulePath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModuleSourcePath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 633
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSourceFiles()Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;
    .locals 1

    .line 1730
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    return-object v0
.end method

.method public createSourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 553
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createTag()Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;
    .locals 2

    .line 1418
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 1419
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v0, "Javadoc returned "

    const-string v9, "Javadoc failed: "

    .line 1810
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkTaskName()V

    .line 1812
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1813
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 1815
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkPackageAndSourcePath()V

    .line 1817
    iget-object v2, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_0

    .line 1818
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 1821
    :cond_0
    invoke-direct {v8, v3, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->parsePackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V

    .line 1822
    invoke-direct {v8, v3, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkPackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V

    .line 1824
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourceFiles:Ljava/util/List;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1825
    invoke-direct {v8, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addSourceFiles(Ljava/util/List;)V

    .line 1827
    invoke-direct {v8, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkPackagesToDoc(Ljava/util/List;Ljava/util/List;)V

    const-string v2, "Generating Javadoc"

    const/4 v10, 0x2

    .line 1829
    invoke-virtual {v8, v2, v10}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 1831
    iget-object v2, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/apache/tools/ant/types/Commandline;

    .line 1832
    iget-object v2, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->executable:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1833
    invoke-virtual {v11, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "javadoc"

    .line 1835
    invoke-static {v2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 1839
    :goto_0
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->generalJavadocArguments(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1840
    invoke-direct {v8, v11, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doSourcePath(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/types/Path;)V

    .line 1841
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doDoclet(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1842
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doBootPath(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1843
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doLinks(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1844
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doGroup(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1845
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doGroups(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1846
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doDocFilesSubDirs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1847
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doModuleArguments(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1849
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doTags(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1850
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doSource(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1851
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doLinkSource(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1852
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doNoqualifier(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1854
    iget-boolean v1, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->breakiterator:Z

    if-eqz v1, :cond_2

    .line 1855
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-breakiterator"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1858
    :cond_2
    iget-boolean v1, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    if-eqz v1, :cond_3

    .line 1859
    invoke-direct {v8, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->writeExternalArgs(Lorg/apache/tools/ant/types/Commandline;)V

    :cond_3
    const/4 v12, 0x0

    .line 1870
    :try_start_0
    iget-boolean v1, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v13, 0x1

    const-string v14, "@"

    if-eqz v1, :cond_4

    .line 1871
    :try_start_1
    sget-object v15, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v16

    const-string v17, "javadoc"

    const-string v18, ""

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v15 .. v21}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1872
    :try_start_2
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1874
    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1875
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v12, v1

    move-object/from16 v16, v2

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v12

    move-object v12, v1

    goto/16 :goto_5

    :cond_4
    move-object v15, v12

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    .line 1878
    :goto_1
    :try_start_4
    iget-boolean v5, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v6, v15

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doSourceAndPackageNames(Lorg/apache/tools/ant/types/Commandline;Ljava/util/List;Ljava/util/List;ZLjava/io/File;Ljava/io/BufferedWriter;)V

    .line 1882
    iget-boolean v1, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    if-eqz v1, :cond_5

    .line 1883
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1892
    :cond_5
    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 1895
    iget-object v1, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1896
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1898
    :cond_6
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v8, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    const-string v1, "Javadoc execution"

    .line 1900
    invoke-virtual {v8, v1, v10}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 1902
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;

    invoke-direct {v1, v8, v10}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;I)V

    .line 1903
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;

    invoke-direct {v2, v8, v13}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;I)V

    .line 1904
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v4, v1, v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 1913
    invoke-virtual {v3, v12}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 1915
    :try_start_5
    invoke-virtual {v11}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v3

    if-eqz v3, :cond_8

    .line 1917
    iget-boolean v4, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnError:Z

    if-nez v4, :cond_7

    goto :goto_2

    .line 1918
    :cond_7
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1919
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v4

    .line 1921
    :cond_8
    :goto_2
    iget-boolean v0, v8, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnWarning:Z

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 1922
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Javadoc issued warnings."

    .line 1923
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1925
    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_b

    .line 1930
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 1934
    :cond_b
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1935
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1936
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1937
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 1927
    :try_start_6
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-eqz v15, :cond_c

    .line 1930
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 1934
    :cond_c
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1935
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1936
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1937
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1938
    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v12, v16

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v12, v15

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v16, v12

    :goto_5
    if-eqz v12, :cond_d

    .line 1887
    :try_start_7
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 1889
    :cond_d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error creating temporary file"

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1892
    :goto_6
    invoke-static {v12}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 1893
    throw v0
.end method

.method protected expand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2666
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$parsePackages$5$org-apache-tools-ant-taskdefs-Javadoc(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    const-string p1, ".java"

    .line 2478
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    if-eqz p1, :cond_0

    const-string p1, "package.html"

    .line 2479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public setAccess(Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;)V
    .locals 3

    .line 825
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setAdditionalparam(Ljava/lang/String;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthor(Z)V
    .locals 0

    .line 1051
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->author:Z

    return-void
.end method

.method public setBootClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 969
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setBootclasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 944
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 945
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setBottom(Ljava/lang/String;)V
    .locals 1

    .line 1139
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1140
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addBottom(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    return-void
.end method

.method public setBreakiterator(Z)V
    .locals 0

    .line 1750
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->breakiterator:Z

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    const-string v0, "-charset"

    .line 1650
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 911
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 935
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setDefaultexcludes(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useDefaultExcludes:Z

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 1

    .line 656
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    .line 657
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-d"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    return-void
.end method

.method public setDocFilesSubDirs(Z)V
    .locals 0

    .line 1780
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docFilesSubDirs:Z

    return-void
.end method

.method public setDocencoding(Ljava/lang/String;)V
    .locals 2

    .line 1285
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-docencoding"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1287
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docEncoding:Ljava/lang/String;

    return-void
.end method

.method public setDoclet(Ljava/lang/String;)V
    .locals 2

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 837
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 839
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setDocletPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 2

    .line 848
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 850
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 852
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setPath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setDocletPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 2

    .line 862
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 864
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setDoctitle(Ljava/lang/String;)V
    .locals 1

    .line 1079
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1080
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addDoctitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    .line 1022
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-encoding"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setExcludeDocFilesSubDir(Ljava/lang/String;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    return-void
.end method

.method public setExcludePackageNames(Ljava/lang/String;)V
    .locals 2

    .line 748
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 751
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 752
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addExcludePackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->executable:Ljava/lang/String;

    return-void
.end method

.method public setExtdirs(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-extdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .locals 2

    .line 991
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-extdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setFailonerror(Z)V
    .locals 0

    .line 1661
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnError:Z

    return-void
.end method

.method public setFailonwarning(Z)V
    .locals 0

    .line 1673
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnWarning:Z

    return-void
.end method

.method public setFooter(Ljava/lang/String;)V
    .locals 1

    .line 1119
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1120
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addFooter(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1

    .line 1099
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1100
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addHeader(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    return-void
.end method

.method public setHelpfile(Ljava/io/File;)V
    .locals 2

    .line 1275
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-helpfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    return-void
.end method

.method public setIncludeNoSourcePackages(Z)V
    .locals 0

    .line 1770
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createLink()Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setHref(Ljava/lang/String;)V

    return-void
.end method

.method public setLinkoffline(Ljava/lang/String;)V
    .locals 5

    .line 1160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createLink()Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    move-result-object v0

    const/4 v1, 0x1

    .line 1161
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setOffline(Z)V

    .line 1165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "The linkoffline attribute must include a URL and a package-list file location separated by a space"

    if-nez v1, :cond_1

    .line 1168
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, " "

    const/4 v4, 0x0

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1169
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setHref(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setPackagelistLoc(Ljava/io/File;)V

    return-void

    .line 1172
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1166
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLinksource(Z)V
    .locals 0

    .line 1740
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->linksource:Z

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1013
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v0, "-locale"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-J-Xmx"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setModulePath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 577
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModulePathref(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 606
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createModulePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setModuleSourcePath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 618
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModuleSourcePathref(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 647
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createModuleSourcePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setModulenames(Ljava/lang/String;)V
    .locals 4

    const-string v0, ","

    .line 711
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 712
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 713
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addModule(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNodeprecated(Z)V
    .locals 1

    const-string v0, "-nodeprecated"

    .line 1202
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setNodeprecatedlist(Z)V
    .locals 1

    const-string v0, "-nodeprecatedlist"

    .line 1211
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setNohelp(Z)V
    .locals 1

    const-string v0, "-nohelp"

    .line 1238
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setNoindex(Z)V
    .locals 1

    const-string v0, "-noindex"

    .line 1229
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setNonavbar(Z)V
    .locals 1

    const-string v0, "-nonavbar"

    .line 1247
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setNoqualifier(Ljava/lang/String;)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->noqualifier:Ljava/lang/String;

    return-void
.end method

.method public setNotree(Z)V
    .locals 1

    const-string v0, "-notree"

    .line 1220
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setOld(Z)V
    .locals 1

    const-string p1, "Javadoc 1.4 doesn\'t support the -1.1 switch anymore"

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setOverview(Ljava/io/File;)V
    .locals 2

    .line 773
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-overview"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    return-void
.end method

.method public setPackage(Z)V
    .locals 1

    const-string v0, "-package"

    .line 804
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setPackageList(Ljava/lang/String;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    return-void
.end method

.method public setPackagenames(Ljava/lang/String;)V
    .locals 2

    .line 694
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 697
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 698
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPostProcessGeneratedJavadocs(Z)V
    .locals 0

    .line 1801
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs:Z

    return-void
.end method

.method public setPrivate(Z)V
    .locals 1

    const-string v0, "-private"

    .line 814
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setProtected(Z)V
    .locals 1

    const-string v0, "-protected"

    .line 794
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setPublic(Z)V
    .locals 1

    const-string v0, "-public"

    .line 784
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setSerialwarn(Z)V
    .locals 1

    const-string v0, "-serialwarn"

    .line 1256
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourcefiles(Ljava/lang/String;)V
    .locals 3

    .line 667
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 669
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 670
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;-><init>()V

    .line 671
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->setFile(Ljava/io/File;)V

    .line 672
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addSource(Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSourcepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 540
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setSourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 565
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setSplitindex(Z)V
    .locals 1

    const-string v0, "-splitindex"

    .line 1060
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setStylesheetfile(Ljava/io/File;)V
    .locals 2

    .line 1265
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-stylesheetfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    return-void
.end method

.method public setUse(Z)V
    .locals 1

    const-string v0, "-use"

    .line 1041
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setUseExternalFile(Z)V
    .locals 0

    .line 491
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 1

    const-string v0, "-verbose"

    .line 1001
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    return-void
.end method

.method public setVersion(Z)V
    .locals 0

    .line 1032
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->version:Z

    return-void
.end method

.method public setWindowtitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "-windowtitle"

    .line 1070
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
