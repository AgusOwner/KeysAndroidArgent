.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "JonasDeploymentTool.java"


# static fields
.field protected static final DAVID_ORB:Ljava/lang/String; = "DAVID"

.field protected static final EJB_JAR_1_1_DTD:Ljava/lang/String; = "ejb-jar_1_1.dtd"

.field protected static final EJB_JAR_1_1_PUBLIC_ID:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field protected static final EJB_JAR_2_0_DTD:Ljava/lang/String; = "ejb-jar_2_0.dtd"

.field protected static final EJB_JAR_2_0_PUBLIC_ID:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

.field protected static final GENIC_CLASS:Ljava/lang/String; = "org.objectweb.jonas_ejb.genic.GenIC"

.field protected static final JEREMIE_ORB:Ljava/lang/String; = "JEREMIE"

.field protected static final JONAS_DD:Ljava/lang/String; = "jonas-ejb-jar.xml"

.field protected static final JONAS_EJB_JAR_2_4_DTD:Ljava/lang/String; = "jonas-ejb-jar_2_4.dtd"

.field protected static final JONAS_EJB_JAR_2_4_PUBLIC_ID:Ljava/lang/String; = "-//ObjectWeb//DTD JOnAS 2.4//EN"

.field protected static final JONAS_EJB_JAR_2_5_DTD:Ljava/lang/String; = "jonas-ejb-jar_2_5.dtd"

.field protected static final JONAS_EJB_JAR_2_5_PUBLIC_ID:Ljava/lang/String; = "-//ObjectWeb//DTD JOnAS 2.5//EN"

.field protected static final OLD_GENIC_CLASS_1:Ljava/lang/String; = "org.objectweb.jonas_ejb.tools.GenWholeIC"

.field protected static final OLD_GENIC_CLASS_2:Ljava/lang/String; = "org.objectweb.jonas_ejb.tools.GenIC"

.field protected static final RMI_ORB:Ljava/lang/String; = "RMI"


# instance fields
.field private additionalargs:Ljava/lang/String;

.field private descriptorName:Ljava/lang/String;

.field private javac:Ljava/lang/String;

.field private javacopts:Ljava/lang/String;

.field private jonasDescriptorName:Ljava/lang/String;

.field private jonasroot:Ljava/io/File;

.field private keepgenerated:Z

.field private keepgeneric:Z

.field private nocompil:Z

.field private nogenic:Z

.field private novalidation:Z

.field private orb:Ljava/lang/String;

.field private outputdir:Ljava/io/File;

.field private rmicopts:Ljava/lang/String;

.field private secpropag:Z

.field private suffix:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgenerated:Z

    .line 128
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nocompil:Z

    .line 134
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->novalidation:Z

    .line 154
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->secpropag:Z

    .line 160
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->verbose:Z

    .line 176
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    const-string v1, ".jar"

    .line 179
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->suffix:Ljava/lang/String;

    .line 192
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nogenic:Z

    return-void
.end method

