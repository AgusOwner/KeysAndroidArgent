.class public Lorg/apache/tools/ant/types/optional/depend/DependScanner;
.super Lorg/apache/tools/ant/DirectoryScanner;
.source "DependScanner.java"


# static fields
.field public static final DEFAULT_ANALYZER_CLASS:Ljava/lang/String; = "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"


# instance fields
.field private additionalBaseDirs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private included:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentScanner:Lorg/apache/tools/ant/DirectoryScanner;

.field private rootClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tu2VaFWXfacdzdIVCJR4k5PN9jE(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/apache/tools/ant/DirectoryScanner;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->additionalBaseDirs:Ljava/util/Vector;

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->parentScanner:Lorg/apache/tools/ant/DirectoryScanner;

    return-void
.end method

.method static synthetic lambda$scan$0(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 121
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$scan$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addBasedir(Ljava/io/File;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->additionalBaseDirs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addDefaultExcludes()V
    .locals 0

    return-void
.end method

.method public getExcludedDirectories()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExcludedFiles()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncludedDirectories()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getIncludedDirsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->getIncludedFilesCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getIncludedFilesCount()I
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 95
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotIncludedDirectories()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotIncludedFiles()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$scan$2$org-apache-tools-ant-types-optional-depend-DependScanner(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 2

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->basedir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$scan$3$org-apache-tools-ant-types-optional-depend-DependScanner(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized scan()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->included:Ljava/util/Vector;

    const-string v0, "org.apache.tools.ant.util.depend.bcel.FullAnalyzer"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v2, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->basedir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 120
    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->additionalBaseDirs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda1;-><init>()V

    .line 121
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->rootClasses:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    iget-object v1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->parentScanner:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 126
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 129
    invoke-interface {v0}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->getClassDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda4;-><init>()V

    .line 130
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/types/optional/depend/DependScanner;Ljava/util/Set;)V

    .line 131
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/optional/depend/DependScanner$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/types/optional/depend/DependScanner;)V

    .line 132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 116
    :try_start_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to load dependency analyzer: org.apache.tools.ant.util.depend.bcel.FullAnalyzer"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    return-void
.end method

.method public setExcludes([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIncludes([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setRootClasses(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/depend/DependScanner;->rootClasses:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
