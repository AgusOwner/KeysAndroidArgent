.class public Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;
.super Lorg/apache/tools/ant/types/TarFileSet;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarFileSet"
.end annotation


# instance fields
.field private files:[Ljava/lang/String;

.field private preserveLeadingSlashes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 822
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;-><init>()V

    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 805
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/TarFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    const/4 p1, 0x0

    .line 803
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 805
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    return-void
.end method


# virtual methods
.method public getFiles(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .locals 0

    .line 832
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    if-nez p1, :cond_0

    .line 833
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/Tar;->getFileNames(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    .line 835
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->files:[Ljava/lang/String;

    return-object p1
.end method

.method public getMode()I
    .locals 1

    .line 852
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v0

    return v0
.end method

.method public getPreserveLeadingSlashes()Z
    .locals 1

    .line 869
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    return v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 845
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->setFileMode(Ljava/lang/String;)V

    return-void
.end method

.method public setPreserveLeadingSlashes(Z)V
    .locals 0

    .line 862
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Tar$TarFileSet;->preserveLeadingSlashes:Z

    return-void
.end method
