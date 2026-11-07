.class public Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;
.super Ljava/lang/Object;
.source "FilesMatch.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private file1:Ljava/io/File;

.field private file2:Ljava/io/File;

.field private textfile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->textfile:Z

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->file1:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->file2:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    sget-object v2, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->textfile:Z

    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/tools/ant/util/FileUtils;->contentEquals(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "when comparing files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both file1 and file2 are required in filesmatch"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFile1(Ljava/io/File;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->file1:Ljava/io/File;

    return-void
.end method

.method public setFile2(Ljava/io/File;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->file2:Ljava/io/File;

    return-void
.end method

.method public setTextfile(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/FilesMatch;->textfile:Z

    return-void
.end method
