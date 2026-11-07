.class public Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;
.super Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;
.source "SOSCheckin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
    .locals 2

    .line 75
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-command"

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "CheckInFile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-file"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "CheckInProject"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getRecursive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getRequiredAttributes()V

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getOptionalAttributes()V

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-log"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCheckin;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalComment(Ljava/lang/String;)V

    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalFilename(Ljava/lang/String;)V

    return-void
.end method

.method public setRecursive(Z)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalRecursive(Z)V

    return-void
.end method
