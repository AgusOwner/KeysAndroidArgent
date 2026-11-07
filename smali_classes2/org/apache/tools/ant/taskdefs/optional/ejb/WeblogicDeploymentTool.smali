.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "WeblogicDeploymentTool.java"


# static fields
.field protected static final COMPILER_EJB11:Ljava/lang/String; = "weblogic.ejbc"

.field protected static final COMPILER_EJB20:Ljava/lang/String; = "weblogic.ejbc20"

.field protected static final DEFAULT_COMPILER:Ljava/lang/String; = "default"

.field protected static final DEFAULT_WL51_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb/deployment/xml/weblogic-ejb-jar.dtd"

.field protected static final DEFAULT_WL51_EJB11_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb/deployment/xml/ejb-jar.dtd"

.field protected static final DEFAULT_WL60_51_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/weblogic510-ejb-jar.dtd"

.field protected static final DEFAULT_WL60_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/weblogic600-ejb-jar.dtd"

.field protected static final DEFAULT_WL60_EJB11_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/ejb11-jar.dtd"

.field protected static final DEFAULT_WL60_EJB20_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/ejb20-jar.dtd"

.field protected static final DEFAULT_WL70_DTD_LOCATION:Ljava/lang/String; = "/weblogic/ejb20/dd/xml/weblogic700-ejb-jar.dtd"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final PUBLICID_EJB11:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field public static final PUBLICID_EJB20:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

.field public static final PUBLICID_WEBLOGIC_EJB510:Ljava/lang/String; = "-//BEA Systems, Inc.//DTD WebLogic 5.1.0 EJB//EN"

.field public static final PUBLICID_WEBLOGIC_EJB600:Ljava/lang/String; = "-//BEA Systems, Inc.//DTD WebLogic 6.0.0 EJB//EN"

.field public static final PUBLICID_WEBLOGIC_EJB700:Ljava/lang/String; = "-//BEA Systems, Inc.//DTD WebLogic 7.0.0 EJB//EN"

.field protected static final WL_CMP_DD:Ljava/lang/String; = "weblogic-cmp-rdbms-jar.xml"

.field protected static final WL_DD:Ljava/lang/String; = "weblogic-ejb-jar.xml"


# instance fields
.field private additionalArgs:Ljava/lang/String;

.field private additionalJvmArgs:Ljava/lang/String;

.field private alwaysRebuild:Z

.field private compiler:Ljava/lang/String;

.field private ejb11DTD:Ljava/lang/String;

.field private ejbcClass:Ljava/lang/String;

.field private jarSuffix:Ljava/lang/String;

.field private jvmDebugLevel:Ljava/lang/Integer;

.field private keepGeneric:Z

.field private keepgenerated:Z

.field private newCMP:Z

.field private noEJBC:Z

.field private outputDir:Ljava/io/File;

.field private sysprops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Environment$Variable;",
            ">;"
        }
    .end annotation
.end field

.field private weblogicDTD:Ljava/lang/String;

.field private wlClasspath:Lorg/apache/tools/ant/types/Path;


