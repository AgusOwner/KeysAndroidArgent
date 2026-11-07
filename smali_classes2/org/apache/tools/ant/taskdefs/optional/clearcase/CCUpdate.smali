.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCUpdate.java"


# static fields
.field public static final FLAG_CURRENTTIME:Ljava/lang/String; = "-ctime"

.field public static final FLAG_GRAPHICAL:Ljava/lang/String; = "-graphical"

.field public static final FLAG_LOG:Ljava/lang/String; = "-log"

.field public static final FLAG_NOVERWRITE:Ljava/lang/String; = "-noverwrite"

.field public static final FLAG_OVERWRITE:Ljava/lang/String; = "-overwrite"

.field public static final FLAG_PRESERVETIME:Ljava/lang/String; = "-ptime"

.field public static final FLAG_RENAME:Ljava/lang/String; = "-rename"


# instance fields
.field private mCtime:Z

.field private mGraphical:Z

.field private mLog:Ljava/lang/String;

.field private mOverwrite:Z

.field private mPtime:Z

.field private mRename:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mGraphical:Z

    .line 114
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mOverwrite:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mRename:Z

    .line 116
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mCtime:Z

    .line 117
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mPtime:Z

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mLog:Ljava/lang/String;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getGraphical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-graphical"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-overwrite"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getRename()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-rename"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-noverwrite"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 180
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ctime"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getPreserveTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ptime"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 189
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLogCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 193
    :goto_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private getLogCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLog()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-log"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->setViewPath(Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "update"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring any errors that occur for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getViewPathBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 150
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 153
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 154
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed executing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentTime()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mCtime:Z

    return v0
.end method

.method public getGraphical()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mGraphical:Z

    return v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mLog:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mOverwrite:Z

    return v0
.end method

.method public getPreserveTime()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mPtime:Z

    return v0
.end method

.method public getRename()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mRename:Z

    return v0
.end method

.method public setCurrentTime(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mCtime:Z

    return-void
.end method

.method public setGraphical(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mGraphical:Z

    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mLog:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mOverwrite:Z

    return-void
.end method

.method public setPreserveTime(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mPtime:Z

    return-void
.end method

.method public setRename(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mRename:Z

    return-void
.end method
