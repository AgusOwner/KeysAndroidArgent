.class public Lorg/apache/tools/ant/types/DirSet;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "DirSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/DirSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/DirSet;
    .locals 1

    .line 115
    const-class v0, Lorg/apache/tools/ant/types/DirSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/DirSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/DirSet;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DirSet;->getRef()Lorg/apache/tools/ant/types/DirSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/DirSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 2

    .line 111
    const-class v0, Lorg/apache/tools/ant/types/DirSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/DirSet;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

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

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DirSet;->getRef()Lorg/apache/tools/ant/types/DirSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/DirSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/DirSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DirSet;->getRef()Lorg/apache/tools/ant/types/DirSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/DirSet;->size()I

    move-result v0

    return v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/DirSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
