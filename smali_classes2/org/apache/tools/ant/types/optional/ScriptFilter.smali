.class public Lorg/apache/tools/ant/types/optional/ScriptFilter;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "ScriptFilter.java"


# instance fields
.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/ScriptFilter;->init()V

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/optional/ScriptFilter;->setToken(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v0, "ant_filter"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptFilter;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Lorg/apache/tools/ant/util/ScriptManager;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Lorg/apache/tools/ant/util/ScriptManager;)V

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 60
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method

.method public setSetBeans(Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptFilter;->token:Ljava/lang/String;

    return-void
.end method
