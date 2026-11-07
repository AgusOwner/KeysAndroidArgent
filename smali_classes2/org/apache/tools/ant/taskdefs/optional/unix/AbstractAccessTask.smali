.class public abstract Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;
.super Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.source "AbstractAccessTask.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;-><init>()V

    const/4 v0, 0x1

    .line 52
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setParallel(Z)V

    .line 53
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setSkipEmptyFilesets(Z)V

    return-void
.end method


# virtual methods
.method protected isValidOs()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getOs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getOsFamily()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unix"

    .line 112
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->isValidOs()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setAddsourcefile(Z)V
    .locals 2

    .line 100
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the addsourcefile attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 74
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the command attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 63
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method public setSkipEmptyFilesets(Z)V
    .locals 2

    .line 87
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the skipemptyfileset attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method
