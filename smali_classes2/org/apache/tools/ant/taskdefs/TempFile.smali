.class public Lorg/apache/tools/ant/taskdefs/TempFile;
.super Lorg/apache/tools/ant/Task;
.source "TempFile.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private createFile:Z

.field private deleteOnExit:Z

.field private destDir:Ljava/io/File;

.field private prefix:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/TempFile;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->destDir:Ljava/io/File;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->property:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->destDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/TempFile;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->destDir:Ljava/io/File;

    .line 157
    :cond_0
    sget-object v1, Lorg/apache/tools/ant/taskdefs/TempFile;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/TempFile;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->prefix:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->suffix:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->destDir:Ljava/io/File;

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->deleteOnExit:Z

    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->createFile:Z

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/TempFile;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->property:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no property specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCreateFile()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->createFile:Z

    return v0
.end method

.method public isDeleteOnExit()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->deleteOnExit:Z

    return v0
.end method

.method public setCreateFile(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->createFile:Z

    return-void
.end method

.method public setDeleteOnExit(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->deleteOnExit:Z

    return-void
.end method

.method public setDestDir(Ljava/io/File;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->destDir:Ljava/io/File;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->property:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TempFile;->suffix:Ljava/lang/String;

    return-void
.end method
