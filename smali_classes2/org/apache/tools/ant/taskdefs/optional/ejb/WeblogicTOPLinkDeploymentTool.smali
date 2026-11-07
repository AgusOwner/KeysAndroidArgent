.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;
.source "WeblogicTOPLinkDeploymentTool.java"


# static fields
.field private static final TL_DTD_LOC:Ljava/lang/String; = "http://www.objectpeople.com/tlwl/dtd/toplink-cmp_2_5_1.dtd"


# instance fields
.field private toplinkDTD:Ljava/lang/String;

.field private toplinkDescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;-><init>()V

    return-void
.end method


# virtual methods
.method protected addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 3
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

    .line 88
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->addVendorFiles(Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->toplinkDescriptor:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "META-INF/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->toplinkDescriptor:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to locate toplink deployment descriptor. It was expected to be in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method protected getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->getDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->toplinkDTD:Ljava/lang/String;

    const-string v1, "-//The Object People, Inc.//DTD TOPLink for WebLogic CMP 2.5.1//EN"

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "http://www.objectpeople.com/tlwl/dtd/toplink-cmp_2_5_1.dtd"

    .line 73
    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public setToplinkdescriptor(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->toplinkDescriptor:Ljava/lang/String;

    return-void
.end method

.method public setToplinkdtd(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->toplinkDTD:Ljava/lang/String;

    return-void
.end method

.method public validateConfigured()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool;->validateConfigured()V

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicTOPLinkDeploymentTool;->toplinkDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The toplinkdescriptor attribute must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
