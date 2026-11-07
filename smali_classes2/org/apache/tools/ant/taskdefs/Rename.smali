.class public Lorg/apache/tools/ant/taskdefs/Rename;
.super Lorg/apache/tools/ant/Task;
.source "Rename.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private dest:Ljava/io/File;

.field private replace:Z

.field private src:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Rename;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rename;->replace:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "DEPRECATED - The rename task is deprecated.  Use move instead."

    .line 76
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Rename;->log(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rename;->dest:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 82
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rename;->src:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 86
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rename;->replace:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rename;->dest:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Rename;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rename;->src:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rename;->dest:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to rename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rename;->src:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rename;->dest:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rename;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 83
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "src attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rename;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 79
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rename;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rename;->dest:Ljava/io/File;

    return-void
.end method

.method public setReplace(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rename;->replace:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rename;->src:Ljava/io/File;

    return-void
.end method
