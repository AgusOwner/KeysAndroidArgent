.class public Lorg/apache/tools/ant/taskdefs/Rmic;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Rmic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;
    }
.end annotation


# static fields
.field public static final ERROR_BASE_NOT_SET:Ljava/lang/String; = "base or destdir attribute must be set!"

.field public static final ERROR_LOADING_CAUSED_EXCEPTION:Ljava/lang/String; = ". Loading caused Exception: "

.field public static final ERROR_NOT_A_DIR:Ljava/lang/String; = "base or destdir is not a directory:"

.field public static final ERROR_NOT_DEFINED:Ljava/lang/String; = ". It is not defined."

.field public static final ERROR_NOT_FOUND:Ljava/lang/String; = ". It could not be found."

.field public static final ERROR_NO_BASE_EXISTS:Ljava/lang/String; = "base or destdir does not exist: "

.field public static final ERROR_RMIC_FAILED:Ljava/lang/String; = "Rmic failed; see the compiler error output for details."

.field public static final ERROR_UNABLE_TO_VERIFY_CLASS:Ljava/lang/String; = "Unable to verify class "

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private baseDir:Ljava/io/File;

.field private classname:Ljava/lang/String;

.field private compileClasspath:Lorg/apache/tools/ant/types/Path;

.field private compileList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field private destDir:Ljava/io/File;

.field private executable:Ljava/lang/String;

.field private extDirs:Lorg/apache/tools/ant/types/Path;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field private filtering:Z

.field private idl:Z

.field private idlOpts:Ljava/lang/String;

.field private iiop:Z

.field private iiopOpts:Ljava/lang/String;

.field private includeAntRuntime:Z

.field private includeJavaRuntime:Z

.field private listFiles:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

.field private sourceBase:Ljava/io/File;

.field private stubVersion:Ljava/lang/String;

.field private verify:Z


