.class public abstract Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;
.super Lorg/apache/tools/ant/Task;
.source "Continuus.java"


# static fields
.field private static final CCM_EXE:Ljava/lang/String; = "ccm"

.field public static final COMMAND_CHECKIN:Ljava/lang/String; = "ci"

.field public static final COMMAND_CHECKOUT:Ljava/lang/String; = "co"

.field public static final COMMAND_CREATE_TASK:Ljava/lang/String; = "create_task"

.field public static final COMMAND_DEFAULT_TASK:Ljava/lang/String; = "default_task"

.field public static final COMMAND_RECONFIGURE:Ljava/lang/String; = "reconfigure"


# instance fields
.field private ccmAction:Ljava/lang/String;

.field private ccmDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->ccmDir:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->ccmAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCcmAction()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->ccmAction:Ljava/lang/String;

    return-object v0
.end method

.method protected final getCcmCommand()Ljava/lang/String;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->ccmDir:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ccm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/tools/ant/types/Commandline;)I
    .locals 3

    .line 139
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->run(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I

    move-result p1

    return p1
.end method

.method protected run(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I
    .locals 1

    .line 123
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v0, p2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 126
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 129
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p2
.end method

.method public setCcmAction(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->ccmAction:Ljava/lang/String;

    return-void
.end method

.method public final setCcmDir(Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;->ccmDir:Ljava/lang/String;

    return-void
.end method
