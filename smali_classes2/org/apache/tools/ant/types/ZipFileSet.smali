.class public Lorg/apache/tools/ant/types/ZipFileSet;
.super Lorg/apache/tools/ant/types/ArchiveFileSet;
.source "ZipFileSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    return-object v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 1

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ZipFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    .line 78
    instance-of v0, p1, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lorg/apache/tools/ant/types/AbstractFileSet;

    return-object p1

    .line 81
    :cond_0
    instance-of v0, p1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lorg/apache/tools/ant/types/ZipFileSet;

    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 83
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    return-object v0

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " doesn\'t denote a zipfileset or a fileset"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newArchiveScanner()Lorg/apache/tools/ant/types/ArchiveScanner;
    .locals 2

    .line 63
    new-instance v0, Lorg/apache/tools/ant/types/ZipScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ZipScanner;-><init>()V

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/ZipFileSet;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    return-object v0
.end method
