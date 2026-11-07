.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCMklbtype.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_GLOBAL:Ljava/lang/String; = "-global"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"

.field public static final FLAG_ORDINARY:Ljava/lang/String; = "-ordinary"

.field public static final FLAG_PBRANCH:Ljava/lang/String; = "-pbranch"

.field public static final FLAG_REPLACE:Ljava/lang/String; = "-replace"

.field public static final FLAG_SHARED:Ljava/lang/String; = "-shared"


# instance fields
.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mGlobal:Z

.field private mOrdinary:Z

.field private mPbranch:Z

.field private mReplace:Z

.field private mShared:Z

.field private mTypeName:Ljava/lang/String;

.field private mVOB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mTypeName:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mVOB:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mComment:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mCfile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mReplace:Z

    .line 136
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mGlobal:Z

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mOrdinary:Z

    .line 138
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mPbranch:Z

    .line 139
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mShared:Z

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getReplace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-replace"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getOrdinary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ordinary"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getGlobal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-global"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 193
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getPbranch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-pbranch"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 198
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getShared()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-shared"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 203
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 205
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 208
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 214
    :goto_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getTypeSpecifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 404
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getTypeSpecifier()Ljava/lang/String;
    .locals 2

    .line 422
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getVOB()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getVOB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "mklbtype"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring any errors that occur for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getTypeSpecifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 166
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 170
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed executing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 154
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute TypeName not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobal()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mGlobal:Z

    return v0
.end method

.method public getOrdinary()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mOrdinary:Z

    return v0
.end method

.method public getPbranch()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mPbranch:Z

    return v0
.end method

.method public getReplace()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mReplace:Z

    return v0
.end method

.method public getShared()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mShared:Z

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVOB()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mVOB:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mComment:Ljava/lang/String;

    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mCfile:Ljava/lang/String;

    return-void
.end method

.method public setGlobal(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mGlobal:Z

    return-void
.end method

.method public setOrdinary(Z)V
    .locals 0

    .line 295
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mOrdinary:Z

    return-void
.end method

.method public setPbranch(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mPbranch:Z

    return-void
.end method

.method public setReplace(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mReplace:Z

    return-void
.end method

.method public setShared(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mShared:Z

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mTypeName:Ljava/lang/String;

    return-void
.end method

.method public setVOB(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklbtype;->mVOB:Ljava/lang/String;

    return-void
.end method