# direct methods
.method public static synthetic $r8$lambda$r0hZD47RsrUOIh3-6Gzqj9MPy9E(Ljava/util/jar/JarEntry;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 104
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    const-string v0, ".jar"

    .line 107
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jarSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    const-string v2, ""

    .line 124
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    .line 133
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    const/4 v2, 0x1

    .line 135
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    .line 138
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    .line 141
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    .line 144
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    .line 154
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    return-void
.end method

.method private buildWeblogicJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    const-string v0, "jikes"

    const-string v1, "Calling "

    const-string v2, "Unrecognized publicId "

    const-string v3, " -Dweblogic.StdoutSeverityLevel="

    .line 504
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    if-eqz v4, :cond_1

    .line 506
    :try_start_0
    sget-object p3, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p3, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 507
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    if-nez p2, :cond_0

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 512
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Unable to write EJB jar"

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 516
    :cond_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    .line 519
    :try_start_1
    new-instance v5, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    const-string v6, "ejbc"

    .line 520
    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 523
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;

    invoke-direct {v7, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/taskdefs/Java;)V

    invoke-interface {v6, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getJvmDebugLevel()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 526
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    if-nez v4, :cond_5

    const-string v6, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    .line 531
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "weblogic.ejbc"

    if-eqz v6, :cond_3

    :goto_0
    move-object v4, v7

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v6, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    .line 533
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "weblogic.ejbc20"

    goto :goto_1

    .line 536
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " - using EJB 1.1 compiler"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 542
    :cond_5
    :goto_1
    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 544
    iget-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    if-eqz p3, :cond_6

    .line 545
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    const-string v2, "-keepgenerated"

    invoke-virtual {p3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 547
    :cond_6
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "-compiler"

    if-nez p3, :cond_7

    .line 551
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p3

    const-string v6, "build.compiler"

    invoke-virtual {p3, v6}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 553
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 554
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "default"

    .line 557
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 558
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 562
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p3

    .line 563
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_9

    if-eqz p3, :cond_9

    .line 564
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 565
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-classpath"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 569
    :cond_9
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 570
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    if-nez p3, :cond_a

    .line 571
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 573
    :cond_a
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 576
    :goto_3
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez p2, :cond_b

    .line 579
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p2

    .line 582
    :cond_b
    invoke-virtual {v5, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    if-eqz p2, :cond_c

    .line 584
    invoke-virtual {v5, p2}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 587
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 590
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 591
    :cond_d
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Ejbc reported an error"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 595
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Exception while calling "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ". Details: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 596
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic lambda$getWeblogicDescriptorHandler$0(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;)V
    .locals 1

    .line 423
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isRebuildRequired$1(Ljava/util/jar/JarEntry;)Ljava/lang/String;
    .locals 2

    .line 686
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$2(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$3(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p1
.end method

.method static synthetic lambda$isRebuildRequired$4(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$5(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->sysprops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 4
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

    .line 434
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "weblogic-ejb-jar.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-string v1, "META-INF/weblogic-ejb-jar.xml"

    .line 437
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    if-nez v1, :cond_0

    const-string v0, "The old method for locating CMP files has been DEPRECATED."

    const/4 v1, 0x3

    .line 446
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    const-string v0, "Please adjust your weblogic descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "

    .line 447
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 450
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "weblogic-cmp-rdbms-jar.xml"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "META-INF/weblogic-cmp-rdbms-jar.xml"

    .line 453
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p2, "META-INF/ejb-jar.xml"

    .line 461
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 462
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 464
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 466
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 468
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getWeblogicDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    move-result-object p2

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :try_start_1
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 472
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 473
    :cond_1
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->getFiles()Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 470
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 475
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while adding Vendor specific files: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 440
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to locate weblogic deployment descriptor. It was expected to be in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public createWLClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoaderFromJar(Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 835
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 837
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 840
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 842
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public getEjbcClass()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    return-object v0
.end method

.method public getJvmDebugLevel()Ljava/lang/Integer;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 490
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getWeblogicDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .locals 4

    .line 404
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$1;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;Ljava/io/File;)V

    const-string p1, "/weblogic/ejb/deployment/xml/weblogic-ejb-jar.dtd"

    const-string v1, "-//BEA Systems, Inc.//DTD WebLogic 5.1.0 EJB//EN"

    .line 416
    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/weblogic/ejb20/dd/xml/weblogic510-ejb-jar.dtd"

    .line 417
    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/weblogic/ejb20/dd/xml/weblogic600-ejb-jar.dtd"

    const-string v2, "-//BEA Systems, Inc.//DTD WebLogic 6.0.0 EJB//EN"

    .line 418
    invoke-virtual {v0, v2, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "-//BEA Systems, Inc.//DTD WebLogic 7.0.0 EJB//EN"

    const-string v3, "/weblogic/ejb20/dd/xml/weblogic700-ejb-jar.dtd"

    .line 419
    invoke-virtual {v0, p1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->weblogicDTD:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->weblogicDTD:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method protected isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, ".class"

    const-string v3, "Checking if weblogic Jar needs to be rebuilt for jar "

    .line 673
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-virtual {v1, v3, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 676
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 677
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 679
    new-instance v3, Ljava/util/jar/JarFile;

    move-object/from16 v7, p1

    invoke-direct {v3, v7}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 680
    :try_start_1
    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 682
    :try_start_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 685
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v12, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda1;-><init>()V

    new-instance v13, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda2;

    invoke-direct {v13}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda2;-><init>()V

    .line 686
    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 689
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda3;-><init>()V

    new-instance v13, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda4;

    invoke-direct {v13}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda4;-><init>()V

    new-instance v14, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda5;

    invoke-direct {v14}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v12, v13, v14}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 693
    invoke-virtual/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getClassLoaderFromJar(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 695
    :try_start_3
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 696
    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " not present in weblogic jar"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    :goto_1
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 705
    :cond_0
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarEntry;

    .line 706
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/jar/JarEntry;

    .line 708
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getCrc()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getCrc()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 709
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v19

    cmp-long v16, v17, v19

    if-eqz v16, :cond_4

    .line 711
    :cond_1
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v4, " has changed"

    if-eqz v5, :cond_3

    .line 713
    :try_start_4
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v14, 0x2e

    .line 714
    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    .line 715
    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 719
    invoke-virtual {v7, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 721
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interface "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 729
    :cond_2
    invoke-interface {v9, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 730
    :cond_3
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non class file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_4
    :goto_2
    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_c

    const-string v0, "No rebuild needed - updating jar"

    const/4 v5, 0x3

    .line 742
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 743
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".temp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 744
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 745
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 748
    :cond_6
    new-instance v6, Ljava/util/jar/JarOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v12}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 749
    :try_start_6
    invoke-virtual {v6, v10}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 752
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/jar/JarEntry;

    .line 753
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_8

    .line 754
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    const/16 v11, 0x9

    .line 757
    invoke-virtual {v6, v11}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v11, 0x0

    .line 755
    invoke-virtual {v6, v11}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 762
    :goto_6
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 763
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating Bean class from generic Jar "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 764
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    .line 763
    invoke-virtual {v1, v11, v12}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 766
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/jar/JarEntry;

    .line 767
    invoke-virtual {v3, v10}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    goto :goto_7

    .line 771
    :cond_9
    invoke-virtual {v8, v10}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 773
    :goto_7
    new-instance v12, Ljava/util/jar/JarEntry;

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v10, 0x400

    new-array v10, v10, [B

    .line 777
    :goto_8
    invoke-virtual {v11, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    const/4 v13, 0x0

    .line 778
    invoke-virtual {v6, v10, v13, v12}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    .line 780
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v16, v6

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_b

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    :goto_9
    move-object/from16 v21, v3

    move-object v3, v0

    move-object v0, v5

    move-object/from16 v5, v21

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    const/4 v6, 0x0

    :goto_a
    move-object v5, v3

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    const/4 v6, 0x0

    :goto_b
    move-object v5, v3

    goto/16 :goto_15

    :cond_c
    :try_start_7
    const-string v0, "Weblogic Jar rebuild needed due to changed interface or XML"

    const/4 v5, 0x3

    .line 783
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v16, v8

    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    goto/16 :goto_11

    :catch_5
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    move-object v5, v3

    const/4 v7, 0x0

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_11

    :catch_7
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    const/16 v16, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    goto/16 :goto_16

    :catch_8
    move-exception v0

    move-object v5, v3

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v5, v3

    goto :goto_13

    :cond_d
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 802
    :goto_e
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 803
    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_e

    .line 808
    :try_start_8
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, v3, v2}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .line 814
    :cond_e
    :goto_f
    instance-of v0, v7, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_f

    .line 816
    check-cast v7, Lorg/apache/tools/ant/AntClassLoader;

    .line 817
    invoke-virtual {v7}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    :cond_f
    return v4

    :catchall_5
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    goto :goto_16

    :catch_b
    move-exception v0

    const/4 v5, 0x0

    :goto_10
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_11
    const/16 v16, 0x0

    .line 796
    :goto_12
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while processing ejb-jar file . Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 798
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 800
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v4, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_c
    move-exception v0

    const/4 v5, 0x0

    :goto_13
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_14
    const/16 v16, 0x0

    .line 790
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException while processing ejb-jar file. Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 792
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v4, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v6

    .line 802
    :goto_16
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 803
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    if-eqz v16, :cond_10

    .line 808
    :try_start_a
    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_17

    :catch_d
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 814
    :cond_10
    :goto_17
    instance-of v0, v7, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_11

    .line 816
    check-cast v7, Lorg/apache/tools/ant/AntClassLoader;

    .line 817
    invoke-virtual {v7}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 819
    :cond_11
    throw v3
.end method

.method protected registerKnownDTDs(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V
    .locals 2

    const-string v0, "/weblogic/ejb/deployment/xml/ejb-jar.dtd"

    const-string v1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    .line 392
    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/weblogic/ejb20/dd/xml/ejb11-jar.dtd"

    .line 393
    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejb11DTD:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

    const-string v1, "/weblogic/ejb20/dd/xml/ejb20-jar.dtd"

    .line 395
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalArgs:Ljava/lang/String;

    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->compiler:Ljava/lang/String;

    return-void
.end method

.method public setEJBdtd(Ljava/lang/String;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejb11DTD:Ljava/lang/String;

    return-void
.end method

.method public setEjbcClass(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->ejbcClass:Ljava/lang/String;

    return-void
.end method

.method public setJvmDebugLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jvmDebugLevel:Ljava/lang/Integer;

    return-void
.end method

.method public setJvmargs(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->additionalJvmArgs:Ljava/lang/String;

    return-void
.end method

.method public setKeepgenerated(Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepgenerated:Z

    return-void
.end method

.method public setKeepgeneric(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    return-void
.end method

.method public setNewCMP(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    return-void
.end method

.method public setNoEJBC(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->noEJBC:Z

    return-void
.end method

.method public setOldCMP(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 357
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->newCMP:Z

    return-void
.end method

.method public setOutputDir(Ljava/io/File;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->outputDir:Ljava/io/File;

    return-void
.end method

.method public setRebuild(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->jarSuffix:Ljava/lang/String;

    return-void
.end method

.method public setWLClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->wlClasspath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setWLdtd(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->weblogicDTD:Ljava/lang/String;

    return-void
.end method

.method public setWeblogicdtd(Ljava/lang/String;)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->setEJBdtd(Ljava/lang/String;)V

    return-void
.end method

.method public validateConfigured()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 634
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->validateConfigured()V

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

    .line 614
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 616
    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 618
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->alwaysRebuild:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 619
    :cond_0
    invoke-direct {p0, v0, p2, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->buildWeblogicJar(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 621
    :cond_1
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->keepGeneric:Z

    if-nez p1, :cond_2

    .line 622
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "deleting generic jar "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->log(Ljava/lang/String;I)V

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method
