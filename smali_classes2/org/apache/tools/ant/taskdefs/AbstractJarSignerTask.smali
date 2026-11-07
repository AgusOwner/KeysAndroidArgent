.class public abstract Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;
.super Lorg/apache/tools/ant/Task;
.source "AbstractJarSignerTask.java"


# static fields
.field public static final ERROR_NO_SOURCE:Ljava/lang/String; = "jar must be set through jar attribute or nested filesets"

.field protected static final JARSIGNER_COMMAND:Ljava/lang/String; = "jarsigner"


# instance fields
.field private additionalArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Commandline$Argument;",
            ">;"
        }
    .end annotation
.end field

.field protected alias:Ljava/lang/String;

.field private executable:Ljava/lang/String;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field protected jar:Ljava/io/File;

.field protected keypass:Ljava/lang/String;

.field protected keystore:Ljava/lang/String;

.field protected maxMemory:Ljava/lang/String;

.field private path:Lorg/apache/tools/ant/types/Path;

.field private providerArg:Ljava/lang/String;

.field private providerClass:Ljava/lang/String;

.field private providerName:Ljava/lang/String;

.field private redirector:Lorg/apache/tools/ant/types/RedirectorElement;

.field protected storepass:Ljava/lang/String;

.field protected storetype:Ljava/lang/String;

.field protected strict:Z

.field private sysProperties:Lorg/apache/tools/ant/types/Environment;

.field protected verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->strict:Z

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->filesets:Ljava/util/Vector;

    .line 106
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->sysProperties:Lorg/apache/tools/ant/types/Environment;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->path:Lorg/apache/tools/ant/types/Path;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->additionalArgs:Ljava/util/List;

    return-void
.end method

.method private createRedirector()Lorg/apache/tools/ant/types/RedirectorElement;
    .locals 4

    .line 311
    new-instance v0, Lorg/apache/tools/ant/types/RedirectorElement;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RedirectorElement;-><init>()V

    .line 312
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->storepass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->storepass:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->keypass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setInputString(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setLogInputString(Z)V

    .line 320
    new-instance v1, Lorg/apache/tools/ant/filters/LineContainsRegExp;

    invoke-direct {v1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;-><init>()V

    .line 321
    new-instance v2, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    const-string v3, "^(Enter Passphrase for keystore: |Enter key password for .+: )$"

    .line 323
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->addConfiguredRegexp(Lorg/apache/tools/ant/types/RegularExpression;)V

    const/4 v2, 0x1

    .line 325
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setNegate(Z)V

    .line 326
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/RedirectorElement;->createErrorFilterChain()Lorg/apache/tools/ant/types/FilterChain;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/FilterChain;->addLineContainsRegExp(Lorg/apache/tools/ant/filters/LineContainsRegExp;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addArg(Lorg/apache/tools/ant/types/Commandline$Argument;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->additionalArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addArgument(Lorg/apache/tools/ant/taskdefs/ExecTask;Lorg/apache/tools/ant/types/Commandline$Argument;)V
    .locals 0

    .line 502
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->copyFrom(Lorg/apache/tools/ant/types/Commandline$Argument;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->sysProperties:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method

.method protected addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V
    .locals 0

    .line 493
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected beginExecution()V
    .locals 1

    .line 295
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->createRedirector()Lorg/apache/tools/ant/types/RedirectorElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->redirector:Lorg/apache/tools/ant/types/RedirectorElement;

    return-void
.end method

.method protected bindToKeystore(Lorg/apache/tools/ant/taskdefs/ExecTask;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->keystore:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "-keystore"

    .line 395
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->keystore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->keystore:Ljava/lang/String;

    .line 404
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->storetype:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "-storetype"

    .line 407
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->storetype:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 410
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "-providerName"

    .line 411
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 414
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerClass:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "-providerClass"

    .line 415
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerClass:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerArg:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "-providerArg"

    .line 418
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerArg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_4
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerArg:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, "Ignoring providerArg as providerClass has not been set"

    .line 422
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->log(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected createJarSigner()Lorg/apache/tools/ant/taskdefs/ExecTask;
    .locals 3

    .line 432
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 433
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->executable:Ljava/lang/String;

    const-string v2, "jarsigner"

    if-nez v1, :cond_0

    .line 434
    invoke-static {v2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 438
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setTaskType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 439
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setFailonerror(Z)V

    .line 440
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->redirector:Lorg/apache/tools/ant/types/RedirectorElement;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->addConfiguredRedirector(Lorg/apache/tools/ant/types/RedirectorElement;)V

    return-object v0
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->path:Lorg/apache/tools/ant/types/Path;

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected createUnifiedSourcePath()Lorg/apache/tools/ant/types/Path;
    .locals 3

    .line 471
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Path;

    .line 472
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->createUnifiedSources()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/FileSet;

    .line 473
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected createUnifiedSources()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->filesets:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 451
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->jar:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 456
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 457
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->jar:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 458
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected declareSysProperty(Lorg/apache/tools/ant/taskdefs/ExecTask;Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-J-D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Environment$Variable;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    return-void
.end method

.method protected endExecution()V
    .locals 1

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->redirector:Lorg/apache/tools/ant/types/RedirectorElement;

    return-void
.end method

.method public getRedirector()Lorg/apache/tools/ant/types/RedirectorElement;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->redirector:Lorg/apache/tools/ant/types/RedirectorElement;

    return-object v0
.end method

.method protected hasResources()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->alias:Ljava/lang/String;

    return-void
.end method

.method protected setCommonOptions(Lorg/apache/tools/ant/taskdefs/ExecTask;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->maxMemory:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-J-Xmx"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->maxMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->verbose:Z

    if-eqz v0, :cond_1

    const-string v0, "-verbose"

    .line 360
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->strict:Z

    if-eqz v0, :cond_2

    const-string v0, "-strict"

    .line 364
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 368
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->sysProperties:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariablesVector()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Environment$Variable;

    .line 369
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->declareSysProperty(Lorg/apache/tools/ant/taskdefs/ExecTask;Lorg/apache/tools/ant/types/Environment$Variable;)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->additionalArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline$Argument;

    .line 373
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->addArgument(Lorg/apache/tools/ant/taskdefs/ExecTask;Lorg/apache/tools/ant/types/Commandline$Argument;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->executable:Ljava/lang/String;

    return-void
.end method

.method public setJar(Ljava/io/File;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->jar:Ljava/io/File;

    return-void
.end method

.method public setKeypass(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->keypass:Ljava/lang/String;

    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->keystore:Ljava/lang/String;

    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->maxMemory:Ljava/lang/String;

    return-void
.end method

.method public setProviderArg(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerArg:Ljava/lang/String;

    return-void
.end method

.method public setProviderClass(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerClass:Ljava/lang/String;

    return-void
.end method

.method public setProviderName(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->providerName:Ljava/lang/String;

    return-void
.end method

.method public setStorepass(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->storepass:Ljava/lang/String;

    return-void
.end method

.method public setStoretype(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->storetype:Ljava/lang/String;

    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->strict:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;->verbose:Z

    return-void
.end method
