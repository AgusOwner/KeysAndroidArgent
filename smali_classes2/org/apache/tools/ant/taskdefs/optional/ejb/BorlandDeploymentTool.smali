.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "BorlandDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;


# static fields
.field static final BAS:I = 0x4

.field protected static final BAS_DD:Ljava/lang/String; = "ejb-inprise.xml"

.field static final BES:I = 0x5

.field protected static final BES_DD:Ljava/lang/String; = "ejb-borland.xml"

.field protected static final DEFAULT_BAS45_EJB11_DTD_LOCATION:Ljava/lang/String; = "/com/inprise/j2ee/xml/dtds/ejb-jar.dtd"

.field protected static final DEFAULT_BAS_DTD_LOCATION:Ljava/lang/String; = "/com/inprise/j2ee/xml/dtds/ejb-inprise.dtd"

.field protected static final JAVA2IIOP:Ljava/lang/String; = "java2iiop"

.field public static final PUBLICID_BORLAND_EJB:Ljava/lang/String; = "-//Inprise Corporation//DTD Enterprise JavaBeans 1.1//EN"

.field protected static final VERIFY:Ljava/lang/String; = "com.inprise.ejb.util.Verify"


# instance fields
.field private borlandDTD:Ljava/lang/String;

.field private generateclient:Z

.field private genfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private jarSuffix:Ljava/lang/String;

.field private java2iioparams:Ljava/lang/String;

.field private java2iiopdebug:Z

.field private verify:Z

.field private verifyArgs:Ljava/lang/String;

.field private version:I


# direct methods
.method public static synthetic $r8$lambda$1h5CW1irZYuwjTmxloLfoh7Hc30(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    const-string v0, "-ejb.jar"

    .line 100
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->jarSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iiopdebug:Z

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iioparams:Ljava/lang/String;

    .line 112
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->generateclient:Z

    const/4 v0, 0x4

    .line 121
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verify:Z

    const-string v0, ""

    .line 128
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verifyArgs:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->genfiles:Ljava/util/Map;

    return-void
.end method

.method private buildBorlandStubs(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Failed executing java2iiop (ret code is "

    .line 380
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 381
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 383
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 385
    new-instance v2, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    const-string v3, "java2iiop"

    .line 386
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 388
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iiopdebug:Z

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-VBJdebug"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 392
    :cond_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-VBJclasspath"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 395
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-list_files"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-no_tie"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iioparams:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "additional  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iioparams:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to java2iiop "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 401
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iioparams:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 405
    :cond_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v5, "-root_dir"

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v5

    iget-object v5, v5, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v5, "-compile"

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 410
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/Commandline;)V

    .line 411
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :try_start_0
    const-string p1, "Calling java2iiop"

    const/4 v3, 0x3

    .line 414
    invoke-virtual {p0, p1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 415
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 416
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1

    .line 418
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 419
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java2iiop exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 425
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private generateClient(Ljava/io/File;)V
    .locals 3

    .line 350
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;

    const-string v2, "internal_bas_generateclient"

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/Project;->addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generate client for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;

    .line 359
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->setEjbjar(Ljava/io/File;)V

    .line 360
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iiopdebug:Z

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->setDebug(Z)V

    .line 361
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 365
    :cond_0
    iget p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->setVersion(I)V

    const-string p1, "generate client"

    .line 366
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->setTaskName(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 370
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Exception while calling com.inprise.ejb.util.Verify"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$buildBorlandStubs$0(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private toClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".class"

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5c

    const/16 v1, 0x2e

    .line 478
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toClassFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\.java$"

    const-string v1, ".class"

    .line 487
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private verifyBorlandJar(Ljava/io/File;)V
    .locals 2

    .line 268
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verifyBorlandJarV4(Ljava/io/File;)V

    return-void

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verifyBorlandJarV5(Ljava/io/File;)V

    return-void

    .line 276
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "verify jar skipped because the version is invalid ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private verifyBorlandJarV4(Ljava/io/File;)V
    .locals 4

    const-string v0, "Calling com.inprise.ejb.util.Verify for "

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verify BAS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verifyArgs:Ljava/lang/String;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    const-string v3, "verify"

    .line 323
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    const-string v3, "com.inprise.ejb.util.Verify"

    .line 324
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    .line 326
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    const/4 v1, 0x1

    .line 330
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 333
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 335
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while calling com.inprise.ejb.util.Verify Details: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifyBorlandJarV5(Ljava/io/File;)V
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "verify BES "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 287
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 288
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setDir(Ljava/io/File;)V

    const-string v1, "iastool"

    .line 289
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-VBJclasspath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getCombinedClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iiopdebug:Z

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-debug"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 299
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-verify"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-src"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string p1, "Calling iastool"

    const/4 v1, 0x3

    .line 303
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 307
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Exception while calling generateclient Details: "

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
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

    .line 235
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    const-string v0, "ejb-borland.xml"

    goto :goto_1

    :cond_2
    const-string v0, "ejb-inprise.xml"

    .line 241
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vendor file : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Borland specific file found "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {p0, p2, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    const-string p2, "META-INF/"

    .line 246
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 248
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to locate borland deployment descriptor. It was expected to be in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method protected getBorlandDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .locals 3

    .line 205
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;Ljava/io/File;)V

    .line 217
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->borlandDTD:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "/com/inprise/j2ee/xml/dtds/ejb-inprise.dtd"

    :cond_0
    const-string v1, "-//Inprise Corporation//DTD Enterprise JavaBeans 1.1//EN"

    .line 216
    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;

    .line 220
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 260
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public setBASdtd(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->borlandDTD:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iiopdebug:Z

    return-void
.end method

.method public setGenerateclient(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->generateclient:Z

    return-void
.end method

.method public setJava2iiopParams(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->java2iioparams:Ljava/lang/String;

    return-void
.end method

.method public setProcessErrorStream(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 538
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[java2iiop] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setProcessInputStream(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setProcessOutputStream(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, ".java"

    .line 518
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->toClassFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 520
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->genfiles:Ljava/util/Map;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 514
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 526
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Exception while parsing java2iiop output."

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->jarSuffix:Ljava/lang/String;

    return-void
.end method

.method public setVerify(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verify:Z

    return-void
.end method

.method public setVerifyArgs(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verifyArgs:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 187
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->version:I

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method protected writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 5
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

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-virtual {p3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Home.class"

    .line 446
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->toClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Home "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->buildBorlandStubs(Ljava/util/Collection;)V

    .line 457
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->genfiles:Ljava/util/Map;

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 459
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->writeJar(Ljava/lang/String;Ljava/io/File;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 461
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verify:Z

    if-eqz p1, :cond_2

    .line 462
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->verifyBorlandJar(Ljava/io/File;)V

    .line 465
    :cond_2
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->generateclient:Z

    if-eqz p1, :cond_3

    .line 466
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->generateClient(Ljava/io/File;)V

    .line 468
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->genfiles:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method
