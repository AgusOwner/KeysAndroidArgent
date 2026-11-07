.class public abstract Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "AbstractScriptComponent.java"


# instance fields
.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected executeScript(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    return-void
.end method

.method public getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->initScriptRunner()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-object v0
.end method

.method protected initScriptRunner()V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Lorg/apache/tools/ant/util/ScriptManager;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Lorg/apache/tools/ant/util/ScriptManager;)V

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 52
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method

.method public setSetBeans(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    return-void
.end method
