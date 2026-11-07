.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;
.source "WebLogicHotDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;


# static fields
.field private static final STRING_BUFFER_SIZE:I = 0x400

.field private static final VALID_ACTIONS:[Ljava/lang/String;

.field private static final WEBLOGIC_DEPLOY_CLASS_NAME:Ljava/lang/String; = "weblogic.deploy"


# instance fields
.field private application:Ljava/lang/String;

.field private component:Ljava/lang/String;

.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "undeploy"

    const-string v1, "update"

    const-string v2, "delete"

    const-string v3, "deploy"

    const-string v4, "list"

    .line 44
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildArgsPrefix()Ljava/lang/StringBuffer;
    .locals 5

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-url "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 166
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 170
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "-debug "

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getUserName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-username "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected buildDeployArgs()Ljava/lang/String;
    .locals 4

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildArgsPrefix()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->component:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->component:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected buildListArgs()Ljava/lang/String;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildArgsPrefix()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildUndeployArgs()Ljava/lang/String;
    .locals 2

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildArgsPrefix()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deploy()V
    .locals 3

    .line 64
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 66
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setFailonerror(Z)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    const-string v1, "weblogic.deploy"

    .line 69
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getArguments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V

    return-void
.end method

.method public getArguments()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deploy"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "delete"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "undeploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "list"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildListArgs()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildUndeployArgs()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildDeployArgs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isActionValid()Z
    .locals 6

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->component:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->debug:Z

    return-void
.end method

.method public validateAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->validateAttributes()V

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "deploy"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "The application attribute must be set if action = %s"

    const-string v4, "update"

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 103
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_3
    const-string v1, "delete"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "undeploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    if-eqz v1, :cond_6

    :cond_5
    return-void

    .line 112
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 105
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "The source attribute must be set if action = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 98
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 92
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The password attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
