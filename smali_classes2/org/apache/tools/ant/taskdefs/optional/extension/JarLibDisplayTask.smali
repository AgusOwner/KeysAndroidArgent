.class public Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibDisplayTask.java"


# instance fields
.field private libraryFile:Ljava/io/File;

.field private final libraryFileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    return-void
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File attribute not specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 110
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\'%s\' is not a file."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 108
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "File \'%s\' does not exist."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->validate()V

    .line 81
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;-><init>()V

    .line 83
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displayLibrary(Ljava/io/File;)V

    goto :goto_1

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFileSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/FileSet;

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 91
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibraryDisplayer;->displayLibrary(Ljava/io/File;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibDisplayTask;->libraryFile:Ljava/io/File;

    return-void
.end method
