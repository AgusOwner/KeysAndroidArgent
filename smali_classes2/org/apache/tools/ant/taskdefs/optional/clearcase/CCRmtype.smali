.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCRmtype.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_FORCE:Ljava/lang/String; = "-force"

.field public static final FLAG_IGNORE:Ljava/lang/String; = "-ignore"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"

.field public static final FLAG_RMALL:Ljava/lang/String; = "-rmall"


# instance fields
.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mIgnore:Z

.field private mRmall:Z

.field private mTypeKind:Ljava/lang/String;

.field private mTypeName:Ljava/lang/String;

.field private mVOB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mTypeKind:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mTypeName:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mVOB:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mComment:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mCfile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mRmall:Z

    .line 121
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mIgnore:Z

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getRmAll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-rmall"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-force"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getTypeSpecifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 339
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 2

    .line 357
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getTypeSpecifier()Ljava/lang/String;
    .locals 3

    .line 321
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getTypeKind()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getVOB()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getVOB()Ljava/lang/String;

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

    .line 132
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 135
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getTypeKind()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "rmtype"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring any errors that occur for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getTypeSpecifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 151
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 155
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed executing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 139
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute TypeName not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute TypeKind not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnore()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mIgnore:Z

    return v0
.end method

.method public getRmAll()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mRmall:Z

    return v0
.end method

.method public getTypeKind()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mTypeKind:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVOB()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mVOB:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mComment:Ljava/lang/String;

    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mCfile:Ljava/lang/String;

    return-void
.end method

.method public setIgnore(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mIgnore:Z

    return-void
.end method

.method public setRmAll(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mRmall:Z

    return-void
.end method

.method public setTypeKind(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mTypeKind:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mTypeName:Ljava/lang/String;

    return-void
.end method

.method public setVOB(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCRmtype;->mVOB:Ljava/lang/String;

    return-void
.end method
