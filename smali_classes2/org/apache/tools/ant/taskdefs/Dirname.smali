.class public Lorg/apache/tools/ant/taskdefs/Dirname;
.super Lorg/apache/tools/ant/Task;
.source "Dirname.java"


# instance fields
.field private file:Ljava/io/File;

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->property:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Dirname;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file attribute required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Dirname;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Dirname;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->file:Ljava/io/File;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Dirname;->property:Ljava/lang/String;

    return-void
.end method
