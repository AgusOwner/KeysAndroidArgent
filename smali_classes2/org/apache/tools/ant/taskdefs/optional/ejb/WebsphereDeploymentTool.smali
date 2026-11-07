.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "WebsphereDeploymentTool.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final PUBLICID_EJB11:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field public static final PUBLICID_EJB20:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 2.0//EN"

.field protected static final SCHEMA_DIR:Ljava/lang/String; = "Schema/"

.field protected static final WAS_BND:Ljava/lang/String; = "ibm-ejb-jar-bnd.xmi"

.field protected static final WAS_CMP_MAP:Ljava/lang/String; = "Map.mapxmi"

.field protected static final WAS_CMP_SCHEMA:Ljava/lang/String; = "Schema.dbxmi"

.field protected static final WAS_EXT:Ljava/lang/String; = "ibm-ejb-jar-ext.xmi"


# instance fields
.field private alwaysRebuild:Z

.field private codegen:Z

.field private dbName:Ljava/lang/String;

.field private dbSchema:Ljava/lang/String;

.field private dbVendor:Ljava/lang/String;

.field private ejb11DTD:Ljava/lang/String;

.field private ejbdeploy:Z

.field private jarSuffix:Ljava/lang/String;

.field private keepGeneric:Z

.field private newCMP:Z

.field private noinform:Z

.field private novalidate:Z

.field private nowarn:Z

.field private quiet:Z

.field private rmicOptions:Ljava/lang/String;

.field private tempdir:Ljava/lang/String;

.field private trace:Z

.field private use35MappingRules:Z

.field private wasClasspath:Lorg/apache/tools/ant/types/Path;

