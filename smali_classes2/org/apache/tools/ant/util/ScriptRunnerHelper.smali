.class public Lorg/apache/tools/ant/util/ScriptRunnerHelper;
.super Ljava/lang/Object;
.source "ScriptRunnerHelper.java"


# instance fields
.field private compiled:Z

.field private cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

.field private encoding:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private manager:Lorg/apache/tools/ant/util/ScriptManager;

.field private projectComponent:Lorg/apache/tools/ant/ProjectComponent;

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private scriptLoader:Ljava/lang/ClassLoader;

.field private setBeans:Z

.field private srcFile:Ljava/io/File;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    .line 37
    sget-object v1, Lorg/apache/tools/ant/util/ScriptManager;->auto:Lorg/apache/tools/ant/util/ScriptManager;

    iput-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->manager:Lorg/apache/tools/ant/util/ScriptManager;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setBeans:Z

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;

    .line 42
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->resources:Lorg/apache/tools/ant/types/resources/Union;

    return-void
.end method

.method private declared-synchronized generateClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 236
    monitor-exit p0

    return-object v0

    .line 238
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit p0

    return-object v0

    .line 242
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 251
    invoke-static {v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getDelegate(Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access classpath without a project component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    return-object v0
.end method

.method private getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 4

    .line 260
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;-><init>(Lorg/apache/tools/ant/Project;)V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->manager:Lorg/apache/tools/ant/util/ScriptManager;

    iget-object v2, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->language:Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->generateClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 260
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->createRunner(Lorg/apache/tools/ant/util/ScriptManager;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->text:Ljava/lang/String;

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCompiled()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;
    .locals 2

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setCompiled(Z)V

    .line 60
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setEncoding(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->srcFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setSrc(Ljava/io/File;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addText(Ljava/lang/String;)V

    .line 70
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->loadResources(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 73
    :cond_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setBeans:Z

    if-eqz v1, :cond_4

    .line 74
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->bindToComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->bindToComponentMinimum(Lorg/apache/tools/ant/ProjectComponent;)V

    :goto_0
    return-object v0
.end method

.method public getSrc()Ljava/io/File;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->srcFile:Ljava/io/File;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->scriptLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getClassPathDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setClasspathref(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setCompiled(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->compiled:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->language:Ljava/lang/String;

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/ScriptManager;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/util/ScriptManager;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Lorg/apache/tools/ant/util/ScriptManager;)V

    return-void
.end method

.method public setManager(Lorg/apache/tools/ant/util/ScriptManager;)V
    .locals 0

    if-nez p1, :cond_0

    .line 170
    sget-object p1, Lorg/apache/tools/ant/util/ScriptManager;->auto:Lorg/apache/tools/ant/util/ScriptManager;

    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->manager:Lorg/apache/tools/ant/util/ScriptManager;

    return-void
.end method

.method public setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->projectComponent:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method

.method public setSetBeans(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setBeans:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->srcFile:Ljava/io/File;

    return-void
.end method
