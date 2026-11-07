.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCCheckin.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_IDENTICAL:Ljava/lang/String; = "-identical"

.field public static final FLAG_KEEPCOPY:Ljava/lang/String; = "-keep"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"

.field public static final FLAG_NOWARN:Ljava/lang/String; = "-nwarn"

.field public static final FLAG_PRESERVETIME:Ljava/lang/String; = "-ptime"


# instance fields
.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mIdentical:Z

.field private mKeep:Z

.field private mNwarn:Z

.field private mPtime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mComment:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mCfile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mNwarn:Z

    .line 120
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mPtime:Z

    .line 121
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mKeep:Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mIdentical:Z

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 175
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getNoWarn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nwarn"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 180
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getPreserveTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ptime"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getKeepCopy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-keep"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 190
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getIdentical()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-identical"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 196
    :cond_5
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 334
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
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

    .line 133
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->setViewPath(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "checkin"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring any errors that occur for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getViewPathBasename()Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 154
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getFailOnErr()Z

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

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentical()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mIdentical:Z

    return v0
.end method

.method public getKeepCopy()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mKeep:Z

    return v0
.end method

.method public getNoWarn()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mNwarn:Z

    return v0
.end method

.method public getPreserveTime()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mPtime:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mComment:Ljava/lang/String;

    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mCfile:Ljava/lang/String;

    return-void
.end method

.method public setIdentical(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mIdentical:Z

    return-void
.end method

.method public setKeepCopy(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mKeep:Z

    return-void
.end method

.method public setNoWarn(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mNwarn:Z

    return-void
.end method

.method public setPreserveTime(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckin;->mPtime:Z

    return-void
.end method
