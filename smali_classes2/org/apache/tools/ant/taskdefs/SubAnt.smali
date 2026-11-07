.class public Lorg/apache/tools/ant/taskdefs/SubAnt;
.super Lorg/apache/tools/ant/Task;
.source "SubAnt.java"


# instance fields
.field private ant:Lorg/apache/tools/ant/taskdefs/Ant;

.field private antfile:Ljava/lang/String;

.field private buildpath:Lorg/apache/tools/ant/types/Path;

.field private failOnError:Z

.field private genericantfile:Ljava/io/File;

.field private inheritAll:Z

.field private inheritRefs:Z

.field private output:Ljava/lang/String;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertySets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field

.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Ant$Reference;",
            ">;"
        }
    .end annotation
.end field

.field private subTarget:Ljava/lang/String;

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;",
            ">;"
        }
    .end annotation
.end field

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->antfile:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->genericantfile:Ljava/io/File;

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    .line 70
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritAll:Z

    .line 71
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritRefs:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->output:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->properties:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->references:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->propertySets:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->targets:Ljava/util/List;

    return-void
.end method

.method private static copyProperty(Lorg/apache/tools/ant/taskdefs/Property;Lorg/apache/tools/ant/taskdefs/Property;)V
    .locals 1

    .line 607
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setName(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setValue(Ljava/lang/String;)V

    .line 612
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setFile(Ljava/io/File;)V

    .line 615
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getResource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setResource(Ljava/lang/String;)V

    .line 618
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setPrefix(Ljava/lang/String;)V

    .line 621
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 624
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 625
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setEnvironment(Ljava/lang/String;)V

    .line 627
    :cond_5
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 628
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Property;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Property;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    :cond_6
    return-void
.end method

.method private createAntTask(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Ant;
    .locals 2

    .line 570
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Ant;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 571
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->init()V

    .line 572
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setTarget(Ljava/lang/String;)V

    .line 577
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->output:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setOutput(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 582
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setDir(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 584
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setUseNativeBasedir(Z)V

    .line 587
    :goto_0
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritAll:Z

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritAll(Z)V

    .line 589
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->properties:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 591
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->propertySets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 593
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritRefs:Z

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritRefs(Z)V

    .line 595
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->references:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private execute(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "\' of: "

    const-string v2, "Failure for target \'"

    const-string v3, "Executing: "

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 297
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/SubAnt;->createAntTask(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Ant;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 299
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setAntfile(Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->targets:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lorg/apache/tools/ant/taskdefs/SubAnt$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {p2, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    .line 303
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v4, :cond_1

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 306
    :cond_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Ant;->execute()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_0
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 315
    :try_start_1
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/SubAnt;->isHardError(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 320
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 316
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception v3

    .line 308
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    if-nez v4, :cond_3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/SubAnt;->isHardError(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 313
    invoke-virtual {v3}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    return-void

    .line 309
    :cond_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 323
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 324
    throw p1

    .line 289
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    if-nez p2, :cond_5

    .line 293
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    return-void

    .line 291
    :cond_5
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getBuildpath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method private isHardError(Ljava/lang/Throwable;)Z
    .locals 1

    .line 329
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->isHardError(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    .line 332
    :cond_0
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_2

    instance-of p1, p1, Ljava/lang/ThreadDeath;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic lambda$createAntTask$0(Lorg/apache/tools/ant/taskdefs/Ant;Lorg/apache/tools/ant/taskdefs/Property;)V
    .locals 0

    .line 589
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->createProperty()Lorg/apache/tools/ant/taskdefs/Property;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->copyProperty(Lorg/apache/tools/ant/taskdefs/Property;Lorg/apache/tools/ant/taskdefs/Property;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 509
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V
    .locals 1

    .line 387
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 388
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "target name must not be empty"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addDirset(Lorg/apache/tools/ant/types/DirSet;)V
    .locals 0

    .line 472
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SubAnt;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addProperty(Lorg/apache/tools/ant/taskdefs/Property;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->propertySets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createBuildpath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 527
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createBuildpathElement()Lorg/apache/tools/ant/types/Path$PathElement;
    .locals 1

    .line 537
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Leaving directory: "

    const-string v3, "\n"

    .line 189
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->buildpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_d

    .line 193
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v4

    .line 194
    array-length v0, v4

    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    const-string v0, "No sub-builds to iterate on"

    .line 196
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    return-void

    .line 206
    :cond_0
    array-length v5, v4

    const/4 v6, 0x0

    move v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_b

    aget-object v0, v4, v8

    const/4 v10, 0x2

    .line 212
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 213
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entering directory: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 218
    :goto_1
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->genericantfile:Ljava/io/File;

    if-eqz v0, :cond_2

    move-object/from16 v16, v11

    move-object v11, v0

    move-object/from16 v0, v16

    goto :goto_2

    .line 222
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->antfile:Ljava/lang/String;

    invoke-direct {v0, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 225
    :goto_2
    invoke-direct {v1, v11, v0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->execute(Ljava/io/File;Ljava/io/File;)V

    .line 226
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v0, :cond_4

    if-eqz v12, :cond_4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x0

    .line 238
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v13

    if-nez v13, :cond_7

    .line 239
    iget-boolean v4, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v4, :cond_5

    if-eqz v12, :cond_5

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 242
    :cond_5
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x0

    .line 230
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v13

    if-nez v13, :cond_7

    .line 231
    iget-boolean v4, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v4, :cond_6

    if-eqz v12, :cond_6

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 234
    :cond_6
    throw v0

    :cond_7
    :goto_7
    if-eqz v0, :cond_a

    .line 247
    instance-of v13, v0, Lorg/apache/tools/ant/BuildException;

    const-string v14, "\'."

    const-string v15, "\' failed with message \'"

    if-eqz v13, :cond_8

    .line 248
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v7, "File \'"

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual {v1, v7, v6}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    if-nez v9, :cond_9

    .line 253
    move-object v9, v0

    check-cast v9, Lorg/apache/tools/ant/BuildException;

    goto :goto_8

    .line 256
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Target \'"

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-virtual {v1, v7, v6}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    .line 259
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    if-nez v9, :cond_9

    .line 261
    new-instance v9, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v9, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 265
    :cond_9
    :goto_8
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    if-eqz v0, :cond_a

    if-eqz v12, :cond_a

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lorg/apache/tools/ant/taskdefs/SubAnt;->log(Ljava/lang/String;I)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_b
    if-nez v9, :cond_c

    return-void

    .line 272
    :cond_c
    throw v9

    .line 190
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "No buildpath specified"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDefaultBuildFile()Ljava/lang/String;
    .locals 1

    const-string v0, "build.xml"

    return-object v0
.end method

.method public handleErrorFlush(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleErrorOutput(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleFlush(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleInput([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Ant;->handleInput([BII)I

    move-result p1

    return p1

    .line 132
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result p1

    return p1
.end method

.method public handleOutput(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->ant:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAntfile(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->antfile:Ljava/lang/String;

    return-void
.end method

.method public setBuildpath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 518
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->getBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setBuildpathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 558
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SubAnt;->createBuildpath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setFailonerror(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->failOnError:Z

    return-void
.end method

.method public setGenericAntfile(Ljava/io/File;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->genericantfile:Ljava/io/File;

    return-void
.end method

.method public setInheritall(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritAll:Z

    return-void
.end method

.method public setInheritrefs(Z)V
    .locals 0

    .line 429
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->inheritRefs:Z

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->output:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->subTarget:Ljava/lang/String;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 399
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SubAnt;->verbose:Z

    return-void
.end method
