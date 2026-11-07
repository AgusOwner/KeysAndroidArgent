.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCMkelem.java"


# static fields
.field public static final FLAG_CHECKIN:Ljava/lang/String; = "-ci"

.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_ELTYPE:Ljava/lang/String; = "-eltype"

.field public static final FLAG_MASTER:Ljava/lang/String; = "-master"

.field public static final FLAG_NOCHECKOUT:Ljava/lang/String; = "-nco"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"

.field public static final FLAG_NOWARN:Ljava/lang/String; = "-nwarn"

.field public static final FLAG_PRESERVETIME:Ljava/lang/String; = "-ptime"


# instance fields
.field private mCfile:Ljava/lang/String;

.field private mCheckin:Z

.field private mComment:Ljava/lang/String;

.field private mEltype:Ljava/lang/String;

.field private mMaster:Z

.field private mNoco:Z

.field private mNwarn:Z

.field private mPtime:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mComment:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mCfile:Ljava/lang/String;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mNwarn:Z

    .line 132
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mPtime:Z

    .line 133
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mNoco:Z

    .line 134
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mCheckin:Z

    .line 135
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mMaster:Z

    .line 136
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mEltype:Ljava/lang/String;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 188
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getNoWarn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nwarn"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getNoCheckout()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCheckin()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 196
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Should choose either [nocheckout | checkin]"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getNoCheckout()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nco"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 202
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCheckin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ci"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getPreserveTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ptime"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 210
    :cond_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getMaster()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-master"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 214
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getEltype()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 216
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getEltypeCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 219
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 392
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getEltypeCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getEltype()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-eltype"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getEltype()Ljava/lang/String;

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

    .line 147
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->setViewPath(Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "mkelem"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring any errors that occur for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getViewPathBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 164
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 168
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed executing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public getCheckin()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mCheckin:Z

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getEltype()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mEltype:Ljava/lang/String;

    return-object v0
.end method

.method public getMaster()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mMaster:Z

    return v0
.end method

.method public getNoCheckout()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mNoco:Z

    return v0
.end method

.method public getNoWarn()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mNwarn:Z

    return v0
.end method

.method public getPreserveTime()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mPtime:Z

    return v0
.end method

.method public setCheckin(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mCheckin:Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mComment:Ljava/lang/String;

    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mCfile:Ljava/lang/String;

    return-void
.end method

.method public setEltype(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mEltype:Ljava/lang/String;

    return-void
.end method

.method public setMaster(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mMaster:Z

    return-void
.end method

.method public setNoCheckout(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mNoco:Z

    return-void
.end method

.method public setNoWarn(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mNwarn:Z

    return-void
.end method

.method public setPreserveTime(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkelem;->mPtime:Z

    return-void
.end method
