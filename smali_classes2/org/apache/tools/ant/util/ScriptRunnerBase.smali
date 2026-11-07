.class public abstract Lorg/apache/tools/ant/util/ScriptRunnerBase;
.super Ljava/lang/Object;
.source "ScriptRunnerBase.java"


# instance fields
.field private final beans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private compiled:Z

.field private encoding:Ljava/lang/String;

.field private keepEngine:Z

.field private language:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private script:Ljava/lang/String;

.field private scriptLoader:Ljava/lang/ClassLoader;


# direct methods
.method public static synthetic $r8$lambda$VijeYVlrzGR10pndPfJ8-obqzBU(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->keepEngine:Z

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->beans:Ljava/util/Map;

    return-void
.end method

.method private readSource(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 242
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 242
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 246
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public addBean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/IntStream;->skip(J)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->beans:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addBeans(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    return-void
.end method

.method public bindToComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 3

    .line 334
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getPropertyNames()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 338
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCopyOfTargets()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    .line 340
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCopyOfReferences()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBeans(Ljava/util/Map;)V

    const-string v0, "project"

    .line 341
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "self"

    .line 342
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bindToComponentMinimum(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 2

    .line 351
    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "project"

    .line 352
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "self"

    .line 353
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected checkLanguage()V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "script language must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearScript()V
    .locals 1

    const-string v0, ""

    .line 308
    iput-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    return-void
.end method

.method public abstract evaluateScript(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract executeScript(Ljava/lang/String;)V
.end method

.method protected getBeans()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->beans:Ljava/util/Map;

    return-object v0
.end method

.method public final getCompiled()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->compiled:Z

    return v0
.end method

.method public getKeepEngine()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->keepEngine:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->language:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getManagerName()Ljava/lang/String;
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    return-object v0
.end method

.method protected getScriptClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->scriptLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method synthetic lambda$addBeans$0$org-apache-tools-ant-util-ScriptRunnerBase(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 78
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$bindToComponent$1$org-apache-tools-ant-util-ScriptRunnerBase(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 4

    const-string v0, "Failed to open "

    .line 257
    instance-of v1, p1, Lorg/apache/tools/ant/types/resources/StringResource;

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    return-void

    .line 261
    :cond_0
    instance-of v1, p1, Lorg/apache/tools/ant/types/resources/PropertyResource;

    if-eqz v1, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lorg/apache/tools/ant/types/resources/PropertyResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/PropertyResource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->script:Ljava/lang/String;

    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v1

    .line 267
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->readSource(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 269
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    .line 267
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 272
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - it is not readable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 270
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public loadResources(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 284
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;)V

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/types/ResourceCollection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected replaceContextLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->getScriptClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->setScriptClassLoader(Ljava/lang/ClassLoader;)V

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->getScriptClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method protected restoreContextLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public final setCompiled(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->compiled:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setKeepEngine(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->keepEngine:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->language:Ljava/lang/String;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public setScriptClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->scriptLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 5

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, " not found."

    const-string v3, "file "

    if-eqz v1, :cond_3

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase;->encoding:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 228
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->readSource(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 229
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_2

    .line 224
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 231
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 221
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract supportsLanguage()Z
.end method
