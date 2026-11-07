.class public abstract Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.super Lorg/apache/tools/ant/Task;
.source "ClearCase.java"


# static fields
.field private static final CLEARTOOL_EXE:Ljava/lang/String; = "cleartool"

.field public static final COMMAND_CHECKIN:Ljava/lang/String; = "checkin"

.field public static final COMMAND_CHECKOUT:Ljava/lang/String; = "checkout"

.field public static final COMMAND_LOCK:Ljava/lang/String; = "lock"

.field public static final COMMAND_LSCO:Ljava/lang/String; = "lsco"

.field public static final COMMAND_MKATTR:Ljava/lang/String; = "mkattr"

.field public static final COMMAND_MKBL:Ljava/lang/String; = "mkbl"

.field public static final COMMAND_MKDIR:Ljava/lang/String; = "mkdir"

.field public static final COMMAND_MKELEM:Ljava/lang/String; = "mkelem"

.field public static final COMMAND_MKLABEL:Ljava/lang/String; = "mklabel"

.field public static final COMMAND_MKLBTYPE:Ljava/lang/String; = "mklbtype"

.field public static final COMMAND_RMTYPE:Ljava/lang/String; = "rmtype"

.field public static final COMMAND_UNCHECKOUT:Ljava/lang/String; = "uncheckout"

.field public static final COMMAND_UNLOCK:Ljava/lang/String; = "unlock"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"


# instance fields
.field private mClearToolDir:Ljava/lang/String;

.field private mFailonerr:Z

.field private mobjSelect:Ljava/lang/String;

.field private mviewPath:Ljava/lang/String;

.field private pcnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mClearToolDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mviewPath:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mobjSelect:Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->pcnt:I

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mFailonerr:Z

    return-void
.end method


# virtual methods
.method protected final getClearToolCommand()Ljava/lang/String;
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mClearToolDir:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cleartool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFailOnErr()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mFailonerr:Z

    return v0
.end method

.method public getObjSelect()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mobjSelect:Ljava/lang/String;

    return-object v0
.end method

.method public getViewPath()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mviewPath:Ljava/lang/String;

    return-object v0
.end method

.method public getViewPathBasename()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mviewPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/tools/ant/types/Commandline;)I
    .locals 5

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 193
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 195
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 196
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 197
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 200
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected runS(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->runS(Lorg/apache/tools/ant/types/Commandline;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected runS(Lorg/apache/tools/ant/types/Commandline;Z)Ljava/lang/String;
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opts.cc.runS.output"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->pcnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->pcnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 225
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    .line 227
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setOutputproperty(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setFailonerror(Z)V

    .line 231
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setClearToolDir(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mClearToolDir:Ljava/lang/String;

    return-void
.end method

.method public setFailOnErr(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mFailonerr:Z

    return-void
.end method

.method public final setObjSelect(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mobjSelect:Ljava/lang/String;

    return-void
.end method

.method public final setViewPath(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;->mviewPath:Ljava/lang/String;

    return-void
.end method
