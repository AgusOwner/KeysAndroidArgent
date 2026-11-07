.class public Lorg/apache/tools/ant/taskdefs/ManifestClassPath;
.super Lorg/apache/tools/ant/Task;
.source "ManifestClassPath.java"


# instance fields
.field private dir:Ljava/io/File;

.field private maxParentLevels:I

.field private name:Ljava/lang/String;

.field private path:Lorg/apache/tools/ant/types/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->maxParentLevels:I

    return-void
.end method


# virtual methods
.method public addClassPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->path:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public execute()V
    .locals 12

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 62
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_6

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 70
    :goto_0
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->maxParentLevels:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    const-string v3, "../"

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    .line 82
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 89
    :try_start_0
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-virtual {v8, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "."

    goto :goto_2

    .line 92
    :cond_1
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-static {v8, v7}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 95
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 97
    sget-char v10, Ljava/io/File;->separatorChar:C

    const/16 v11, 0x2f

    if-eq v10, v11, :cond_2

    .line 98
    sget-char v10, Ljava/io/File;->separatorChar:C

    .line 99
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 109
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 117
    :cond_3
    invoke-static {v8}, Lorg/apache/tools/ant/launch/Locator;->encodeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 123
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "No suitable relative path from %s to %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error trying to get the relative path from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing nested <classpath>!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Property \'%s\' already set!"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 60
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing \'jarfile\' attribute!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing \'property\' attribute!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJarFile(Ljava/io/File;)V
    .locals 2

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->dir:Ljava/io/File;

    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Jar\'s directory not found: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setMaxParentLevels(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 164
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->maxParentLevels:I

    return-void

    .line 161
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "maxParentLevels must not be a negative number"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestClassPath;->name:Ljava/lang/String;

    return-void
.end method