# direct methods
.method public static synthetic $r8$lambda$JrY7uCKYD4Yk5unqxgqHmpyFl38(Ljava/util/Vector;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XAehFZbsEYE-kDJ3g-1QxzCsdmE(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 110
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Rmic;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    .line 120
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    .line 122
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    .line 124
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    .line 126
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->debug:Z

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeAntRuntime:Z

    .line 128
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeJavaRuntime:Z

    .line 130
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 135
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->executable:Ljava/lang/String;

    .line 137
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->listFiles:Z

    .line 139
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    .line 145
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    return-void
.end method

.method private isValidRmiRemote(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 808
    const-class v0, Ljava/rmi/Remote;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$scanDir$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 761
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$scanDir$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".class"

    .line 762
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private moveGeneratedFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".class"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 705
    invoke-interface {p4}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p4

    invoke-interface {p4, p3}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 710
    :cond_0
    array-length p4, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_4

    aget-object v2, p3, v1

    .line 711
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 716
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    invoke-static {v2, v0}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 725
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 727
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    if-eqz v2, :cond_3

    .line 728
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Rmic;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v5, Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 729
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 728
    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;)V

    goto :goto_1

    .line 731
    :cond_3
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Rmic;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 733
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 735
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to copy "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " due to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 736
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 737
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p4

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p2

    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    if-nez v0, :cond_0

    .line 588
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    return-void

    .line 586
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can\'t have more than one rmic adapter"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cleanup()V
    .locals 1

    .line 689
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    :cond_0
    return-void
.end method

.method public declared-synchronized createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createCompilerArg()Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;
    .locals 2

    .line 521
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Rmic;)V

    .line 522
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    return-object v0
.end method

.method public createCompilerClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 565
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createExtdirs()Lorg/apache/tools/ant/types/Path;
    .locals 2

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "RMI Compiling "

    const-string v1, "base or destdir is not a directory:"

    const-string v2, "base or destdir does not exist: "

    .line 600
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 602
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getOutputDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 606
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 610
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 613
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    if-eqz v1, :cond_0

    const-string v1, "Verify has been turned on."

    const/4 v2, 0x3

    .line 614
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 616
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getCompiler()Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->createCompilerClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 617
    invoke-static {v1, p0, v2}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;->getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    move-result-object v1

    .line 621
    :goto_0
    invoke-interface {v1, p0}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->setRmic(Lorg/apache/tools/ant/taskdefs/Rmic;)V

    .line 623
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 624
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 628
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 629
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 630
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v5

    invoke-virtual {p0, v4, v2, v5}, Lorg/apache/tools/ant/taskdefs/Rmic;->scanDir(Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)V

    goto :goto_1

    .line 633
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2e

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".class"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 637
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v5

    invoke-virtual {p0, v4, v2, v5}, Lorg/apache/tools/ant/taskdefs/Rmic;->scanDir(Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)V

    goto :goto_1

    .line 643
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 646
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_7

    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " class"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-le v2, v4, :cond_4

    const-string v5, "es"

    goto :goto_2

    :cond_4
    const-string v5, ""

    .line 649
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 648
    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 652
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->listFiles:Z

    if-eqz v0, :cond_5

    .line 653
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Rmic;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 657
    :cond_5
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->execute()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 658
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Rmic failed; see the compiler error output for details."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 666
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    if-lez v2, :cond_9

    .line 668
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    if-eqz v0, :cond_8

    const-string v0, "Cannot determine sourcefiles in idl mode, "

    .line 669
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    const-string v0, "sourcebase attribute will be ignored."

    .line 671
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_4

    .line 674
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Rmic;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->cleanup()V

    return-void

    .line 611
    :cond_a
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 607
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 604
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "base or destdir attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 679
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->cleanup()V

    .line 680
    throw v0
.end method

.method public getBase()Ljava/io/File;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCompileList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    return-object v0
.end method

.method public getCompiler()Ljava/lang/String;
    .locals 3

    .line 511
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "build.rmic"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setMagicValue(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCompilerArgs()[Ljava/lang/String;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getCompiler()Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->debug:Z

    return v0
.end method

.method public getDestdir()Ljava/io/File;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->executable:Ljava/lang/String;

    return-object v0
.end method

.method public getExtdirs()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getFileList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    return-object v0
.end method

.method public getFiltering()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    return v0
.end method

.method public getIdl()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    return v0
.end method

.method public getIdlopts()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idlOpts:Ljava/lang/String;

    return-object v0
.end method

.method public getIiop()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    return v0
.end method

.method public getIiopopts()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiopOpts:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeantruntime()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeAntRuntime:Z

    return v0
.end method

.method public getIncludejavaruntime()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeJavaRuntime:Z

    return v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 816
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    return-object v0
.end method

.method public getOutputDir()Ljava/io/File;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDestdir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDestdir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getBase()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInterface(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 799
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    const-class v0, Ljava/rmi/Remote;

    .line 800
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getSourceBase()Ljava/io/File;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    return-object v0
.end method

.method public getStubVersion()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->stubVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVerify()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    return v0
.end method

.method public isValidRmiRemote(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Unable to verify class "

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 773
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 775
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->isValidRmiRemote(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :catchall_0
    move-exception v3

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Loading caused Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 784
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 783
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 780
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". It is not defined."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 777
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". It could not be found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    :goto_0
    return v1
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-Rmic(Ljava/io/File;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;Ljava/lang/String;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    invoke-direct {p0, p1, v0, p3, p2}, Lorg/apache/tools/ant/taskdefs/Rmic;->moveGeneratedFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V

    return-void
.end method

.method protected scanDir(Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 3

    .line 751
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string p1, "will leave uptodate test to rmic implementation in idl mode."

    .line 752
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 754
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiopOpts:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "-always"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "no uptodate test as -always option has been specified"

    .line 755
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 758
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 759
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getOutputDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1, p3}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p2

    .line 761
    :goto_0
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda3;-><init>()V

    .line 762
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    .line 763
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda4;

    invoke-direct {p3, p2}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda4;-><init>(Ljava/util/Vector;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBase(Ljava/io/File;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 284
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 307
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->debug:Z

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->destDir:Ljava/io/File;

    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->executable:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 459
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFiltering(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    return-void
.end method

.method public setIdl(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    return-void
.end method

.method public setIdlopts(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idlOpts:Ljava/lang/String;

    return-void
.end method

.method public setIiop(Z)V
    .locals 0

    .line 344
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    return-void
.end method

.method public setIiopopts(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiopOpts:Ljava/lang/String;

    return-void
.end method

.method public setIncludeantruntime(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeAntRuntime:Z

    return-void
.end method

.method public setIncludejavaruntime(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeJavaRuntime:Z

    return-void
.end method

.method public setListfiles(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->listFiles:Z

    return-void
.end method

.method public setSourceBase(Ljava/io/File;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    return-void
.end method

.method public setStubVersion(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->stubVersion:Ljava/lang/String;

    return-void
.end method

.method public setVerify(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    return-void
.end method
