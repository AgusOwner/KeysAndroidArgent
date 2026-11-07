.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;
.source "GenericHotDeploymentTool.java"


# static fields
.field private static final VALID_ACTIONS:[Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;

.field private java:Lorg/apache/tools/ant/taskdefs/Java;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "deploy"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;-><init>()V

    return-void
.end method


# virtual methods
.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public deploy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setFailonerror(Z)V

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V

    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getJava()Lorg/apache/tools/ant/taskdefs/Java;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    return-object v0
.end method

.method protected isActionValid()Z
    .locals 3

    .line 75
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->className:Ljava/lang/String;

    return-void
.end method

.method public setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 86
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->java:Lorg/apache/tools/ant/taskdefs/Java;

    return-void
.end method

.method public validateAttributes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 111
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->validateAttributes()V

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The classname attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