.field private websphereHome:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$r0hZD47RsrUOIh3-6Gzqj9MPy9E(Ljava/util/jar/JarEntry;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 81
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    const-string v0, ".jar"

    .line 84
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->jarSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->keepGeneric:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->alwaysRebuild:Z

    .line 95
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    .line 98
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    .line 116
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->quiet:Z

    const-string v0, "_ejbdeploy_temp"

    .line 137
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->tempdir:Ljava/lang/String;

    return-void
.end method

.method private buildWebsphereJar(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    const-string v0, "Calling websphere.ejbdeploy for "

    .line 528
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    if-eqz v1, :cond_3

    .line 529
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 531
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Xms64m"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Xmx128m"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 535
    new-instance v2, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/Environment$Variable;-><init>()V

    const-string v3, "websphere.lib.dir"

    .line 537
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Environment$Variable;->setKey(Ljava/lang/String;)V

    .line 538
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->websphereHome:Ljava/io/File;

    const-string v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Environment$Variable;->setValue(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 543
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->websphereHome:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setDir(Ljava/io/File;)V

    const-string v2, "ejbdeploy"

    .line 546
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    const-string v2, "com.ibm.etools.ejbdeploy.EJBDeploy"

    .line 547
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->tempdir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 554
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 555
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    const-string v2, "-cp"

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 559
    :cond_0
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez p2, :cond_1

    .line 562
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p2

    :cond_1
    const/4 v2, 0x1

    .line 565
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    if-eqz p2, :cond_2

    .line 567
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 570
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 573
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 577
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while calling ejbdeploy. Details: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic lambda$getDescriptorHandler$0(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;)V
    .locals 1

    .line 358
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getWebsphereDescriptorHandler$1(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;)V
    .locals 1

    .line 375
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isRebuildRequired$2(Ljava/util/jar/JarEntry;)Ljava/lang/String;
    .locals 2

    .line 672
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$3(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$4(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p1
.end method

.method static synthetic lambda$isRebuildRequired$5(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$isRebuildRequired$6(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 0

    return-object p1
.end method


# virtual methods
.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 8
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

    const-string v0, "Unable to locate the websphere Schema: "

    const-string v1, "Unable to locate the websphere Map: "

    .line 388
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->usingBaseJarName()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object p2, v3

    .line 389
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ibm-ejb-jar-ext.xmi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_2

    const-string v4, "META-INF/ibm-ejb-jar-ext.xmi"

    .line 395
    invoke-virtual {p1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 398
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unable to locate websphere extensions. It was expected to be in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 402
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ibm-ejb-jar-bnd.xmi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "META-INF/ibm-ejb-jar-bnd.xmi"

    .line 405
    invoke-virtual {p1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 408
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unable to locate websphere bindings. It was expected to be in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 412
    :goto_2
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    if-nez v2, :cond_4

    const-string p1, "The old method for locating CMP files has been DEPRECATED."

    .line 413
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    const-string p1, "Please adjust your websphere descriptor and set newCMP=\"true\" to use the new CMP descriptor inclusion mechanism. "

    .line 415
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 421
    :cond_4
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Map.mapxmi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "META-INF/Map.mapxmi"

    .line 425
    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 428
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 432
    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "Schema.dbxmi"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "META-INF/Schema/Schema.dbxmi"

    .line 436
    invoke-virtual {p1, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 439
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception p1

    .line 444
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while adding Vendor specific files: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createWASClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

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

    .line 820
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 822
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 824
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 830
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p1

    return-object p1
.end method

.method protected getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .locals 2

    .line 353
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;-><init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    const-string p1, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    .line 356
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejb11DTD:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method protected getOptions()Ljava/lang/String;
    .locals 4

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " -dbvendor "

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbName:Ljava/lang/String;

    const-string v2, "\""

    if-eqz v1, :cond_1

    const-string v1, " -dbname \""

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbSchema:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " -dbschema \""

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbSchema:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_2
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->codegen:Z

    if-eqz v1, :cond_3

    const-string v1, " -codegen"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->quiet:Z

    if-eqz v1, :cond_4

    const-string v1, " -quiet"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_4
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->novalidate:Z

    if-eqz v1, :cond_5

    const-string v1, " -novalidate"

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_5
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->nowarn:Z

    if-eqz v1, :cond_6

    const-string v1, " -nowarn"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_6
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->noinform:Z

    if-eqz v1, :cond_7

    const-string v1, " -noinform"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_7
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->trace:Z

    if-eqz v1, :cond_8

    const-string v1, " -trace"

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_8
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->use35MappingRules:Z

    if-eqz v1, :cond_9

    const-string v1, " -35"

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->rmicOptions:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, " -rmic \""

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->rmicOptions:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 459
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getWebsphereDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .locals 2

    .line 368
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$1;

    .line 369
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    .line 375
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method protected isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, ".class"

    const-string v3, "Checking if websphere Jar needs to be rebuilt for jar "

    .line 661
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    .line 661
    invoke-virtual {v1, v3, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 665
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 667
    new-instance v3, Ljava/util/jar/JarFile;

    move-object/from16 v7, p1

    invoke-direct {v3, v7}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 668
    :try_start_1
    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 671
    :try_start_2
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda1;-><init>()V

    new-instance v12, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda2;

    invoke-direct {v12}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda2;-><init>()V

    .line 672
    invoke-static {v10, v11, v12}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 676
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda3;

    invoke-direct {v11}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda3;-><init>()V

    new-instance v12, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda4;-><init>()V

    new-instance v13, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda5;

    invoke-direct {v13}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$$ExternalSyntheticLambda5;-><init>()V

    .line 677
    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 680
    invoke-virtual/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getClassLoaderFromJar(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 682
    :try_start_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 683
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 684
    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " not present in websphere jar"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    :goto_1
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 693
    :cond_0
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarEntry;

    .line 694
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/jar/JarEntry;

    .line 696
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getCrc()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getCrc()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 697
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v19

    cmp-long v16, v17, v19

    if-eqz v16, :cond_3

    .line 699
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

    if-eqz v5, :cond_4

    .line 702
    :try_start_4
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v14, 0x2e

    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 704
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 706
    invoke-virtual {v7, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 708
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 710
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

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 716
    :cond_2
    invoke-interface {v11, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 719
    :cond_4
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 721
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

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_c

    const-string v0, "No rebuild needed - updating jar"

    const/4 v5, 0x3

    .line 731
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 732
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

    .line 733
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 734
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 737
    :cond_6
    new-instance v6, Ljava/util/jar/JarOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v12}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 738
    :try_start_6
    invoke-virtual {v6, v9}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 741
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/JarEntry;

    .line 742
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v10, v12, v14

    if-eqz v10, :cond_8

    .line 743
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getCompressedSize()J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v14

    cmp-long v10, v12, v14

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    const/16 v10, 0x9

    .line 746
    invoke-virtual {v6, v10}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v10, 0x0

    .line 744
    invoke-virtual {v6, v10}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 751
    :goto_5
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 752
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating Bean class from generic Jar "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x3

    invoke-virtual {v1, v10, v12}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 755
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/JarEntry;

    .line 756
    invoke-virtual {v3, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    goto :goto_6

    .line 760
    :cond_9
    invoke-virtual {v8, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 762
    :goto_6
    new-instance v12, Ljava/util/jar/JarEntry;

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v9, 0x400

    new-array v9, v9, [B

    .line 766
    :goto_7
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    const/4 v13, 0x0

    .line 767
    invoke-virtual {v6, v9, v13, v12}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    .line 769
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v16, v6

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_a

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    :goto_8
    move-object/from16 v21, v3

    move-object v3, v0

    move-object v0, v5

    move-object/from16 v5, v21

    goto/16 :goto_15

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    const/4 v6, 0x0

    :goto_9
    move-object v5, v3

    goto/16 :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    const/4 v6, 0x0

    :goto_a
    move-object v5, v3

    goto/16 :goto_14

    :cond_c
    :try_start_7
    const-string v0, "websphere Jar rebuild needed due to changed interface or XML"

    const/4 v5, 0x3

    .line 772
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_b
    move-object/from16 v0, v16

    move-object/from16 v16, v8

    move-object/from16 v21, v5

    move-object v5, v3

    move-object/from16 v3, v21

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-object v5, v3

    const/4 v7, 0x0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    move-object v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_c
    const/16 v16, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v5, v3

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v5, v3

    goto :goto_12

    :cond_d
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 790
    :goto_d
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 791
    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 792
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_e

    .line 796
    :try_start_8
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, v3, v2}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 798
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .line 802
    :cond_e
    :goto_e
    instance-of v0, v7, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_f

    .line 804
    check-cast v7, Lorg/apache/tools/ant/AntClassLoader;

    .line 805
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

    goto :goto_15

    :catch_b
    move-exception v0

    const/4 v5, 0x0

    :goto_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_10
    const/16 v16, 0x0

    .line 784
    :goto_11
    :try_start_9
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while processing ejb-jar file . Details: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 786
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_c
    move-exception v0

    const/4 v5, 0x0

    :goto_12
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_13
    const/16 v16, 0x0

    .line 779
    :goto_14
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException while processing ejb-jar file. Details: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 781
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v6

    .line 790
    :goto_15
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 791
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/lang/AutoCloseable;)V

    .line 792
    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    if-eqz v16, :cond_10

    .line 796
    :try_start_a
    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_16

    :catch_d
    move-exception v0

    .line 798
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 802
    :cond_10
    :goto_16
    instance-of v0, v7, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_11

    .line 804
    check-cast v7, Lorg/apache/tools/ant/AntClassLoader;

    .line 805
    invoke-virtual {v7}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 807
    :cond_11
    throw v3
.end method

.method public setCodegen(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->codegen:Z

    return-void
.end method

.method public setDbname(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbName:Ljava/lang/String;

    return-void
.end method

.method public setDbschema(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbSchema:Ljava/lang/String;

    return-void
.end method

.method public setDbvendor(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->dbVendor:Ljava/lang/String;

    return-void
.end method

.method public setEJBdtd(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejb11DTD:Ljava/lang/String;

    return-void
.end method

.method public setEjbdeploy(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    return-void
.end method

.method public setKeepgeneric(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->keepGeneric:Z

    return-void
.end method

.method public setNewCMP(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    return-void
.end method

.method public setNoinform(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->noinform:Z

    return-void
.end method

.method public setNovalidate(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->novalidate:Z

    return-void
.end method

.method public setNowarn(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->nowarn:Z

    return-void
.end method

.method public setOldCMP(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 325
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->newCMP:Z

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->quiet:Z

    return-void
.end method

.method public setRebuild(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->alwaysRebuild:Z

    return-void
.end method

.method public setRmicoptions(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->rmicOptions:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->jarSuffix:Ljava/lang/String;

    return-void
.end method

.method public setTempdir(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->tempdir:Ljava/lang/String;

    return-void
.end method

.method public setTrace(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->trace:Z

    return-void
.end method

.method public setUse35(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->use35MappingRules:Z

    return-void
.end method

.method public setWASClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->wasClasspath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public validateConfigured()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 614
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->validateConfigured()V

    .line 615
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "websphere.home"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->websphereHome:Ljava/io/File;

    goto :goto_0

    .line 618
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \'websphere.home\' property must be set when \'ejbdeploy=true\'"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
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

    .line 587
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->ejbdeploy:Z

    if-eqz v0, :cond_2

    .line 589
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 591
    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 594
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->alwaysRebuild:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->isRebuildRequired(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 595
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->buildWebsphereJar(Ljava/io/File;Ljava/io/File;)V

    .line 597
    :cond_1
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->keepGeneric:Z

    if-nez p1, :cond_3

    .line 598
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

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->log(Ljava/lang/String;I)V

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 604
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
