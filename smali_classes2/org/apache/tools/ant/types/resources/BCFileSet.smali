.class public Lorg/apache/tools/ant/types/resources/BCFileSet;
.super Lorg/apache/tools/ant/types/FileSet;
.source "BCFileSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/FileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/FileSet;
    .locals 1

    .line 76
    const-class v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getRef()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    .line 56
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->addFiles([Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->addFiles([Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getRef()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->size()I

    move-result v0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BCFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
