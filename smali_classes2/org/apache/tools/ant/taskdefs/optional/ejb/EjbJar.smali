.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "EjbJar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$CMPVersion;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;
    }
.end annotation


# instance fields
.field private cmpVersion:Ljava/lang/String;

.field private config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

.field private deploymentTools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;",
            ">;"
        }
    .end annotation
.end field

.field private destDir:Ljava/io/File;

.field private genericJarSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 194
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    const-string v0, "-generic.jar"

    .line 205
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->genericJarSuffix:Ljava/lang/String;

    const-string v0, "1.0"

    .line 208
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->cmpVersion:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    return-void
.end method

.method private validateConfig()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 555
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    iput-object v1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    .line 559
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;-><init>()V

    iput-object v1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 561
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "basejarname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 564
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The basejarname attribute must be specified with the basejarname naming scheme"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void

    .line 552
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The srcDir attribute must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V
    .locals 1

    .line 221
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;->setTask(Lorg/apache/tools/ant/Task;)V

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createBorland()Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;
    .locals 2

    const-string v0, "Borland deployment tools"

    const/4 v1, 0x3

    .line 266
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->log(Ljava/lang/String;I)V

    .line 268
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;-><init>()V

    .line 269
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/BorlandDeploymentTool;->setTask(Lorg/apache/tools/ant/Task;)V

    .line 270
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 3

    .line 334
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createDTD()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;
    .locals 2

    .line 348
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$DTDLocation;-><init>()V

    .line 349
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->dtdLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createIplanet()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetDeploymentTool;
    .locals 2

    const-string v0, "iPlanet Application Server deployment tools"

    const/4 v1, 0x3

    .line 280
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->log(Ljava/lang/String;I)V

    .line 282
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetDeploymentTool;-><init>()V

    .line 283
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public createJboss()Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;
    .locals 1

    .line 293
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;-><init>()V

    .line 294
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public createJonas()Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;
    .locals 2

    const-string v0, "JOnAS deployment tools"

    const/4 v1, 0x3

    .line 304
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->log(Ljava/lang/String;I)V

    .line 306
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JonasDeploymentTool;-><init>()V

    .line 307
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public createOrion()Lorg/apache/tools/ant/taskdefs/optional/ejb/OrionDeploymentTool;
    .locals 1

    .line 233
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/OrionDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/OrionDeploymentTool;-><init>()V

    .line 234
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public createSupport()Lorg/apache/tools/ant/types/FileSet;
    .locals 2

    .line 360
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 361
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->supportFileSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createWeblogic()Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;
    .locals 1

    .line 244
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;-><init>()V

    .line 245
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public createWeblogictoplink()Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;
    .locals 2

    const-string v0, "The <weblogictoplink> element is no longer required. Please use the <weblogic> element and set newCMP=\"true\""

    const/4 v1, 0x2

    .line 318
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->log(Ljava/lang/String;I)V

    .line 321
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;-><init>()V

    .line 323
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public createWebsphere()Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;
    .locals 1

    .line 255
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;-><init>()V

    .line 256
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->addDeploymentTool(Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;)V

    return-object v0
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->validateConfig()V

    .line 588
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    .line 590
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->setTask(Lorg/apache/tools/ant/Task;)V

    .line 591
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->setDestdir(Ljava/io/File;)V

    .line 592
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->genericJarSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;->setGenericJarSuffix(Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;

    .line 597
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    invoke-interface {v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;->configure(Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;)V

    .line 598
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;->validateConfigured()V

    goto :goto_0

    .line 603
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 604
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 605
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 608
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 609
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deployment descriptors located."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->log(Ljava/lang/String;I)V

    .line 616
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 618
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->deploymentTools:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;

    .line 619
    invoke-interface {v6, v4, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EJBDeploymentTool;->processDescriptor(Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 625
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "ParserConfigurationException while creating parser. "

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 623
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "SAXException while creating parser."

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCmpversion()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->cmpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDestdir()Ljava/io/File;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public setBasejarname(Ljava/lang/String;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    .line 422
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    const-string v0, "basejarname"

    if-nez p1, :cond_0

    .line 423
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;-><init>()V

    iput-object v1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 424
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 426
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 428
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The basejarname attribute is not compatible with the %s naming scheme"

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public setBasenameterminator(Ljava/lang/String;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseNameTerminator:Ljava/lang/String;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setCmpversion(Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$CMPVersion;)V
    .locals 0

    .line 492
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$CMPVersion;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->cmpVersion:Ljava/lang/String;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->analyzer:Ljava/lang/String;

    return-void
.end method

.method public setDescriptordir(Ljava/io/File;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->destDir:Ljava/io/File;

    return-void
.end method

.method public setFlatdestdir(Z)V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-boolean p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->flatDestDir:Z

    return-void
.end method

.method public setGenericjarsuffix(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->genericJarSuffix:Ljava/lang/String;

    return-void
.end method

.method public setManifest(Ljava/io/File;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->manifest:Ljava/io/File;

    return-void
.end method

.method public setNaming(Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;)V
    .locals 2

    .line 439
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 440
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "basejarname"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->baseJarName:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iget-object v0, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->namingScheme:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;

    .line 444
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$NamingScheme;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The basejarname attribute is not compatible with the %s naming scheme"

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setSrcdir(Ljava/io/File;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->config:Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    iput-object p1, v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->srcDir:Ljava/io/File;

    return-void
.end method
