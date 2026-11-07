.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;
.source "JonasHotDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;


# static fields
.field protected static final DEFAULT_ORB:Ljava/lang/String; = "RMI"

.field private static final JONAS_DEPLOY_CLASS_NAME:Ljava/lang/String; = "org.objectweb.jonas.adm.JonasAdmin"

.field private static final VALID_ACTIONS:[Ljava/lang/String;


# instance fields
.field private davidHost:Ljava/lang/String;

.field private davidPort:I

.field private jonasroot:Ljava/io/File;

.field private orb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "undeploy"

    const-string v1, "update"

    const-string v2, "delete"

    const-string v3, "deploy"

    const-string v4, "list"

    .line 56
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 6

    .line 130
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lib/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_jonas.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    const-string v4, "config/"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance v3, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :cond_1
    return-object v0
.end method

.method protected isActionValid()Z
    .locals 6

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public setDavidhost(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidHost:Ljava/lang/String;

    return-void
.end method

.method public setDavidport(I)V
    .locals 0

    .line 96
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidPort:I

    return-void
.end method

.method public setJonasroot(Ljava/io/File;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    return-void
.end method

.method public setOrb(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    return-void
.end method

.method public validateAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getJava()Lorg/apache/tools/ant/taskdefs/Java;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->isActionValid()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 173
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "org.objectweb.jonas.adm.JonasAdmin"

    .line 174
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->setClassName(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-Dinstall.root="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-Djava.security.policy="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/config/java.policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string v2, "DAVID"

    .line 182
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Dorg.omg.CORBA.ORBClass=org.objectweb.david.libs.binding.orbs.iiop.IIOPORB"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Dorg.omg.CORBA.ORBSingletonClass=org.objectweb.david.libs.binding.orbs.ORBSingletonClass"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Djavax.rmi.CORBA.StubClass=org.objectweb.david.libs.stub_factories.rmi.StubDelegate"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Djavax.rmi.CORBA.PortableRemoteObjectClass=org.objectweb.david.libs.binding.rmi.ORBPortableRemoteObjectDelegate"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Djavax.rmi.CORBA.UtilClass=org.objectweb.david.libs.helpers.RMIUtilDelegate"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Ddavid.CosNaming.default_method=0"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Ddavid.rmi.ValueHandlerClass=com.sun.corba.se.internal.io.ValueHandlerImpl"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidHost:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 197
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-Ddavid.CosNaming.default_host="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 200
    :cond_2
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidPort:I

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-Ddavid.CosNaming.default_port="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 207
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 208
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    :cond_4
    const-string v2, "deploy"

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "update"

    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "redeploy"

    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "delete"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "undeploy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "list"

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 218
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-l"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-r "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void

    .line 170
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Invalid action \"%s\" passed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 166
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"action\" attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
