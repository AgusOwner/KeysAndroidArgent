.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;
.source "JbossDeploymentTool.java"


# static fields
.field protected static final JBOSS_CMP10D:Ljava/lang/String; = "jaws.xml"

.field protected static final JBOSS_CMP20D:Ljava/lang/String; = "jbosscmp-jdbc.xml"

.field protected static final JBOSS_DD:Ljava/lang/String; = "jboss.xml"


# instance fields
.field private jarSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/GenericDeploymentTool;-><init>()V

    const-string v0, ".jar"

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    return-void
.end method

.method private getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    return-object v0
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

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;->descriptorDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jboss.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "META-INF/jboss.xml"

    .line 60
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getCmpversion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jbosscmp-jdbc.xml"

    goto :goto_0

    :cond_0
    const-string v0, "jaws.xml"

    .line 70
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getConfig()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$Config;

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

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "META-INF/"

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to locate jboss cmp descriptor. It was expected to be in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->log(Ljava/lang/String;I)V

    :goto_1
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to locate jboss deployment descriptor. It was expected to be in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 62
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->log(Ljava/lang/String;I)V

    return-void
.end method

.method getVendorOutputJarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getDestdir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "DestDir not specified"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getParent()Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;->getDestdir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 93
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->getDestDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/JbossDeploymentTool;->jarSuffix:Ljava/lang/String;

    return-void
.end method

.method public validateConfigured()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    return-void
.end method
