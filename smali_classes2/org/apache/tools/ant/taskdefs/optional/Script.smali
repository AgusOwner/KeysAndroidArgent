.class public Lorg/apache/tools/ant/taskdefs/optional/Script;
.super Lorg/apache/tools/ant/Task;
.source "Script.java"


# instance fields
.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    const-string v1, "ANT"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Lorg/apache/tools/ant/util/ScriptManager;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Lorg/apache/tools/ant/util/ScriptManager;)V

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 45
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method

.method public setSetBeans(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Script;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    return-void
.end method
