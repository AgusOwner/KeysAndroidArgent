.class public abstract Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;
.super Ljava/lang/Object;
.source "AbstractAnalyzer.java"

# interfaces
.implements Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;


# static fields
.field public static final MAX_LOOPS:I = 0x3e8


# instance fields
.field private classDependencies:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classPath:Lorg/apache/tools/ant/types/Path;

.field private closure:Z

.field private determined:Z

.field private fileDependencies:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final rootClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePath:Lorg/apache/tools/ant/types/Path;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->sourcePath:Lorg/apache/tools/ant/types/Path;

    .line 42
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classPath:Lorg/apache/tools/ant/types/Path;

    .line 45
    new-instance v0, Lorg/apache/tools/ant/util/VectorSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/VectorSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->rootClasses:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->determined:Z

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->closure:Z

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->reset()V

    return-void
.end method

.method private getResourceContainer(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    .line 270
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    .line 281
    :cond_1
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 282
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 285
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object v3

    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 281
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addClassPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 176
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public addRootClass(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->rootClasses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->rootClasses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public addSourcePath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 158
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected abstract determineDependencies(Ljava/util/Vector;Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getClassContainer(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->getResourceContainer(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getClassDependencies()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->determined:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->fileDependencies:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classDependencies:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->determineDependencies(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classDependencies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getFileDependencies()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->supportsFileDependencies()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->determined:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->fileDependencies:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classDependencies:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->determineDependencies(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->fileDependencies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File dependencies are not supported by this analyzer"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getRootClasses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->rootClasses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContainer(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".java"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->getResourceContainer(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected isClosureRequired()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->closure:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->rootClasses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->determined:Z

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->fileDependencies:Ljava/util/Vector;

    .line 217
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->classDependencies:Ljava/util/Vector;

    return-void
.end method

.method public setClosure(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;->closure:Z

    return-void
.end method

.method protected abstract supportsFileDependencies()Z
.end method
