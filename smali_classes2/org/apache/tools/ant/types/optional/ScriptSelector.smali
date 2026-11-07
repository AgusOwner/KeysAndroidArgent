.class public Lorg/apache/tools/ant/types/optional/ScriptSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "ScriptSelector.java"


# instance fields
.field private basedir:Ljava/io/File;

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    .line 40
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBasedir()Ljava/io/File;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->basedir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->selected:Z

    return v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 182
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/ScriptSelector;->init()V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/optional/ScriptSelector;->setSelected(Z)V

    .line 184
    iput-object p3, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->file:Ljava/io/File;

    .line 185
    iput-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->basedir:Ljava/io/File;

    .line 186
    iput-object p2, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->filename:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v1, "basedir"

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string v0, "filename"

    invoke-virtual {p1, v0, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string p2, "file"

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->runner:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    const-string p2, "ant_selector"

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptSelector;->isSelected()Z

    move-result p1

    return p1
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Lorg/apache/tools/ant/util/ScriptManager;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Lorg/apache/tools/ant/util/ScriptManager;)V

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 66
    iget-object p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->selected:Z

    return-void
.end method

.method public setSetBeans(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/optional/ScriptSelector;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    return-void
.end method
