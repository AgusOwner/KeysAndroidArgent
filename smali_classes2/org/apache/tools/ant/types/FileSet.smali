.class public Lorg/apache/tools/ant/types/FileSet;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "FileSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/FileSet;
    .locals 1

    .line 104
    const-class v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;->getRef()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 2

    .line 100
    const-class v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/FileSet;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/AbstractFileSet;

    return-object p1
.end method

.method public isFilesystemOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;->getRef()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;->getRef()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->size()I

    move-result v0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    return v0
.end method
