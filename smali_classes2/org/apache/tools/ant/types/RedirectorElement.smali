.class public Lorg/apache/tools/ant/types/RedirectorElement;
.super Lorg/apache/tools/ant/types/DataType;
.source "RedirectorElement.java"


# instance fields
.field private alwaysLog:Ljava/lang/Boolean;

.field private append:Ljava/lang/Boolean;

.field private createEmptyFiles:Ljava/lang/Boolean;

.field private errorEncoding:Ljava/lang/String;

.field private errorFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private errorMapper:Lorg/apache/tools/ant/types/Mapper;

.field private errorProperty:Ljava/lang/String;

.field private inputEncoding:Ljava/lang/String;

.field private inputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private inputMapper:Lorg/apache/tools/ant/types/Mapper;

.field private inputString:Ljava/lang/String;

.field private logError:Ljava/lang/Boolean;

.field private logInputString:Ljava/lang/Boolean;

.field private outputEncoding:Ljava/lang/String;

.field private outputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private outputIsBinary:Z

.field private outputMapper:Lorg/apache/tools/ant/types/Mapper;

.field private outputProperty:Ljava/lang/String;

.field private usingError:Z

.field private usingInput:Z

.field private usingOutput:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    .line 46
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    .line 88
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    .line 91
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    .line 94
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    .line 109
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputIsBinary:Z

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/RedirectorElement;
    .locals 1

    .line 627
    const-class v0, Lorg/apache/tools/ant/types/RedirectorElement;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/RedirectorElement;

    return-object v0
.end method


