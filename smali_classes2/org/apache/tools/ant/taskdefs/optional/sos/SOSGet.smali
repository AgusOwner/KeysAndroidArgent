.class public Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;
.super Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;
.source "SOSGet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
    .locals 2

    .line 84
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-command"

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "GetFile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-file"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-revision"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "GetProject"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getRecursive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-label"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getRequiredAttributes()V

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->getOptionalAttributes()V

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOSGet;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    return-object v0
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalFilename(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setRecursive(Z)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalRecursive(Z)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->setInternalVersion(Ljava/lang/String;)V

    return-void
.end method
