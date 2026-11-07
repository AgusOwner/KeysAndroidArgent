.class public Lorg/apache/tools/ant/types/CommandlineJava;
.super Ljava/lang/Object;
.source "CommandlineJava.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;,
        Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;
    }
.end annotation


# instance fields
.field private assertions:Lorg/apache/tools/ant/types/Assertions;

.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private cloneVm:Z

.field private executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

.field private javaCommand:Lorg/apache/tools/ant/types/Commandline;

.field private maxMemory:Ljava/lang/String;

.field private modulepath:Lorg/apache/tools/ant/types/Path;

.field private sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

.field private upgrademodulepath:Lorg/apache/tools/ant/types/Path;

.field private vmCommand:Lorg/apache/tools/ant/types/Commandline;

.field private vmVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 47
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 51
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->cloneVm:Z

    const-string v0, "java"

    .line 228
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setVmversion(Ljava/lang/String;)V

    return-void
.end method

.method private addCommandsToList(Ljava/util/ListIterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->addCommandToList(Ljava/util/ListIterator;)V

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addDefinitionsToList(Ljava/util/ListIterator;)V

    .line 517
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->isCloneVm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;-><init>()V

    .line 519
    new-instance v1, Lorg/apache/tools/ant/types/PropertySet;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/PropertySet;-><init>()V

    .line 520
    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;-><init>()V

    const-string v3, "system"

    .line 521
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;->setValue(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/PropertySet;->appendBuiltin(Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;)V

    .line 523
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 524
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addDefinitionsToList(Ljava/util/ListIterator;)V

    :cond_0
    const/4 v0, 0x1

    .line 527
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-Xbootclasspath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 532
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveClasspath()Z

    move-result v0

    const-string v1, "ignore"

    if-eqz v0, :cond_2

    const-string v0, "-classpath"

    .line 533
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 537
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveModulepath()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "--module-path"

    .line 538
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 542
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveUpgrademodulepath()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "--upgrade-module-path"

    .line 543
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 547
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 548
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Assertions;->applyAssertions(Ljava/util/ListIterator;)V

    .line 554
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_6

    const-string v0, "-jar"

    .line 555
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_7

    const-string v0, "-m"

    .line 557
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 564
    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->addCommandToList(Ljava/util/ListIterator;)V

    return-void
.end method

.method private calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 832
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "Ignoring bootclasspath as the target VM doesn\'t support it."

    .line 834
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->log(Ljava/lang/String;)V

    .line 846
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/types/Path;

    invoke-direct {p1, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    return-object p1

    .line 837
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez p1, :cond_2

    .line 839
    new-instance p1, Lorg/apache/tools/ant/types/Path;

    invoke-direct {p1, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 844
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->isCloneVm()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "last"

    goto :goto_0

    :cond_3
    const-string v0, "ignore"

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    return-object p1
.end method

.method private static createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%s/%s"

    .line 867
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isCloneVm()Z
    .locals 1

    .line 856
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->cloneVm:Z

    if-nez v0, :cond_1

    const-string v0, "ant.build.clonevm"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private static parseClassFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    .line 894
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 895
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    aget-object v0, p0, v0

    :cond_1
    return-object v0
.end method

.method private static parseModuleFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 880
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 881
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method public addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSysproperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V

    return-void
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    return-void
.end method

.method public clearJavaArgs()V
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clearArgs()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 744
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/CommandlineJava;

    .line 745
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 746
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 747
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 748
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 751
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 754
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_2

    .line 755
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 757
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_3

    .line 758
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Path;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 760
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    if-eqz v1, :cond_4

    .line 761
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Assertions;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Assertions;

    iput-object v1, v0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 765
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createBootclasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 456
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object p1
.end method

.method public createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 443
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object p1
.end method

.method public createModulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 469
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    return-object p1
.end method

.method public createUpgrademodulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 482
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    return-object p1
.end method

.method public createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public describeCommand()Ljava/lang/String;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeJavaCommand()Ljava/lang/String;
    .locals 1

    .line 604
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJavaCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 4

    .line 612
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline;

    .line 613
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-mx"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-Xmx"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAssertions()Lorg/apache/tools/ant/types/Assertions;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    return-object v0
.end method

.method public getBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-eqz v0, :cond_2

    .line 360
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->parseClassFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCommandline()[Ljava/lang/String;
    .locals 2

    .line 499
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 501
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->addCommandsToList(Ljava/util/ListIterator;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getJar()Ljava/lang/String;
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 2

    .line 428
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->parseModuleFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModulepath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 697
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->SOURCE_FILE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSystemProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;
    .locals 1

    .line 732
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    return-object v0
.end method

.method public getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getVmCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    .line 672
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method

.method public getVmversion()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected haveBootclasspath(Z)Z
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public haveClasspath()Z
    .locals 2

    .line 783
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public haveModulepath()Z
    .locals 2

    .line 807
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    const-string v1, "ignore"

    .line 808
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public haveUpgrademodulepath()Z
    .locals 2

    .line 819
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    const-string v1, "ignore"

    .line 820
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public restoreSystemProperties()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->restoreSystem()V

    return-void
.end method

.method public setAssertions(Lorg/apache/tools/ant/types/Assertions;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->assertions:Lorg/apache/tools/ant/types/Assertions;

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 345
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->parseModuleFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 349
    sget-object p1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->CLASS:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    :goto_0
    return-void
.end method

.method public setCloneVm(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->cloneVm:Z

    return-void
.end method

.method public setJar(Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 322
    sget-object p1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->maxMemory:Ljava/lang/String;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 3

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 412
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->parseClassFromModuleClassPair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {p1, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    .line 408
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {p1, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModuleClassPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    .line 417
    :goto_0
    sget-object p1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 1

    .line 379
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->SOURCE_FILE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    return-void
.end method

.method public setSystemProperties()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->setSystem()V

    return-void
.end method

.method public setVm(Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    return-void
.end method

.method public setVmversion(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->vmVersion:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getActualVMCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->javaCommand:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->sysProperties:Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    .line 635
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    invoke-direct {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->isCloneVm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->haveClasspath()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v1, 0x1

    .line 645
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->calculateBootclasspath(Z)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 649
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v2, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/types/CommandlineJava;->executableType:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    sget-object v2, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    if-ne v1, v2, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 653
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 654
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Assertions;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 582
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