# virtual methods
.method public addConfiguredErrorMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1

    .line 160
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "attribute \"error\" cannot coexist with a nested <errormapper>"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot have > 1 <errormapper>"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 168
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addConfiguredInputMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1

    .line 120
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "attribute \"input\" cannot coexist with a nested <inputmapper>"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot have > 1 <inputmapper>"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 117
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addConfiguredOutputMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1

    .line 140
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    if-eqz p1, :cond_0

    .line 141
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "attribute \"output\" cannot coexist with a nested <outputmapper>"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot have > 1 <outputmapper>"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    .line 148
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 137
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/Redirector;)V
    .locals 1

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    return-void
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V
    .locals 3

    .line 461
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getRef()Lorg/apache/tools/ant/types/RedirectorElement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->dieOnCircularReference()V

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->alwaysLog:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAlwaysLog(Z)V

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logError:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogError(Z)V

    .line 472
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->append:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 473
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppend(Z)V

    .line 475
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->createEmptyFiles:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 476
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setCreateEmptyFiles(Z)V

    .line 478
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputProperty:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 479
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputProperty(Ljava/lang/String;)V

    .line 481
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorProperty:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 482
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorProperty(Ljava/lang/String;)V

    .line 484
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 485
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputString(Ljava/lang/String;)V

    .line 487
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logInputString:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 488
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogInputString(Z)V

    .line 490
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 494
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p2, :cond_9

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_a

    .line 500
    array-length v2, v0

    if-lez v2, :cond_a

    .line 501
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->toFileArray([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput([Ljava/io/File;)V

    goto :goto_1

    .line 497
    :cond_9
    throw v0

    .line 504
    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_c

    .line 508
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    if-nez p2, :cond_b

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_c

    .line 514
    array-length v2, v0

    if-lez v2, :cond_c

    .line 515
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/RedirectorElement;->toFileArray([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput([Ljava/io/File;)V

    goto :goto_3

    .line 511
    :cond_b
    throw v0

    .line 518
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_e

    .line 522
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    if-nez p2, :cond_d

    :goto_4
    if-eqz v1, :cond_e

    .line 528
    array-length p2, v1

    if-lez p2, :cond_e

    .line 529
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->toFileArray([Ljava/lang/String;)[Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError([Ljava/io/File;)V

    goto :goto_5

    .line 525
    :cond_d
    throw v0

    .line 532
    :cond_e
    :goto_5
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 533
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputFilterChains(Ljava/util/Vector;)V

    .line 535
    :cond_f
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    .line 536
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputFilterChains(Ljava/util/Vector;)V

    .line 538
    :cond_10
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    .line 539
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorFilterChains(Ljava/util/Vector;)V

    .line 541
    :cond_11
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputEncoding:Ljava/lang/String;

    if-eqz p2, :cond_12

    .line 542
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputEncoding(Ljava/lang/String;)V

    .line 544
    :cond_12
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputEncoding:Ljava/lang/String;

    if-eqz p2, :cond_13

    .line 545
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputEncoding(Ljava/lang/String;)V

    .line 547
    :cond_13
    iget-object p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorEncoding:Ljava/lang/String;

    if-eqz p2, :cond_14

    .line 548
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorEncoding(Ljava/lang/String;)V

    .line 550
    :cond_14
    iget-boolean p2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputIsBinary:Z

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setBinaryOutput(Z)V

    return-void
.end method

.method public createErrorFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .locals 2

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 427
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 428
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 429
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    return-object v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createInputFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .locals 2

    .line 393
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 397
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 398
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;
    .locals 2

    .line 559
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 560
    const-class v1, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Mapper;->setClassname(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->setTo(Ljava/lang/String;)V

    return-object v0
.end method

.method public createOutputFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .locals 2

    .line 408
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 412
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterChain;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 413
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 414
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [Lorg/apache/tools/ant/types/Mapper;

    .line 600
    iget-object v2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Mapper;

    if-eqz v2, :cond_2

    .line 602
    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {v2, p1, p2}, Lorg/apache/tools/ant/types/Mapper;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 604
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-array v0, v0, [Ljava/util/List;

    .line 607
    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputFilterChains:Ljava/util/Vector;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputFilterChains:Ljava/util/Vector;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorFilterChains:Ljava/util/Vector;

    aput-object v1, v0, v5

    .line 608
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 610
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 612
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/FilterChain;

    .line 613
    invoke-static {v2, p1, p2}, Lorg/apache/tools/ant/types/RedirectorElement;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 617
    :cond_5
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/types/RedirectorElement;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method public setAlwaysLog(Z)V
    .locals 1

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 359
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->alwaysLog:Ljava/lang/Boolean;

    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setAppend(Z)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 345
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->append:Ljava/lang/Boolean;

    return-void

    .line 343
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setBinaryOutput(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputIsBinary:Z

    return-void
.end method

.method public setCreateEmptyFiles(Z)V
    .locals 1

    .line 368
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 372
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->createEmptyFiles:Ljava/lang/Boolean;

    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setError(Ljava/io/File;)V
    .locals 1

    .line 312
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    .line 319
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RedirectorElement;->createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorMapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error file specified as null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setErrorEncoding(Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorEncoding:Ljava/lang/String;

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .locals 1

    .line 382
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorProperty:Ljava/lang/String;

    return-void

    .line 383
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setInput(Ljava/io/File;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RedirectorElement;->createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputMapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 207
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputEncoding:Ljava/lang/String;

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setInputString(Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    if-nez v0, :cond_0

    .line 226
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    return-void

    .line 223
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setLogError(Z)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 304
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logError:Ljava/lang/Boolean;

    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setLogInputString(Z)V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 239
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logInputString:Ljava/lang/Boolean;

    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RedirectorElement;->createMergeMapper(Ljava/io/File;)Lorg/apache/tools/ant/types/Mapper;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputMapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "output file specified as null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputEncoding:Ljava/lang/String;

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setOutputProperty(Ljava/lang/String;)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iput-object p1, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputProperty:Ljava/lang/String;

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingOutput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->usingError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logError:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->append:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->createEmptyFiles:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->inputEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->outputProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->errorProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/RedirectorElement;->logInputString:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 195
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method protected toFileArray([Ljava/lang/String;)[Ljava/io/File;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 575
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    .line 578
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RedirectorElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/io/File;

    .line 581
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    return-object p1
.end method
