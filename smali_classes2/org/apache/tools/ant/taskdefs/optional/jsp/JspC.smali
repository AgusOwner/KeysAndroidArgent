.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "JspC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;
    }
.end annotation


# static fields
.field private static final FAIL_MSG:Ljava/lang/String; = "Compile failed, messages should have been provided."


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field protected compileList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compilerClasspath:Lorg/apache/tools/ant/types/Path;

.field private compilerName:Ljava/lang/String;

.field private destDir:Ljava/io/File;

.field protected failOnError:Z

.field private iepluginid:Ljava/lang/String;

.field javaFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mapped:Z

.field private packageName:Ljava/lang/String;

.field private src:Lorg/apache/tools/ant/types/Path;

.field private uriroot:Ljava/io/File;

.field private verbose:I

.field protected webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

.field private webinc:Ljava/io/File;

.field private webxml:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const-string v0, "jasper"

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->verbose:I

    .line 82
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->javaFiles:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    return-void
.end method

.method private doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 533
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->setJspc(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;)V

    .line 536
    invoke-interface {p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->execute()Z

    move-result p1

    if-nez p1, :cond_1

    .line 537
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    const-string v0, "Compile failed, messages should have been provided."

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 540
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 538
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getActualDestDir()Ljava/io/File;
    .locals 5

    .line 520
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    const/16 v3, 0x2e

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 524
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private isCompileNeeded(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .line 599
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, " because java file "

    const/4 v2, 0x3

    const-string v3, "Compiling "

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 602
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because it is out of date with respect to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 613
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4
.end method


# virtual methods
.method public addWebApp(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    if-nez v0, :cond_0

    .line 389
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    return-void

    .line 391
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one webapp can be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createCompilerclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public deleteEmptyJavaFiles()V
    .locals 6

    .line 643
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->javaFiles:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 645
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting empty output file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    if-eqz v0, :cond_e

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 440
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getActualDestDir()Ljava/io/File;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 444
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerName:Ljava/lang/String;

    .line 445
    invoke-static {v2, p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/AntClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;

    move-result-object v2

    .line 449
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    if-eqz v3, :cond_1

    .line 450
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_0
    return-void

    .line 455
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "srcdir attribute must be set!"

    if-eqz v3, :cond_b

    .line 459
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v3

    .line 460
    array-length v5, v3

    if-eqz v5, :cond_a

    .line 468
    invoke-interface {v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->implementsOwnDependencyChecking()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 469
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 512
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_2
    return-void

    .line 475
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->createMangler()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;

    move-result-object v4

    .line 479
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->resetFileLists()V

    .line 481
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 483
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 488
    invoke-virtual {p0, v7}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v8

    .line 489
    invoke-virtual {v8}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v8

    .line 490
    array-length v9, v8

    .line 491
    invoke-virtual {p0, v7, v0, v4, v8}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->scanDir(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;[Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_0

    .line 484
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srcdir \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 496
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compiling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 499
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compiling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " source file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 502
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const-string v4, ""

    goto :goto_1

    :cond_6
    const-string v4, "s"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V

    goto :goto_2

    :cond_7
    if-nez v7, :cond_8

    const-string v0, "there were no files to compile"

    const/4 v2, 0x2

    .line 508
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_2

    :cond_8
    const-string v0, "all files are up to date"

    .line 510
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v1, :cond_9

    .line 512
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_9
    return-void

    .line 461
    :cond_a
    :try_start_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 462
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 456
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 457
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_c

    .line 442
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    throw v0

    .line 435
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destination directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist or is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 430
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "destdir attribute must be set!"

    .line 431
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

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

    .line 416
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    return-object v0
.end method

.method public getCompilerclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getDestdir()Ljava/io/File;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getFailonerror()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    return v0
.end method

.method public getIeplugin()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->iepluginid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcDir()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getUribase()Ljava/io/File;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->uriroot:Ljava/io/File;

    return-object v0
.end method

.method public getUriroot()Ljava/io/File;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->uriroot:Ljava/io/File;

    return-object v0
.end method

.method public getVerbose()I
    .locals 1

    .line 185
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->verbose:I

    return v0
.end method

.method public getWebApp()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    return-object v0
.end method

.method public getWebinc()Ljava/io/File;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webinc:Ljava/io/File;

    return-object v0
.end method

.method public getWebxml()Ljava/io/File;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webxml:Ljava/io/File;

    return-object v0
.end method

.method public isMapped()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->mapped:Z

    return v0
.end method

.method protected mapToJavaFile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 630
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, ".jsp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 633
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;->mapJspToJavaName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 634
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method protected resetFileLists()V
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method protected scanDir(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;[Ljava/lang/String;)V
    .locals 9

    .line 562
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 564
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p4, v3

    .line 565
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p3, v5, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->mapToJavaFile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 570
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_1

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Warning: file modified in the future: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 574
    :cond_1
    invoke-direct {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->isCompileNeeded(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 576
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->javaFiles:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 281
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerName:Ljava/lang/String;

    return-void
.end method

.method public setCompilerclasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 320
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    return-void
.end method

.method public setFailonerror(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    return-void
.end method

.method public setIeplugin(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->iepluginid:Ljava/lang/String;

    return-void
.end method

.method public setMapped(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->mapped:Z

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSrcDir(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setUribase(Ljava/io/File;)V
    .locals 1

    const-string p1, "Uribase is currently an unused parameter"

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setUriroot(Ljava/io/File;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->uriroot:Ljava/io/File;

    return-void
.end method

.method public setVerbose(I)V
    .locals 0

    .line 177
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->verbose:I

    return-void
.end method

.method public setWebinc(Ljava/io/File;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webinc:Ljava/io/File;

    return-void
.end method

.method public setWebxml(Ljava/io/File;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webxml:Ljava/io/File;

    return-void
.end method
