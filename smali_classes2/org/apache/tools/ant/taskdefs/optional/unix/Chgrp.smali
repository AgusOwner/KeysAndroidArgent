.class public Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;
.super Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;
.source "Chgrp.java"


# instance fields
.field private haveGroup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->haveGroup:Z

    const-string v0, "chgrp"

    .line 49
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->setExecutable(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkConfiguration()V
    .locals 3

    .line 68
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->haveGroup:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->checkConfiguration()V

    return-void

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute group not set in chgrp"

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the executable attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Chgrp;->haveGroup:Z

    return-void
.end method
