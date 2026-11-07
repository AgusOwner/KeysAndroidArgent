.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;
.super Lorg/apache/tools/ant/Task;
.source "ServerDeploy.java"


# instance fields
.field private action:Ljava/lang/String;

.field private source:Ljava/io/File;

.field private vendorTools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addGeneric(Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;)V
    .locals 1

    .line 62
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addJonas(Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;)V
    .locals 1

    .line 84
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWeblogic(Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;)V
    .locals 1

    .line 73
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;

    .line 106
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;->validateAttributes()V

    .line 107
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;->deploy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/io/File;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->source:Ljava/io/File;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->action:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/io/File;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->source:Ljava/io/File;

    return-void
.end method