.method private addAllFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 808
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 814
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 817
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 819
    :goto_1
    invoke-direct {p0, v2, v3, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->addAllFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p3, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 809
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private addGenICGeneratedFiles(Ljava/io/File;Ljava/util/Hashtable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 529
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nogenic:Z

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    const-string v1, "genic"

    .line 534
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 538
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-Dinstall.root="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    new-instance v2, Ljava/io/File;

    const-string v3, "java.policy"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-Djava.security.policy="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 550
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->createTempDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using temporary output directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 557
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-d"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 560
    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 561
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_2
    const-string v2, "Worked around a bug of GenIC 2.5."

    .line 564
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 567
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    if-nez v2, :cond_3

    .line 569
    new-instance v2, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 571
    :cond_3
    new-instance v4, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 572
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 575
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "lib"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_jonas.jar"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    new-instance v4, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 580
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Using classpath: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 581
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 588
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getGenicClassName(Lorg/apache/tools/ant/types/Path;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Using \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' GenIC class."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 594
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 597
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgenerated:Z

    if-eqz v2, :cond_5

    .line 598
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-keepgenerated"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 602
    :cond_5
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nocompil:Z

    if-eqz v2, :cond_6

    .line 603
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-nocompil"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 607
    :cond_6
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->novalidation:Z

    if-eqz v2, :cond_7

    .line 608
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-novalidation"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 612
    :cond_7
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 613
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-javac"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 618
    :cond_8
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javacopts:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 619
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-javacopts"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javacopts:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 624
    :cond_9
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->rmicopts:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 625
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-rmicopts"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->rmicopts:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 630
    :cond_a
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->secpropag:Z

    if-eqz v2, :cond_b

    .line 631
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-secpropag"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 635
    :cond_b
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->verbose:Z

    if-eqz v2, :cond_c

    .line 636
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-verbose"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 640
    :cond_c
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 641
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 646
    :cond_d
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-noaddinjar"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Calling "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 655
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v0

    if-eqz v0, :cond_f

    .line 658
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Deleting temp output directory \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 659
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->deleteAllFiles(Ljava/io/File;)V

    .line 661
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    if-nez p2, :cond_e

    .line 662
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Deleting generic JAR "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 667
    :cond_e
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "GenIC reported an error."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 671
    :cond_f
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->addAllFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void

    :cond_10
    const-string p1, "Cannot find GenIC class in classpath."

    const/4 p2, 0x0

    .line 590
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 591
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "GenIC class not found, please check the classpath."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 552
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create temp dir: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 553
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createTempDir()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    const-string v1, "genic"

    .line 781
    invoke-static {v1, v0}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private deleteAllFiles(Ljava/io/File;)V
    .locals 4

    .line 791
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 793
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->deleteAllFiles(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private getJonasDescriptorName()Ljava/lang/String;
    .locals 6

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 417
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 422
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    const-string v1, ""

    :goto_0
    const-string v4, "ejb-jar.xml"

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jonas-ejb-jar.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    :cond_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_3

    .line 441
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    sub-int/2addr v2, v4

    if-gez v2, :cond_2

    .line 444
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    :cond_2
    move v3, v2

    move v2, v4

    .line 450
    :cond_3
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    add-int/2addr v0, v4

    add-int/2addr v3, v4

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "jonas-"

    if-eqz v2, :cond_4

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 456
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Standard EJB descriptor name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JOnAS-specific descriptor name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getJonasDescriptorName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasDescriptorName:Ljava/lang/String;

    .line 377
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasDescriptorName:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "META-INF/jonas-ejb-jar.xml"

    .line 380
    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to locate the JOnAS deployment descriptor. It was expected to be in: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 382
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method protected checkConfiguration(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 740
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    if-eqz p1, :cond_7

    .line 743
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "JEREMIE"

    const-string p2, "DAVID"

    const-string v0, "RMI"

    .line 750
    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 753
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The orb attribute \'%s\' is not valid (must be one of %s."

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 760
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 761
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Empty additionalargs attribute."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 765
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 766
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Empty javac attribute."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void

    .line 744
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "The jonasroot attribute \'%s\' is not a valid directory."

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 741
    :cond_7
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "The jonasroot attribute is not set."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getGenicClassName(Lorg/apache/tools/ant/types/Path;)Ljava/lang/String;
    .locals 5

    const-string v0, "org.objectweb.jonas_ejb.tools.GenIC"

    const-string v1, "org.objectweb.jonas_ejb.tools.GenWholeIC"

    const-string v2, "org.objectweb.jonas_ejb.genic.GenIC"

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Looking for GenIC class in classpath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 683
    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 686
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    .line 689
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const-string v3, "Found GenIC class \'org.objectweb.jonas_ejb.genic.GenIC\' in classpath."

    .line 690
    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 725
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "GenIC class \'org.objectweb.jonas_ejb.genic.GenIC\' not found in classpath."

    .line 695
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "Found GenIC class \'org.objectweb.jonas_ejb.tools.GenWholeIC\' in classpath."

    .line 702
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_1
    return-object v1

    :catch_1
    :try_start_3
    const-string v1, "GenIC class \'org.objectweb.jonas_ejb.tools.GenWholeIC\' not found in classpath."

    .line 708
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 714
    :try_start_4
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "Found GenIC class \'org.objectweb.jonas_ejb.tools.GenIC\' in classpath."

    .line 715
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_2

    .line 725
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_2
    return-object v0

    :catch_2
    :try_start_5
    const-string v0, "GenIC class \'org.objectweb.jonas_ejb.tools.GenIC\' not found in classpath."

    .line 721
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_3

    .line 725
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 686
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
.end method

.method protected getJarBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 471
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 481
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ".xml"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 486
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 499
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getJarBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "JAR base name: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 390
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .locals 1

    .line 336
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JOnAS Deployment Tool processing: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 341
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->descriptorName:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 343
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deleting temp output directory \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 346
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->outputdir:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->deleteAllFiles(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method protected registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V
    .locals 3

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ejb-jar_1_1.dtd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    invoke-virtual {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ejb-jar_2_0.dtd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    invoke-virtual {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "jonas-ejb-jar_2_4.dtd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-//ObjectWeb//DTD JOnAS 2.4//EN"

    invoke-virtual {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jonas-ejb-jar_2_5.dtd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-//ObjectWeb//DTD JOnAS 2.5//EN"

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAdditionalargs(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->additionalargs:Ljava/lang/String;

    return-void
.end method

.method public setJarsuffix(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->suffix:Ljava/lang/String;

    return-void
.end method

.method public setJavac(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javac:Ljava/lang/String;

    return-void
.end method

.method public setJavacopts(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->javacopts:Ljava/lang/String;

    return-void
.end method

.method public setJonasroot(Ljava/io/File;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->jonasroot:Ljava/io/File;

    return-void
.end method

.method public setKeepgenerated(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgenerated:Z

    return-void
.end method

.method public setKeepgeneric(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    return-void
.end method

.method public setNocompil(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nocompil:Z

    return-void
.end method

.method public setNogenic(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->nogenic:Z

    return-void
.end method

.method public setNovalidation(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->novalidation:Z

    return-void
.end method

.method public setOrb(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->orb:Ljava/lang/String;

    return-void
.end method

.method public setRmicopts(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->rmicopts:Ljava/lang/String;

    return-void
.end method

.method public setSecpropag(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->secpropag:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->verbose:Z

    return-void
.end method

.method protected writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 356
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->addGenICGeneratedFiles(Ljava/io/File;Ljava/util/Hashtable;)V

    .line 363
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 365
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->keepgeneric:Z

    if-nez p1, :cond_0

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Deleting generic JAR "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;->log(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
